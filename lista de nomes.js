let numeros = []; // lista vazia

let nomes = ["ana", "bruno","carlos"]

console.log(nomes[1])// "bruno"

// modificando valor 
nomes[2] = "zeca";
console.log("interando minha lista")

for (let i = 0; i < nomes.length; i++){
 console.log(nomes[i])
}
for(let nome of nomes){
    console.log(nome)

}
