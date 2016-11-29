<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Seal - Votação</title>
</head>
<body>
<div class="alert" style="display: none">
    Não é permitido votar em uma pessoa para mais de 1 categoria.
</div>
<form action="/votacao/sealtelecom/enviar" method="post">
    {!! csrf_field() !!}
    <input type="hidden" value="{{ $voter }}" name="voter">
    <h3>Comprometimento</h3>
    <select name="commitment">
        <option value="" selected disabled>Selecione</option>
        @foreach($participants as $participant)
            <option value="{{ $participant->id }}">{{ $participant->name }}</option>
        @endforeach
    </select>

    <h3>Pró-Atividade</h3>
    <select name="proActivity">
        <option value="" selected disabled>Selecione</option>
        @foreach($participants as $participant)
            <option value="{{ $participant->id }}">{{ $participant->name }}</option>
        @endforeach
    </select>

    <h3>Superação</h3>
    <select name="superation">
        <option value="" selected disabled>Selecione</option>
        @foreach($participants as $participant)
            <option value="{{ $participant->id }}">{{ $participant->name }}</option>
        @endforeach
    </select>

    <h3>Trabalho em equipe</h3>
    <select name="teamWork">
        <option value="" selected disabled>Selecione</option>
        @foreach($participants as $participant)
            <option value="{{ $participant->id }}">{{ $participant->name }}</option>
        @endforeach
    </select>

    <h3>Planejamento e Organização</h3>
    <select name="planningAndOrganization">
        <option value="" selected disabled>Selecione</option>
        @foreach($participants as $participant)
            <option value="{{ $participant->id }}">{{ $participant->name }}</option>
        @endforeach
    </select>

    <button type="submit">Enviar</button>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="{!! asset('js/validation_vote_sealtelecom.js') !!}"></script>
</body>
</html>
