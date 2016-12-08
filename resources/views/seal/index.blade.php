<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('css/bulma.css') }}">
    <link rel="stylesheet" href="{{ asset('css/vote.css') }}">
    <title>Seal - Votação</title>
</head>
<body>
<div class="hero is-large">
    <div class="hero-body has-text-centered">
        <div class="container">
            <div class="notification is-success is-hidden">
                <button class="delete"></button>
                Não é permitido votar em uma pessoa para mais de 1 categoria.
            </div>
        </div>
        <br>
        <div class="vote-form">
            <form action="/votacao/seal/enviar" method="post">
                {!! csrf_field() !!}
                <input type="hidden" value="{{ $voter }}" name="voter">

                <select name="teamWork" required>
                    <option value="" selected disabled>Trabalho em equipe</option>
                    @foreach($participants as $participant)
                        <option value="{{ $participant->id }}">{{ $participant->name }} - {{ $participant->department }}</option>
                    @endforeach
                </select>

                <select name="proActivity" required>
                    <option value="" selected disabled>Pró-atividade</option>
                    @foreach($participants as $participant)
                        <option value="{{ $participant->id }}">{{ $participant->name }} - {{ $participant->department }}</option>
                    @endforeach
                </select>

                <select name="deliveryOfResult" required>
                    <option value="" selected disabled>Entrega de Resultados</option>
                    @foreach($participants as $participant)
                        <option value="{{ $participant->id }}">{{ $participant->name }} - {{ $participant->department }}</option>
                    @endforeach
                </select>

                <br>
                <button class="button is-large" type="submit">Enviar</button>
            </form>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="{!! asset('js/validation_vote_seal.js') !!}"></script>
</body>
</html>
