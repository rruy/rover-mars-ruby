# Rover mars

## Desafio
 
Um esquadrão de robôs robóticos deve ser desembarcado pela NASA em um platô em Marte. Este platô, que é curiosamente retangular, deve ser navegado pelos robôs para que suas câmeras a bordo possam ter uma visão completa do terreno circundante para enviar de volta à Terra.

A posição e localização de um rover é representada por uma combinação de coordenadas x e y e uma letra representando um dos quatro pontos cardeais da bússola. O planalto é dividido em uma grade para simplificar a navegação. Uma posição de exemplo pode ser 0, 0, N, o que significa que o rover está no canto inferior esquerdo e voltado para o norte.

Para controlar um rover, a NASA envia uma simples sequência de letras. As letras possíveis são 'L', 'R' e 'M'. 'L' e 'R' fazem o veículo girar 90 graus para a esquerda ou para a direita, respectivamente, sem se mover do ponto atual. 'M' significa avançar um ponto da grade e manter o mesmo rumo.

Suponha que o quadrado diretamente do norte de (x, y) seja (x, y + 1).

## Parâmetros Input

```
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
```

## Output esperado

```
1 3 N
5 1 E
```

## Instruções sobre a aplicação

Para startar o programa execute a seguinte linha de comando:

```
ruby program.rb input.txt
```

Para startar o container docker e executar os testes unitários

```
sudo docker build -t rovermars ./
sudo docker run rovermars . > output.txt
```

## Info

Classe program.rb 
-> Responsável por inicializar o programa e receber como parametro um arquivo txt contendo as instruções de direções para o rover.

Classe rover.rb 
-> Objeto com os atributos básicos do rover e seus comportamentos

Classe input_adapter.rb
-> Serviço responsável por efetuar a tradução dos dados do arquivo txt para classe o objeto de dados command_input.rb que será utilizado para trafegar os dados entre os objetos de comando.

Classe command_factory.rb
-> Objeto que tem como objetivo criar instâncias de comandos com base na direções passadas como parametro. Basicamente é um factory.

Class command_base.rb
-> Funciona como um classe abstrata/interface porque tem algums metodos bases e também define o contrato para implementação nas classes filhas. 

Class command_left.rb, command_right.rb e command_forward.rb
Classes que tem o objetivo de movimentar o robo. no método move é utilizado o polimorfismo porque cada método de comando é implementado de forma diferente.













