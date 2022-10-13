<x-layout>
    <main class="max-w-7xl mx-auto mt-10 ">
        <h1 class='text-left text-2xl font-normal my-4 uppercase'>{{__('Contact us')}}</h1>
        <form action="{{route('contact')}}" method="POST">
            @csrf
            @method('POST')
            <div class="grid grid-cols-3 grid-flow-row gap-4 mb-4 gridRow">
                <div class="flex flex-col col-span">
                    <label for="firstName">{{__('First name')}}</label>
                    <input type="text" name="firstName" class='border-solid border-2 border-gray-200 rounded mr-4 pl-2 h-10'>
                </div>
                <div class="flex flex-col col-span">
                    <label for="lastName">{{__('Last name')}}</label>
                    <input type="text" name="lastName" class='border-solid border-2 border-gray-200 rounded mr-4 pl-2 h-10'>
                </div>
                <div class="flex flex-col col-span-3">
                    <label for="email">{{__('Email')}}</label>
                    <input type="email" name="email" class='border-solid border-2 border-gray-200 rounded mr-4 pl-2 h-10'>
                </div>
                <div class="flex flex-col col-span-3">
                    <label for="description">{{__('Do you have a question or a remark? Let us know!')}}</label>
                    <textarea type="text" name="description" class='border-solid border-2 border-gray-200 rounded h-60 max-h-60 mr-4 pl-2 h-10'></textarea>
                </div>
            </div>
            <x-upload/>
            <button type="submit" class=" rounded-md border-solid border-2 border-sky-400 text-sky-400 p-2 mb-4">{{__('Send')}}</button>
            </form>



                <hr>
                <p class="text-right">Copyright 2022 - Arteveldehogeschool Gent - Web Development 2</p>
            </main>


</x-layout>