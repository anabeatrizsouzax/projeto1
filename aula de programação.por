programa {
  funcao inicio() {
    real celsius, kelvin, fahrenheit

    escreva("digite a temperatura em celsius:  ")
    leia(celsius)
  
    kelvin = celsius + 273.15
    fahrenheit = (celsius * 9 / 5 ) + 32

    se (celsius<36.5){
     escreva ("A temperatura em kelvin é:", kelvin, "\n", " Temperatura corporal normal")
     leia(kelvin)
      escreva("a temperatura em fahrenheit é: ", fahrenheit,"Temperatura corporal normal")
      leia(fahrenheit)
    }
    senao{
      escreva ("A temperatura em kelvin é:", kelvin, "\n", " Temperatura corporal anormal")
      leia(kelvin)
      escreva("a temperatura em fahrenheit é: ", fahrenheit,"Temperatura corporal anormal")
      leia(fahrenheit)      
    }
  }
    
}        