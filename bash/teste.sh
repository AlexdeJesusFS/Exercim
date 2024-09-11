#!/bin/bash

# Definindo uma variável global
resultado=0

# Função usando 'local'
soma() {
    local num1=$1
    local num2=$2
    local resultado=$((num1 + num2))
    echo "Resultado dentro da função: $resultado"
}

# Chamando a função
soma 3 5

# Verificando o valor da variável global após a execução da função
echo "O valor de resultado é: $resultado"
