@props(['tables'])

@foreach($tables as $table)
@if(!in_array($table,['id','created_at','title','updated_at','email']))
<div class="flex flex-col">
    <label for="firstName">{{$table}}</label>
    <input type="text" name="{{$table}}" class='border-solid border-2 border-gray-200 rounded mr-4 pl-2 h-10' value='{{old($table)}}'>
</div>
@endif
@endforeach