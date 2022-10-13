@props(['client'])

<div class="flex justify-evenly w-full my-1 h-20 odd:bg-white even:bg-slate-100">
    <p class="w-1/3 text-lg  ml-1 pl-4 pt-6">{{$client->title . " " . $client->firstName . " " . $client->lastName }}</p>
    <p class="w-1/3 text-lg  ml-1 pl-4 pt-6">{{$client->email}}</p>
    <div class="w-1/3  text-lg  ml-1  flex">
        <a href='/update-client/{{$client->id}}' class="rounded-md font-light text-lg border-solid border-2 border-red-400 my-auto p-2 ml-4 text-red-400">{{__('Edit')}}</a>
        <a href='/rooms/{{$client->id}}' class="rounded-md font-light text-lg border-solid border-2 border-amber-500 my-auto p-2  ml-4 text-amber-500">{{__('Book a room')}}</a>
    </div>
</div>