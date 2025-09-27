programa
{
	inclua biblioteca Util
	inclua biblioteca Texto
	funcao inicio()
	{
	
		inteiro avanca_tempo = 0, alimetar = 0, jogar, dar_banho = 0, ver_status, opcao
		inteiro felicidade = 5, limpeza = 10, fome = 10, i, tempo, jogador1 = 0, jogador2 = 0
		inteiro tempo_vida =0, dias_vida =0, horas_vida = 0
		logico desligar = falso, doente = falso, finalizar = verdadeiro
		cadeia nome 
			escreva("*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			escreva("\n            Olá, bem vindo!!")
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			Util.aguarde(3000)
			limpa()
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			escreva("\n       Seu novo amigo acaba de nascer!!!")
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			Util.aguarde(3000)
			limpa()
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			escreva("\n       Vamos dar um nome para ele(a)!!!")
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			Util.aguarde(3000)
			limpa()
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			escreva("\n            Como irá chama-lo: ")
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*\n")
			leia(nome)
			nome = Texto.caixa_alta(nome)
			
			limpa()
			
		faca{
			escreva("\nSalvando informações: \n[")
			para(i = 1; i <= 20; i++)
			{
			// Espera um pouco antes de imprimir o próximo bloco
				para(tempo = 0; tempo < 30000000; tempo++) {} 

					escreva("⏹") // Cada # representa um pedaço da barra
			}
			escreva("] 100%\n")
			Util.aguarde(6000)
			limpa()
			
			escreva("           Divirta-se com  ", nome," (≧◡≦)")
			escreva("\n         Ecolha uma da opções abaixo:")
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			escreva("\n1 - [>] Avançar o tempo \t2 - [♥] Alimentar")
			escreva("\n3 - [★] Jogar           \t4 - [≈] Dar banho ")
			escreva("\n5 - [#] Ver status       \t6 - [X] Desligar")
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			escreva(" \n         Opção desejada: ")
			leia(opcao)
			limpa()
			escolha(opcao){
				caso 1:
					escreva("\n        >>> Você avançou 8 horas de vida! <<<\n")
					tempo_vida = tempo_vida + 8
					dias_vida = tempo_vida / 24
					horas_vida = tempo_vida % 24
					limpeza = limpeza - 2
					fome = fome + 3
					se(tempo_vida >= 168){
						escreva("\n",nome, " viveu 7 dias e morreu de velhice.(✖╭╮✖)\n")
						Util.aguarde(5000)
						limpa()
						escreva("\n>>> Finalizando dispositivo... <<<\n")
						Util.aguarde(2000)
						limpa()
						escreva("\n*****************************\n")
						escreva("         Até logo!!!         \n")
						escreva("*****************************\n")

						desligar = verdadeiro
					}senao{
						escreva("\n=============================================================\n")
						escreva( "\n`(^.^)/Agora ",nome, " tem ", dias_vida, " dia(s) e ", horas_vida, " hora(s) de vida. `(^.^)/\n")
						escreva("\n=============================================================")
					}	 
				pare
				caso 2:
					
				
				pare
				caso 3:
					  
					escreva("-*-*-*-*-*-*-*\n")
					escreva("Vamos jogar!!!\n")
					escreva("-*-*-*-*-*-*-*\n")
					   	
					escreva("================= JOKENPÔ =================")
					escreva("\n1 - (•_•) Pedra ,\t2 - (°▾°) Papel")
					escreva("\n3 - (¬ ¬) Tesoura,\t4 - (×_×) Sair")
					escreva("\n===========================================")
					escreva("\nEscolha uma opção:")
					leia(jogador1)
					escreva("Jo...")
					Util.aguarde(1000)
					escreva("Ken...")
					Util.aguarde(1000)
					escreva("Pô...")
					Util.aguarde(1000)       	
					jogador2 = Util.sorteia(1,3)
						se(jogador1 == 4){
							
						escreva("Até logo!!!")
						
					     }senao se(jogador1 < 1 ou jogador1 > 3){
							escreva("Digite um nº valido!!!")	
						}senao se((jogador1 == 1 e jogador2 == 3) ou
						          (jogador1 == 2 e jogador2 == 1) ou
						          (jogador1 == 3 e jogador2 == 2)){
								escreva("Você escolheu ",jogador1," e ",nome," escolheu: ", jogador2)
								escreva("\n***Você ganhou!!!***")
								escreva("***,", jogador2,"Ficou triste! (╯︵╰,) ***\n")
								felicidade = felicidade + 3
								tempo_vida = tempo_vida + 4
								fome = fome + 3	
						}senao{
								escreva("Você escolheu ",jogador1," e ",nome," escolheu: ", jogador2)
								escreva("\n***", Texto.caixa_alta(nome) ," ganhou!!!***")
								escreva("***,", jogador2,"Ficou ganhou!!! (≧◡≦) ***\n")
								felicidade = felicidade + 5
								tempo_vida = tempo_vida + 4
								fome = fome + 3	
						}
				
				
				pare
				caso 4:

				
				pare
				caso 5:
					tempo_vida = tempo_vida / 24
					escreva("\n+--------------------------------------+")
					escreva("\n|       Status Atual de ", nome, "         |")
					escreva("\n+--------------------------------------+")
					escreva("\n| Tempo de vida : ", dias_vida, " dia(s) e ",horas_vida," hora(s) |")
					escreva("\n| Felicidade    : ", felicidade," pontos             |")
					escreva("\n| Limpeza       : ", limpeza, " pontos            |")
					escreva("\n+--------------------------------------+\n")

					Util.aguarde(6000)
					
				pare
				caso 6:
					escreva(" - Finalizando dispositivo. - \n")
					Util.aguarde(2000)
					limpa()
					escreva("            Até logo!!!\n")
					desligar = verdadeiro
				
				pare
				caso contrario:
					escreva("Escolha uma opção válida.")
					Util.aguarde(4000)
				
			}
		}enquanto(desligar == falso)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */