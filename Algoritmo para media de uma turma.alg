algoritmo "semnome"
// Fun��o : algoritmo para receber a nota de uma turma calcular  a media
// da turma dizer os que ficaram acima da media e os que passaram
// Autor :
// Data : 14/09/2017
// Se��o de Declara��es 
var
   notas:vetor[1..3,1..50] de real
   nome:vetor[1..50] de caracter
   mediaAluno:vetor[1..50] de real
   situacao:vetor[1..50]  de caracter
   i,w,aprovados:inteiro
   mediaTurma:real
inicio
// Se��o de Comandos
   aleatorio on
   para i de 1 ate 50 faca
      escreval ("Digite seu nome")
      leia (nome[i])
      escreval ("Digite a primeira nota")
         leia (notas[1,i])
      escreval ("Digite a segunda nota")
         leia (notas[2,i])
      escreval ("Digite a terceira nota")
         leia (notas[3,i])
      limpatela
      mediaAluno[i] := (notas[1,i]+notas[2,i]+notas[3,i])/3
      mediaTurma := mediaTurma+(mediaAluno[i])/50
      se mediaAluno[i] >= 7 entao
         situacao[i] :=("Aprovado")
         aprovados := aprovados+1
      senao
         situacao[i] := ("Reprovado")
      fimse
   fimpara
   //exibi��es
   limpatela
   para i de 1 ate 50 faca
      escreval ("Aluno(a):",nome[i]," voc� esta ",situacao[i])
      escreval ("")
   fimpara
   escreval ("O numero de alunos aprovados � ",aprovados)
   escreval ("")
   escreval ("A media geral da turma � ",mediaTurma)
   escreval ("")
   escreval ("Digite qualquer numero para continuar")
   leia (i)
   para i de 1 ate 50 faca
      se mediaAluno[i] > mediaTurma entao
         escreval ("caro(a) ",nome[i]," sua nota foi ",mediaAluno[i]," e est� acima da media da turma")
      fimse
      se mediaAluno[i] = mediaTurma entao
         escreval ("caro(a) ",nome[i]," sua nota foi ",mediaAluno[i]," e � igual a media da sala")
      fimse
   fimpara
fimalgoritmo
