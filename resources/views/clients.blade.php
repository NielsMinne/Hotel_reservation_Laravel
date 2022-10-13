<x-layout>
    <main class="max-w-7xl mx-auto mt-10 ">
        <h1 class='text-left text-2xl font-normal my-4 uppercase'>Klanten</h1>
        <a href="{{route('client.new')}}" class='border-solid border-2 border-sky-500 uppercase text-sky-500 p-2 rounded-md'>
            {{__('Add client')}}
        </a>
        <div class="flex justify-evenly w-full h-10 mt-8">
            <h4 class="w-1/3 font-semibold text-xl bg-slate-100  pl-4">{{__('Name')}}</h4>
            <h4 class="w-1/3 font-semibold text-xl bg-slate-100  pl-4">Email</h4>
            <h4 class="w-1/3 font-semibold text-xl bg-slate-100  pl-4">{{__('Action')}}</h4>
        </div>
        <div class="mb-8">
        @foreach ($clients as $client)
        <x-client-card :client="$client"/>
        @endforeach
        </div>
        {{$clients->links()}}
        <hr class="mt-4">
        <p class="text-right mt-2 mb-16">Copyright 2022 - Arteveldehogeschool Gent - Web Development 2</p>
    </main>

</x-layout>