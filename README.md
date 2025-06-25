const divbotaoiniciar = document.getElementById("IniciarJogo")
const divcaixaQuiz = document.getElementById("caixaQuiz")
const h2perguntadoquiz = document.getElementById("perguntadoquiz")
const botaoJogar = document.getElementById("botaoJogar")
const btnproximapergunta = document.getElementById("btnproximo")
const opcoesRespostas = document.getElementById("opcoesRespostas")
const divplacar = document.getElementById("placar")
const reiniciarjogo = document.getElementById("reiniciarjogo")


botaoJogar.addEventListener("click", IniciarJogo)
btnproximapergunta.addEventListener("click", proximapergunta)
reiniciarjogo.addEventListener("click", () => window.location.reload())

let indicePerguntas = 0
let respostacorreta = 0 

// Arrays
const perguntas = [
    {pergunta:"Qual é o maior deserto do mundo?",opcoes:["Atacama", "Antartida" , "Saara", "Vento Rosa"], respostacorreta:"Antartida"},
    {pergunta:"Qual é a capital do Brasil?",opcoes:["Acre", "Amazonas" , "Brasilia","Salvador"], respostacorreta:"Brasilia"},
     {pergunta:"Qual é a capital da Austrália?",opcoes:["Berlim", "Nove York" , "Camberra","Sapporo"], respostacorreta:"Camberra"},
     {pergunta:"Qual é o país com maior população no mundo?",opcoes:["Monaco", "China" , "India","Coreia do Sul"], respostacorreta:"India"},
     {pergunta:" Qual a linha imaginária que atravessa o Brasil?",opcoes:["Feilicidade", "Japão" , "Equador","Nao existe"], respostacorreta:"Equador"},
     {pergunta:"Qual o oceano que banha o Brasil?",opcoes:["Azul", "Vermelho" , "Atlântico","Pacifico"], respostacorreta:"Atlântico"},
]




function IniciarJogo(){
   // fecharbotaoinicial()
      abrirteladojogo()
    
}

function fecharbotaoinicial(){
    divbotaoiniciar.innerHTML = ""
}




function abrirteladojogo(){
    divcaixaQuiz.classList.add("active");
    
    h2perguntadoquiz.textContent = perguntas [indicePerguntas].pergunta;
    
    opcoesRespostas.innerHTML = ""
    perguntas[indicePerguntas].opcoes.forEach(opcao => {
        
        const botaopergunta = document.createElement("button");
        
        botaopergunta.textContent = opcao
        
        
        botaopergunta.classList.add("answer-btn");
        botaopergunta.addEventListener("click", () =>validarrespostacorreta(opcao))
        opcoesRespostas.appendChild(botaopergunta);
        
        
    })
}
function validarrespostacorreta(opcaoselecionada){
    const botoesResposta= opcoesRespostas.querySelectorAll(".answer-btn");
    botoesResposta.forEach(botao => {
        if(botao.textContent === perguntas [indicePerguntas].respostacorreta){
            botao.classList.add("correct")
        }
        if(botao.textContent === perguntas && opcaoselecionada!=perguntas[indicePerguntas].respostacorreta){
            botao.classList.add("incorrect")
        }
        botao.disabled = true
    })
    
    
    if(opcaoselecionada === perguntas[indicePerguntas].respostacorreta){
        respostacorreta++
        console.log(respostacorreta) }}
        
        function proximapergunta(){
            indicePerguntas++
            if(indicePerguntas < perguntas.length){
                abrirteladojogo()
            } 
            else{
                divcaixaQuiz.classList.remove("active")
                divplacar.classList.add("active")
                resultado()
            }
            
        }
        
        function resultado(){
         const resultadoplacar = document.getElementById("resultadoplacar");
         resultadoplacar.textContent = `Você acertou ${respostacorreta} de ${perguntas.length} perguntas`
        
        
        }
        
