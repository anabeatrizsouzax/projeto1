<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Senai</title>
<link rel="stylesheet" href="UniQuiz.css">
</head>
<body>
   <div id="IniciarJogo">
    <button id="botaoJogar" class="main-btn" onclick="IniciarJogo()">Começar</button>
   </div>
    <div id="caixaQuiz" class="tela-container">
    <h2 id="perguntadoquiz" class="questaoUniQuiz"></h2>

    <div id="opcoesRespostas" class="opcoesRespostas">
        </div>
             <button class="botaoProximo" id="btnproximo">Proxima questão</button>
         </div>  
         <div id="placar" class="tela-container">
            <h1 id="resultadoplacar"> </h1>
            <button  class="reiniciarjogo" id="reiniciarjogo" >REINICIAR JOGO</button>
         </div>
    <script src="script.js"></script>

        
</body>
</html>
