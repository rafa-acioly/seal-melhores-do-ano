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
<select name="trabalho-em-equipe">
    <option value="" selected disabled>Selecione</option>
    @foreach($participants as $participant)
        <option value="{{ $participant->uid }}">{{ $participant->name }}</option>
    @endforeach
</select>

<select name="pro-atividade">
    <option value="" selected disabled>Selecione</option>
    @foreach($participants as $participant)
        <option value="{{ $participant->uid }}">{{ $participant->name }}</option>
    @endforeach
</select>

<select name="entrega-de-resultado">
    <option value="" selected disabled>Selecione</option>
    @foreach($participants as $participant)
        <option value="{{ $participant->uid }}">{{ $participant->name }}</option>
    @endforeach
</select>
</body>
</html>
