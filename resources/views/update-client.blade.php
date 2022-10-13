<x-layout>
    <main class="max-w-7xl mx-auto mt-10 ">
        <h1 class='text-left text-2xl font-normal my-4 uppercase'>Nieuwe Klant</h1>
        <form action="/update-client/{{$client->id}}" method="POST">
            @csrf
            @method('PUT')
        <div class="grid grid-cols-3 grid-flow-row gap-4 mb-4 gridRow">
            
        <div class="flex flex-col">
            <label for="title">{{$tables[1]}}</label>
            <select name="title" class='border-solid border-2 border-gray-200 rounded mr-4 h-10'>
                @foreach($titles as $title)
                <option value="{{$title->title}}" @if ($client->title === $title->title) selected @endif }}>{{$title->title}}</option>
                @endforeach
            </select>
        </div>
        <x-client-input :tables="$tables" :client="$client"/>
        <div class="flex flex-col col-span-3">
            <label for="email">{{$tables[4]}}</label>
            <input type="email" name="email" value='{{$client->email}}' class='border-solid border-2 border-gray-200 rounded mr-4 pl-2 h-10'>
        </div>
    </div>
    <button type="submit" class="border-solid border-2 border-green-400 text-green-400 p-2 mb-4">Bewaar</button>
    </form>
        <hr class="mt-4">
        <p class="text-right">Copyright 2022 - Arteveldehogeschool Gent - Web Development 2</p>
    </main>


</x-layout>