const prompt= require('prompt-sync')()



let num1=parseInt(prompt("digite o primeiro numero"));
let num2=parseInt(prompt("digite o segundo numero"));

let opcao =prompt("digite a operaçao");


switch (opcao) {
    case "-": 
    console.log(`resultado; $(num1-num2)`);
    break;

    case "+" :
        console.log('resultado; $(num1+num2)');
        break;

    case "*":
    console.log('resultado; $(num1*num2)');
    break;

    default:
        console.log('operacao encerrada');
}        
