<?php

namespace App\Http\Controllers;

use App\Mail\sendContactMail;
use App\Models\Contact;
use App\Models\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ContactController extends Controller
{

    public function mail(Request $r){
        
        $contactInfo = new Contact();
        $contactInfo->firstName = $r->firstName;
        $contactInfo->lastName = $r->lastName;
        $contactInfo->email = $r->email;
        $contactInfo->description = $r->description;

        
        Mail::to('fake@minne.com')->send(new sendContactMail($contactInfo));

        return redirect()->back();


    }

    public function store(Request $r) { 

        $r->validate([
            'file' => 'file|required|max:1000|mimes:png,jpg,gif,bmp'
        ]);

        // get extension
        $ext = $r->file->getClientOriginalExtension();

        // make random file name, with day-prefix
        $randomName = date('d') . '-' . Str::random(10) . '.' . $ext;
        
        // path magic
        $filePath = 'uploads/' . date('Y/m/');
        $fullPath = $filePath . $randomName;

        // upload files in symbolic public folder (make accessable)
        /** @var Illuminate\Filesystem\FilesystemAdapter */
        $fileSystem = Storage::disk('public');
        $fileSystem->putFileAs($filePath, $r->file, $randomName);

        // add as record in database
        $fileEntity = new File();
        $fileEntity->name = $fullPath;
        $fileEntity->save();

        return redirect()->back()->with('status', 'File succesfully uploaded, with ID: ' . $fileEntity->id);

    }
}
