programa
{
	inclua biblioteca Util
	inclua biblioteca Texto
	funcao inicio()
	{
		inteiro jogar, opcao
		inteiro felicidade = 5, limpeza = 10, fome = 0, i, tempo, jogador1 = 0, jogador2 = 0
		inteiro tempo_vida = 0, dias_temp = 0, horas_temp = 0
		logico desligar = falso, doente = falso, sair = falso
		cadeia nome, escolha_jogador, escolha_amigo
		
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*= ")
		escreva("\n|            Olá, bem vindo!!!             |")
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*= ")
		Util.aguarde(3000)
		limpa()
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*= ")
		escreva("\n|       Seu novo amigo acaba de nascer     |")
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*= ")
		Util.aguarde(3000)
		limpa()
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=")
		escreva("\n|       Vamos dar um nome para ele(a)      |")
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=")
		Util.aguarde(3000)
		limpa()
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*= ")
		escreva("\n|            Como irá chama-lo:            |")
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*= \n")
		leia(nome)
		nome = Texto.caixa_alta(nome)
		limpa()

		faca {
			escreva("\n       Salvando informações: \n[")
			para (i = 1; i <= 33; i++) {
				Util.aguarde(50)
				escreva("⏹")
			}
			escreva("] 100%\n")
			Util.aguarde(6000)
			limpa()

			escreva("           Divirta-se com  ", nome, " (≧◡≦)")
			escreva("\n         Ecolha uma da opções abaixo:")
			escreva("\n *=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*= ")
			escreva("\n|1 - [>] Avançar o tempo \t2 - [♥] Alimentar |")
			escreva("\n|3 - [★] Jogar           \t4 - [≈] Dar banho |")
			escreva("\n|5 - [#] Ver status       \t6 - [X] Desligar  |")
			escreva("\n *=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*= ")
			escreva(" \n              Opção desejada: ")
			leia(opcao)
			limpa()

			escolha (opcao) {
				caso 1:
					escreva("\n        >>> Você avançou 8 horas de vida! <<<\n")
					tempo_vida = tempo_vida + 8
					dias_temp = tempo_vida / 24
					horas_temp = tempo_vida % 24
					limpeza = limpeza - 2
					fome = fome + 3

					se (tempo_vida >= 168) {
						escreva("\n", nome, " viveu 7 dias e morreu de velhice.(✖╭╮✖)\n")
						Util.aguarde(5000)
						limpa()
						escreva("\n>>> Finalizando dispositivo... <<<\n")
						Util.aguarde(2000)
						limpa()
						escreva("\n ****************************\n")
						escreva("|         Até logo!!!        |\n")
						escreva(" ****************************\n")
						desligar = verdadeiro
					} senao {
						escreva("\n ============================================================= \n")
						escreva("|                                                             |")
						escreva("\n|`(^.^)/Agora ", nome, " tem ", dias_temp, " dia(s) e ", horas_temp, " hora(s) de vida.`(^.^)/ |\n")
						escreva("|                                                             |")
						escreva("\n ============================================================= ")
					}
					pare

				caso 2:
					escreva(nome, " foi alimentado!")
					se (fome >= 4) {
						fome = fome - 4
						escreva("\n", nome, " comeu e ficou satisfeito!")
						se (fome > 0) {
							felicidade = felicidade + 1 // foi alimentado quando estava com fome
						}
					} senao se (fome > 0) {
						fome = 0
						escreva("\n", nome, " comeu tudo e ficou saciado!")
						felicidade = felicidade + 1
					} senao se (fome == 0) {
						felicidade = felicidade - 2
						escreva("\n", nome, " já estava saciado e ficou enjoado!")
					}

					se (felicidade > 10) {
						felicidade = 10
					}

					escreva("\nNível de Felicidade= ", felicidade)
					escreva("\nNível de Fome: ", fome)
					Util.aguarde(6000)
					pare

				caso 3:
					escreva("\n *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n")
					escreva("|           Vamos jogar!!!               |")
					escreva("\n *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n")
					sair = falso
					Util.aguarde(3000)
					limpa()

					faca {
						escreva("================= JOKENPÔ =================")
						escreva("\n|1 - (•_•) Pedra \t2 - (°▾°) Papel   |")
						escreva("\n|3 - (¬ ¬) Tesoura\t4 - (×_×) Sair    |")
						escreva("\n===========================================")
						escreva("\n          Escolha uma opção: ")
						leia(jogador1)
						limpa()

						jogador2 = Util.sorteia(1, 3)

						escolha_jogador = ""
						escolha_amigo = ""

						se (jogador1 == 1) {
							escolha_jogador = "(•_•) Pedra"
						} senao se (jogador1 == 2) {
							escolha_jogador = "(°▾°) Papel"
						} senao se (jogador1 == 3) {
							escolha_jogador = "(¬ ¬) Tesoura"
						}

						se (jogador2 == 1) {
							escolha_amigo = "(•_•) Pedra"
						} senao se (jogador2 == 2) {
							escolha_amigo = "(°▾°) Papel"
						} senao se (jogador2 == 3) {
							escolha_amigo = "(¬ ¬) Tesoura"
						}

						se (jogador1 == 4) {
							sair = verdadeiro
							escreva("\n *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n")
							escreva("|                 By by!!!               |")
							escreva("\n *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n")
							Util.aguarde(3000)
							limpa()
						} senao se (jogador1 < 1 ou jogador1 > 3) {
							escreva("Digite um nº valido!!!")
							Util.aguarde(1000)
						} senao se ((jogador1 == 1 e jogador2 == 3) ou
									(jogador1 == 2 e jogador2 == 1) ou
									(jogador1 == 3 e jogador2 == 2)) {
							escreva("Jo...")
							Util.aguarde(1000)
							escreva("Ken...")
							Util.aguarde(1000)
							escreva("Pô...")
							Util.aguarde(1000)
							limpa()
							Util.aguarde(1000)
							escreva("\n===========================================")
							escreva("\nVocê escolheu ", escolha_jogador, "\n", nome, " escolheu: ", escolha_amigo)
							Util.aguarde(1000)
							escreva("\n***Você ganhou!!!***")
							escreva("\n===========================================")
							Util.aguarde(1000)
							escreva("\n***", nome, " ficou triste! (╯_╰,) ***\n")
							Util.aguarde(3000)
							limpa()
							felicidade = felicidade + 3
							tempo_vida = tempo_vida + 4
							fome = fome + 3
						} senao se ((jogador1 == 1 e jogador2 == 1) ou
									(jogador1 == 2 e jogador2 == 2) ou
									(jogador1 == 3 e jogador2 == 3)) {
							escreva("Jo...")
							Util.aguarde(1000)
							escreva("Ken...")
							Util.aguarde(1000)
							escreva("Pô...")
							Util.aguarde(1000)
							limpa()
							Util.aguarde(1000)
							escreva("===========================================")
							escreva("\nVocê escolheu ", escolha_jogador, "\n", nome, " escolheu: ", escolha_amigo)
							Util.aguarde(1000)
							escreva("\n***Vocês empataram!!!***")
							escreva("\n===========================================")
							Util.aguarde(3000)
							limpa()
						} senao {
							escreva("===========================================")
							escreva("\nVocê escolheu ", escolha_jogador, "\n", nome, " escolheu: ", escolha_amigo)
							Util.aguarde(1000)
							escreva("\n***", Texto.caixa_alta(nome), " ganhou!!!***")
							escreva("\n===========================================")
							Util.aguarde(1000)
							escreva("\n***", nome, " ficou feliz!!! (≧◡≦) ***\n")
							Util.aguarde(3000)
							limpa()
							felicidade = felicidade + 5
							tempo_vida = tempo_vida + 4
							fome = fome + 3
						}
					} enquanto (sair == falso)
					pare

				caso 4:
					se (limpeza < 10) {
						limpeza = 10
						escreva(nome, " tomou banho e gostou! :)")
					} senao {
						se (limpeza == 10) {
							felicidade = felicidade - 6
							escreva(nome, " já estava limpo e foi forçado a tomar outro banho")
						}
						se (felicidade <= 0) {
							desligar = verdadeiro
							escreva("\n", nome, " morreu de tristeza!\nGAME OVER")
						}
					}
					escreva("\nNível de Felicidade= ", felicidade)
					escreva("\nNível de Fome: ", fome)
					Util.aguarde(6000)
					pare

				caso 5:
					dias_temp = tempo_vida / 24
					horas_temp = tempo_vida % 24
					escreva("\n+--------------------------------------+")
					escreva("\n|       Status Atual de ", nome, "         |")
					escreva("\n+--------------------------------------+")
					escreva("\n Tempo de vida : ", dias_temp, " dia(s) e ", horas_temp, " hora(s) ")
					escreva("\n Felicidade    : ", felicidade, " pontos")
					escreva("\n Limpeza       : ", limpeza, " ponto")
					escreva("\n Fome          : ", fome, " pontos")
					se (doente) {
						escreva("\n Status        : doente")
					} senao {
						escreva("\n Status        : saudável")
					}
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
		} enquanto (desligar == falso)

		se (felicidade <= 0 e desligar == falso) {
			escreva("\n", nome, " morreu de tristeza!\nGAME OVER")
			desligar = verdadeiro
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9114; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */