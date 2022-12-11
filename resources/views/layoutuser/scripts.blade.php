@section('scripts')
    @if (alert()->ready())
        <script>
            swal({
                title: "{!! alert()->message() !!}",
                type: "{!! alert()->type() !!}",
                @if (alert()->option('timer'))
                    timer: {!! alert()->option('timer') !!},
                    showConfirmButton: false
                @endif
            });
        </script>
    @endif
@endsection