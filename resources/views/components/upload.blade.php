
@if($errors->any())
            <div class="block bg-red-200 px-6 py-6 mb-5">
                <ul class="text-red-600 list-disc list-inside">
                    @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form enctype="multipart/form-data" method="post" action="{{route('upload')}}">
            @csrf
            <input type="file" name="file" id="file">
            <button class="block bg-sky-500 text-white rounded-md p-2 my-5" type="submit">Upload</button>
        </form>