<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hotel Reservatie Tool</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Nunito', sans-serif;
        }

    </style>
</head>

<body style="font-family: Open Sans, sans-serif">

    <nav class="md:flex md:justify-between md:items-center bg-gray-200 h-16 p-3">



        @if (Route::has('login'))
        <div class="mt-8 md:mt-0 pl-72">
            @auth
            <a href="/" class='text-xs font-bold uppercase px-4 hover:text-sky-500'>Home</a>
            <a href="{{route('client.index')}}"
                class='text-xs font-bold uppercase px-4 hover:text-sky-500'>{{__('Clients')}}</a>
            <a href="{{route('reservation.index')}}"
                class='text-xs font-bold uppercase px-4 hover:text-sky-500'>{{__('Reservations')}}</a>
            <a href="{{route('contact')}}"
                class="text-xs font-bold uppercase px-4 hover:text-sky-500">{{__('Contact us')}}</a>
            <form class="hidden fixed top-0 right-0 px-6 py-4 sm:block" method="POST" action="{{ route('logout') }}">
                @csrf
                <x-dropdown-link :href="route('logout')" onclick="event.preventDefault();
                                                this.closest('form').submit();">
                    {{ __('Log Out') }}
                </x-dropdown-link>
            </form>
            @else
            <div class="mt-8 md:mt-0 pl-72">
                <a href="/" class='text-xs font-bold uppercase px-4 hover:text-sky-500'>Home</a>
                <a href="{{route('contact')}}" class="text-xs font-bold uppercase px-4 hover:text-sky-500">{{__('Contact us')}}</a>
            </div>
            <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Log in</a>

                @if (Route::has('register'))
                <a href="{{ route('register') }}"
                    class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                @endif
            </div>
            @endauth
        </div>
        @endif
    </nav>

    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    {{$slot}}

</body>


</html>
