Algoritmo "Sistema de Análise Matrical 4X4"

Var

   // Matriz 4x4 onde serão guardados os valores digitados
   m: vetor[1..4, 1..4] de inteiro

   // l = linha
   // c = coluna
   // perg = opção escolhida no menu
   l, c, perg: inteiro


   // Procedimento que mostra o menu na tela
procedimento menu
inicio

   escreval()
   escreval("MENU DE OPCOES")
   escreval("====================")
   escreval()

   escreval("[1] Mostrar a Matriz")
   escreval("[2] Diagonal Principal")
   escreval("[3] Triangulo Superior")
   escreval("[4] Triangulo Inferior")
   escreval("[5] Sair")

fimprocedimento

Inicio

   // Aqui o usuário preenche toda a matriz
   para l de 1 ate 4 faca
      para c de 1 ate 4 faca
         escreval("Digite um valor para [",l,",",c,"]: ")
         leia(m[l,c])
      fimpara
   fimpara


   // Fica repetindo até o usuário escolher a opção 5
   repita

      // Limpa a tela antes de mostrar o resultado
      limpatela

      // Verifica qual opção foi escolhida
      escolha perg

         // Mostra a matriz completa
      caso 1

         para l de 1 ate 4 faca
            para c de 1 ate 4 faca
               escreva(m[l,c]:5)
            fimpara
            escreval()
         fimpara


         // Mostra apenas a diagonal principal
         // (onde linha e coluna são iguais)
      caso 2

         para l de 1 ate 4 faca
            para c de 1 ate 4 faca

               se l = c entao
                  escreva(m[l,c]:5)
               senao
                  escreva(" ":5)
               fimse

            fimpara
            escreval()
         fimpara


         // Mostra apenas os valores acima da diagonal principal
      caso 3

         para l de 1 ate 4 faca
            para c de 1 ate 4 faca

               se l < c entao
                  escreva(m[l,c]:5)
               senao
                  escreva(" ":5)
               fimse

            fimpara
            escreval()
         fimpara


         // Mostra apenas os valores abaixo da diagonal principal
      caso 4

         para l de 1 ate 4 faca
            para c de 1 ate 4 faca

               se l > c entao
                  escreva(m[l,c]:5)
               senao
                  escreva(" ":5)
               fimse

            fimpara
            escreval()
         fimpara

      fimescolha


      // Mostra o menu de opções
      menu()

      // Lê a opção escolhida pelo usuário
      leia(perg)

      // O programa só termina quando o usuário digitar 5
   ate perg = 5
   limpatela
   escreval("SAINDO DO PROGRAMA....")

Fimalgoritmo