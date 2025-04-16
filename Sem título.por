programa {
  funcao inicio() {
    real celsius, kelvin, fahrenheit

    escreva("digite a temperatura em celsius:  ")
    leia(celsius)
  
    kelvin = celsius + 273.15
    fahrenheit = (celsius * 9 / 5 ) + 32

    escreva ("A temperatura em kelvin é:", kelvin, "\n")
    leia(kelvin)
    escreva("a temperatura em fahrenheit é: ", fahrenheit)
    leia(fahrenheit)
  } 
    
}
