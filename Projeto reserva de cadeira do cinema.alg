algoritmo "Projeto cinema"
// Fun��o : reservar cadeiras do cinema
// Autor : Welbber Vital
// Professor: Marcos Vinicius
// Data : 29/09/2017
// Se��o de Declara��es
var
   rese:vetor[1..4,1..6] de caracter
   i,j,opcao,preco,aux:inteiro
   cadeiraRese:vetor[1..24]  de caracter
inicio
// Se��o de Comandos
   //Preenchendo a matriz de cadeira
    para i de 1 ate 4 faca
      para j de 1 ate 6 faca
         rese[i,j] := "OO"
      fimpara
    fimpara
         
//-----------------------------------------------------

   escreval ()
   escreval ("                    BEM-VINDO USUARIO!       ")
   escreval ()
   //Procedimento do menu
   procedimento opcoes
      inicio
         escreval ()
         escreval ("                      ----------")
         escreval ("                      � OP��ES �")
         escreval ("                      ----------")
         escreval ("     *********************************************")
         escreval ("     * Digite 1 para visualizar a sala do cinema *")
         escreval ("     *                                           *")
         escreval ("     *    Digite 2 para reservar uma cadeira     *")
         escreval ("     *                                           *")
         escreval ("     *     Digite 3 para fazer o pagamento       *")
         escreval ("     *                                           *")
         escreval ("     *      Digite 4 para sair do progama        *")
         escreval ("     *********************************************")
         escreval ()
         escreva ("op��o:")
         leia (opcao)
         limpatela
   fimprocedimento
//------------------------------------------------------------------------------
   //Este procedimento � responstavel pela imagem aeria do cinema
   procedimento visualizacao
      var
         i,j:inteiro
      inicio
         escreval ()
         escreval ()
         escreval ("                               ----------")
         escreval ("                               � CINEMA �")
         escreval ("                               ----------")
         escreval ()
         escreval ("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
         //Esse "para" � resposavel pela apari��o das cadeiras do cinema
         para i de 1 ate 4 faca
            escreval()
            para j de 1 ate 6 faca
                    escreva (i)
                    escreva (j)
                    escreva(" - [ "+ rese[i,j] + " ] ")
            fimpara
         fimpara
         escreval()
         escreval()
         escreval ("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
         escreval ()
         se opcao = 1 entao
            escreval ("Digite qualquer numero para voltar ao menu principal")
            leia (aux)
         fimse
   fimprocedimento
//------------------------------------------------------------------------------
   procedimento escolher_cadeira
      var
         linha,coluna,i,j:inteiro
         novaRese:caracter
      inicio
         //este "enquanto" est� respostavel para dar o loop at� o usuario encerrar sua compra
         enquanto novaRese<>"n" faca
            visualizacao
            escreval ("Digite em qual linha de cadeiras voc� deseja ficar")
               leia (linha)
            //esse "enquanto" esta responsavel para indicar que o usuario
            //digitou uma linha de cadeiras que n�o existe
            enquanto (linha<=0) ou (linha>6) faca
               escreval ()
               escreval ("Op��o invalida!")
               escreval ()
               escreval ("Digite em qual linha de cadeiras voc� deseja ficar")
                  leia (linha)
               limpatela
            fimenquanto
            escreval ("Digite em qual coluna de cadeiras voc� deseja ficar")
               leia (coluna)
            //esse "enquanto" esta responsavel para indicar que
            //o usuario digitou um linha de cadeiras que n�o tem
            enquanto (coluna<=0) ou (coluna>4) faca
               escreval ()
               escreval ("Op��o invalida")
               escreval ()
               escreval ("Digite em qual coluna de cadeiras voc� deseja ficar")
                  leia (coluna)
               escreval ()
               limpatela
            fimenquanto
            //este "se" cuida do preenchimento da matriz quando o usuario fazer sua reserva
            se rese[linha,coluna]<>("XX") entao
               //variavel que armazena o valor do dinheiro que o usuario tera que pagar
               preco := preco+10
               rese[linha,coluna] := "XX"
               //loop manual
               i := i+1
               //esse comando est� responsavel para dizer quais cadeiras o usuario reservou
               cadeiraRese[i] := (numpcarac(linha)+numpcarac(coluna))
            senao
               //"enquanto" responsavel por indicar ao usuario que a cadeira j�
               //est� reservada
               enquanto rese[linha,coluna] ="XX" faca
                  escreval ()
                  escreval ("Infelizmente essa cadeira j� est� reservada")
                  escreval ()
                  escreval ("Por favor escolha outra cadeira")
                  escreval ()
                  escreval ("Digite em qual linha de cadeiras voc� deseja ficar")
                     leia (linha)
                  //"enquanto" para fazer um loop ate o usuario digite uma
                  //cadeira existente
                  enquanto (linha<=0) ou (linha>4) faca
                     escreval ("Op��o invalida")
                     escreval ()
                     escreval ("Digite em qual linha de cadeira voc� deseja ficar")
                        leia (linha)
                     limpatela
                  fimenquanto
                  escreval ()
                  escreval ("Digite em qual coluna de cadeiras voc� deseja ficar")
                     leia (coluna)
                  //"enquanto" para fazer um loop ate o usuario digite uma
                  //cadeira existente
                  enquanto (coluna<=0) ou (coluna>6) faca
                     escreval ()
                     escreval ("op��o invalida")
                     escreval ()
                     escreval ("Digite em qual coluna de cadeiras voc� deseja ficar")
                        leia (coluna)
                     limpatela
                  fimenquanto
                  limpatela
               fimenquanto
               rese[linha,coluna] :="XX"
            fimse
            escreval ()
            escreval ("Cadeira reservada com sucesso!")
            escreval ()
            escreval ("Deseja reservar outra cadeira? [S/N]")
               leia (novaRese)
               //"enquanto" para perguntar ao usuario se ele deseja reserver
               //outra cadeira
               enquanto (novaRese<>"s") e (novaRese<>"n") faca
                  escreval ()
                  escreval ("Op��o invalida")
                  escreval ()
                  escreval ("Deseja reservar outra cadeira? [S/N]")
                     leia (novaRese)
               fimenquanto
            limpatela
         fimenquanto
   fimprocedimento
//------------------------------------------------------------------------------
   //este procedimento est� responsavel por dizer ao usuario quanto ele vai pagar
   //e se ele deseja finalizar a compra
   procedimento custo_cadeira
      var
         w:inteiro
         finalizar:caracter
      inicio
         escreval ("voc� deve pagar ",preco," reais pela(s) tal(ais) cadeira(s) reservada(s):")
         //"para" responsavel por monstrar quais cadeiras o usuario reservou
         para w de 1 ate 24 faca
            //esse "se" serve para n�o mostrar os zeros da matriz
            se cadeiraRese[w] <> "" entao
                  escreval (cadeiraRese[w])
            fimse
         fimpara
         escreval ()
         escreval ("Deseja finalizar sua compra? [S/N]")
         leia (finalizar)
         //"se" para fazer o pagamento
         enquanto (finalizar<>"n") e (finalizar<>"s") faca
            escreval ()
            escreval ("Opcao invalida")
            escreval ()
            escreval ("Deseja finalizar usa compra? [S/N]")
            leia (finalizar)
            limpatela
         fimenquanto
         se finalizar =("s") entao
            escreval ()
             timer 1000
            escreval ("Obrigado pela preferencia!")
            escreval ()
            preco := 0
            timer 0
         fimse
         limpatela
   fimprocedimento
//------------------------------------------------------------------------------
   //procimento responsavel por zerar a matriz
   procedimento zerando_matriz
       var
         i,j:inteiro
      inicio
        //estes dois "paras" est�o responsaveis por zerar a matriz
        para i de 1 ate 4 faca
            para j de 1 ate 6 faca
               rese[i,j] := ("OO")
            fimpara
        fimpara
        visualizacao
   fimprocedimento
//------------------------------------------------------------------------------
    //"enquanto" responsavel para dar um loop at� o usuario escolher a 4 op��o
    //para encerrar o programa
   enquanto opcao <> 4 faca
      opcoes
      //esse "se" ele serve para caso o usuario digite uma op��o invalida
      se (opcao>=1) e (opcao<=4) entao
         //todos os "se" aqui est�o responsaveis por chamar um procedimento
         se opcao = 1 entao
            escreval ()
            visualizacao
            escreval ()
            limpatela
         fimse
         se opcao = 2 entao
            escolher_cadeira
         fimse
         se opcao = 3 entao
            se preco <> 0 entao
               custo_cadeira
               escreval ()
            //"senao" responsavel por dar uma mensagem de erro ao usuario
            senao
               escreval ()
               escreval ("                       ATENC�O ")
               escreval ()
               escreval ("Voc� precisa reservar uma cadeira antes de ir para a op��o de pagamento!")
               escreval ()
            fimse
         fimse
         se (opcao = 4) e (preco = 0) entao
            zerando_matriz
         fimse
         //"se" responsavel por dizer ao usuario que ele nao pode escolher a 4 op��o sem
         //ter feito o pagamento
         se (opcao = 4) e (preco <> 0 ) entao
            opcao := 3
            escreval ()
            escreval ("                       ATEN��O")
            escreval ()
            escreval ()
            escreval ("Voc� precisa efetuar o pagamento antes de sair do programa!!")
         fimse
      senao
         escreval ()
         escreval ("Op��o invalida")
      fimse
   fimenquanto
fimalgoritmo
