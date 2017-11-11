algoritmo "semnome"
// Função : algoritmo para receber as vendas de varias empresas de dizer
// a media anual de cada um
// Autor :
// Data : 17/09/2017
// Seção de Declarações 
var
   vendas:vetor[1..5,1..6] de inteiro
   media:vetor[1..4] de real
   soma:vetor[1..4] de inteiro
   i,w,aux,maior,fabrimv,geral,ano:inteiro
inicio
// Seção de Comandos
   aleatorio on
   aux := 1992
   para i de 1 ate 6 faca
      vendas[1,i] := aux
      aux := aux+1
   fimpara
   aux := 1
   para i de 2 ate 5 faca
      para w de 1 ate 6 faca
         se i = 2 entao
            enquanto aux <> 7 faca
               escreval ("Digite quanto a fiat vendeu no ano de ",vendas[1,aux])
                  leia (vendas[i,aux])
               aux := aux+1
               limpatela
            fimenquanto
         fimse
         aux := 1
         se i = 3 entao
            enquanto aux <> 7 faca
               escreval ("Digite quanto a ford vendeu no ano de ",vendas[1,aux])
                  leia (vendas[i,aux])
               aux := aux+1
               limpatela
            fimenquanto
         fimse
         aux := 1
         se i = 4 entao
            enquanto aux <> 7 faca
               escreval ("Digite quanto a GM vendeu no ano de  ",vendas[1,aux])
                  leia (vendas[i,aux])
               aux := aux+1
               limpatela
            fimenquanto
         fimse
         aux := 1
         se i = 5 entao
            enquanto aux <> 7 faca
               escreval ("Digite quanto a Wolkswagen vendeu no ano de ",vendas[1,aux])
                  leia (vendas[i,aux])
               aux := aux+1
            fimenquanto
            limpatela
         fimse
         aux := 1
      fimpara
   fimpara
   para w de 1 ate 6 faca
      se vendas[4,w] > maior entao
         maior := vendas[4,w]
         fabrimv := fabrimv+1
      fimse
   fimpara
   para w de 1 ate 6 faca
      se (vendas[2,w]+vendas[3,w]+vendas[4,w]+vendas[5,w]) > geral entao
         geral := (vendas[2,w]+vendas[3,w])+(vendas[4,w]+vendas[5,w])
         ano := ano+1
      fimse
   fimpara
   w := 1
   para i de 2 ate 5 faca
      soma[w] := vendas[i,1]+vendas[i,2]+vendas[i,3]+vendas[i,4]+vendas[i,5]+vendas[i,6]
      w := w+1
   fimpara
   para i de 1 ate 4 faca
      media[i] := soma[i]/6
   fimpara
   se fabrimv = 1 entao
      escreval ("A fiat que mais vendeu no ano de 1996")
   fimse
   se fabrimv = 2 entao
      escreval ("A ford que mais vendeu no ano de 1996")
   fimse
   se fabrimv = 3 entao
      escreval ("A GM que mais vendeu no ano de 1996")
   fimse
   se fabrimv = 4 entao
      escreval ("A Wolkswagen que mais vendeu no ano de 1996")
   fimse
   escreval ("")
   para i de 1 ate 6 faca
      se ano = i entao
         escreval ("O mais que vendeu foi ",vendas[1,i])
      fimse
   fimpara
   escreval ("")
   escreval ("A media anual de vendas da fiat é ",media[1]:2:1)
   escreval ("")
   escreval ("A media anual de vendas da ford é ",media[2]:2:1)
   escreval ("")
   escreval ("A media anual de vendas da GM é ",media[3]:2:1)
   escreval ("")
   escreval ("A media anual de vendas da Wolkswagen é ",media[4]:2:1)
fimalgoritmo
