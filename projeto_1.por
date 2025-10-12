programa
{
	inclua biblioteca Util
	inclua biblioteca Texto
	
	funcao inicio()
	{
		// Variáveis utilizadas
		inteiro jogar, opcao
		inteiro felicidade = 5, limpeza = 10, fome = 0, i, tempo, jogador1 = 0, jogador2 = 0, saude = 0, cura = 0
		inteiro tempo_vida = 0, dias_temp = 0, horas_temp = 0, tempo_doente = 0
		logico desligar = falso, doente = falso, sair = falso
		cadeia nome, escolha_jogador, escolha_amigo
		
		// Tela de inicial de  boas-vindas
		
		escreva("\n=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=*=**=*=*=*\n")
		escreva("                   █▄▄ █▀▀ █▀▄▀█   █░█ █ █▄░█ █▀▄ █▀█ █ █ █\n")
		escreva("                   █▄█ ██▄ █░▀░█   ▀▄▀ █ █░▀█ █▄▀ █▄█ ▄ ▄ ▄\n")
		escreva("\n=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=*=**=*=*=*")
		Util.aguarde(4000)
		limpa()
		
		escreva("\n=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=**=*=*=*\n")

		escreva("█▀ █▀▀ █░█   █▄░█ █▀█ █░█ █▀█   ▄▀█ █▀▄▀█ █ █▀▀ █▀█   █▄░█ ▄▀█ █▀ █▀▀ █▀▀ █░█\n")
		escreva("▄█ ██▄ █▄█   █░▀█ █▄█ ▀▄▀ █▄█   █▀█ █░▀░█ █ █▄█ █▄█   █░▀█ █▀█ ▄█ █▄▄ ██▄ █▄█\n")
		
		escreva("\n=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=*=**=*=*=*")
		Util.aguarde(2000)
		limpa()

		para(i = 0; i < 3; i++){
		    escreva("\n=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=*=**=*=*=*\n")
		    escreva("                            ───▄▀▀▀▄▄▄▄▄▄▄▄▀▀▀▄───\n")
		    escreva("                            ───█▒▒▒▒▒▒▒▒▒▒▒▒▒▒█───\n")
		    escreva("                             ────█▒▒█▒▒▒▒▒█▒▒█────\n")
		    escreva("                             ─▄▄──█▒▒▒▀█▀▒▒▒█──▄▄─\n")
		    escreva("                             █▒▒█─▀▄▒▒▒▒▒▒▒▄▀─█▒▒█\n")
		    escreva("\n=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=*=**=*=*=*\n")
		    Util.aguarde(1000)
		    limpa()
		    Util.aguarde(1000)
		}
		
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=\n")
	     escreva("█░█ ▄▀█ █▀▄▀█ █▀█ █▀   █▀▄ ▄▀█ █▀█   █░█ █▀▄▀█   █▄░█ █▀█ █▀▄▀█ █▀▀\n")
          escreva("▀▄▀ █▀█ █░▀░█ █▄█ ▄█   █▄▀ █▀█ █▀▄   █▄█ █░▀░█   █░▀█ █▄█ █░▀░█ ██▄\n") 
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=**=*=")
		Util.aguarde(2000)
		limpa()
		
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=\n ")
		escreva("█▀▀ █▀█ █▀▄▀█ █▀█   █ █▀█ ▄▀█   █▀▀ █░█ ▄▀█ █▀▄▀█ ▄▀█ ▄▄ █░░ █▀█ ▀\n")
		escreva(" █▄▄ █▄█ █░▀░█ █▄█   █ █▀▄ █▀█   █▄▄ █▀█ █▀█ █░▀░█ █▀█ ░░ █▄▄ █▄█ ▄\n")
		escreva("\n =*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=\n")
		leia(nome)
		nome = Texto.caixa_alta(nome)
		limpa()

		// Principal loop do jogo
		faca {
			// Barra de carregamento para dar melhor efeito visual
		escreva("Loading…\n")
		escreva("█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\n") 
		Util.aguarde(1500)
		limpa()
		escreva("    15%\n")
		escreva("█████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\n") 
		Util.aguarde(500)
		limpa()
		escreva("         30%\n")
		escreva("██████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\n") 
		Util.aguarde(500)
		limpa()
		escreva("                   60%\n")
		escreva("████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒\n") 
		Util.aguarde(1000)
		limpa()
		escreva("                             90%\n")
		escreva("██████████████████████████████▒▒▒\n") 
		Util.aguarde(1000)
		limpa()
		escreva("                                100%\n")
		escreva("█████████████████████████████████\n") 
	
		Util.aguarde(2000)
		limpa()
			// Menu principal do jogo
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
				// 1º Avançar o tempo
				caso 1:
					para(i = 0; i < 3; i++){
					    escreva("     ╦╦╦╦╦╦▄▀▀▀▀▀▀▄╦╦╦╦╦╦\n")
					    escreva("     ▒▓▒▓▒█╗▒▒▐▒▒▒╔█▒▓▒▓▒\n")
					    escreva("     ▒▓▒▓▒█║▒▒▐▄▄▒║█▒▓▒▓▒\n")
					    escreva("     ▒▓▒▓▒█╝▒▒▒▒▒▒╚█▒▓▒▓▒\n")
					    escreva("     ╩╩╩╩╩╩▀▄▄▄▄▄▄▀╩╩╩╩╩╩\n")
					    Util.aguarde(1000)
					    limpa()
					    Util.aguarde(1000)
					}

					escreva("\n        >>> Você avançou 8 horas de vida! <<<\n")
					tempo_vida = tempo_vida + 8
					dias_temp = tempo_vida / 24
					horas_temp = tempo_vida % 24
					limpeza = limpeza - 2
					fome = fome + 3
					Util.aguarde(2000)

					// Sistema de doença e cura
					se (doente == verdadeiro) {
						tempo_doente = tempo_doente + 8
					}
					
					// Verificação de cura baseada no tempo doente
					se (tempo_doente >= 8 e tempo_doente < 16) {
						cura = Util.sorteia(1, 3)
						se (cura == 1) {
							doente = falso
							escreva("\n", nome, " se curou da doença! (^_^)\n")
							Util.aguarde(2000)
							tempo_doente = 0
						}
					}

					se (tempo_doente >= 16 e tempo_doente < 24) {
						cura = Util.sorteia(1, 3)
						se (cura == 1 ou cura == 2) {
							doente = falso
							escreva("\n", nome, " se curou da doença! (^_^)\n")
							Util.aguarde(2000)
							tempo_doente = 0
						}
					}

					se (tempo_doente >= 24) {
						doente = falso
						escreva("\n", nome, " se curou da doença! (^_^)\n")
						Util.aguarde(2000)
						tempo_doente = 0
					}

					// Verificação de nova doença (se não está doente)
					se (doente == falso) {
						saude = Util.sorteia(1, 10)
						se (saude == 5) {
							doente = verdadeiro
							tempo_doente = 0
							escreva("\n ", nome, " ficou doente!\n")
							Util.aguarde(2000)
						}
					}

					// Alertas  - Fome
					se (fome >= 7) {
						escreva("\n Atenção! ", nome, " está com muita fome e pode morrer!\n")
						Util.aguarde(2000)
					}
					
					se (fome >= 10 e desligar == falso) {
						escreva("\n ", nome, " morreu de fome!\n")
						escreva("GAME OVER\n")
						desligar = verdadeiro
					}

					// Alertas  - Limpeza
					se (limpeza <= 2 e limpeza > 0) {
						escreva("\n⚠️ Atenção! ", nome, " está muito sujo e pode morrer!\n")
						Util.aguarde(2000)
					}
					
					se (limpeza <= 0 e desligar == falso) {
						escreva("\n ", nome, " morreu de sujeira!\n")
						escreva("GAME OVER\n")
						Util.aguarde(2000)
						desligar = verdadeiro
					}
				
					// Verificação de velhice (7 dias = 168 horas)
					se (tempo_vida >= 168) {
						escreva("\n🎉 Parabéns! ", nome, " viveu 7 dias e morreu de velhice. (✖╭╮✖)\n")
						escreva("Você venceu o jogo!\n")
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
						escreva("\n| (^.^)/ Agora ", nome, " tem ", dias_temp, " dia(s) e ", horas_temp, " hora(s) de vida. (^.^)/ |\n")
						escreva("|                                                             |")
						escreva("\n ============================================================= ")
					}
					pare

				//  2º Alimentar
				caso 2:

                         para(i = 0; i < 3; i++){
					    escreva("        ──▒▒▒▒▒────▄████▄─────\n")
					    escreva("        ─▒─▄▒─▄▒──███▄█▀──────\n")
					    escreva("        ─▒▒▒▒▒▒▒─│███────█──█──\n")
					    escreva("        ─▒▒▒▒▒▒▒──█████▄──────\n")
					    escreva("        ─▒─▒─▒─▒───▀███▀──────\n")
					    Util.aguarde(1000)
					    limpa()
					    Util.aguarde(1000)
					}
					
					escreva(nome, " Foi alimentado!\n")
					
					se (fome >= 4) {
						fome = fome - 4
						escreva("\n", nome, " Comeu e ficou satisfeito!\n")
						se (fome > 0) {
							felicidade = felicidade + 1
						}
					} senao se (fome > 0) {
						fome = 0
						escreva("\n", nome, " Comeu tudo e ficou saciado!\n")
						felicidade = felicidade + 1
					} senao se (fome == 0) {
						felicidade = felicidade - 2
						escreva("\n", nome, " Já estava saciado e ficou enjoado!\n")
					}

					// Limita felicidade ao máximo de 10
					se (felicidade > 10) {
						felicidade = 10
					}

					escreva("\nNível de Felicidade: ", felicidade)
					escreva("\nNível de Fome: ", fome, "\n")
					Util.aguarde(4000)
					pare

				// 3º Jogar (Jokenpô)
				caso 3:
					escreva("\n *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n")
					escreva("|           Vamos jogar!!!               |")
					escreva("\n *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n")
					Util.aguarde(1000)
					limpa()

				para(i = 0; i < 3; i++){
					   	escreva("        ─▄▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▄\n")
						escreva("        █░░░█░░░░░░░░░░▄▄░██░█\n")
						escreva("        █░▀▀█▀▀░▄▀░▄▀░░▀▀░▄▄░█\n")
						escreva("        █░░░▀░░░▄▄▄▄▄░░██░▀▀░█\n")
						escreva("        ─▀▄▄▄▄▄▀─────▀▄▄▄▄▄▄▀\n")
					    Util.aguarde(1000)
					    limpa()
					    Util.aguarde(1000)
					}
					
					sair = falso
					// loop Mini jogo
					faca {
						// Menu do Jokenpô
						escreva("================= JOKENPÔ =================")
						escreva("\n|1 - (•_•) Pedra \t2 - (°▾°) Papel   |")
						escreva("\n|3 - (¬ ¬) Tesoura\t4 - (×_×) Sair    |")
						escreva("\n===========================================")
						escreva("\n          Escolha uma opção: ")
						leia(jogador1)
						limpa()

						// Pet faz escolha aleatória
						jogador2 = Util.sorteia(1, 3)

						escolha_jogador = ""
						escolha_amigo = ""

						// Define texto da escolha do jogador
						se (jogador1 == 1) {
							escolha_jogador = "(•_•) Pedra"
						} senao se (jogador1 == 2) {
							escolha_jogador = "(°▾°) Papel"
						} senao se (jogador1 == 3) {
							escolha_jogador = "(¬ ¬) Tesoura"
						}

						// Define texto da escolha do pet
						se (jogador2 == 1) {
							escolha_amigo = "(•_•) Pedra"
						} senao se (jogador2 == 2) {
							escolha_amigo = "(°▾°) Papel"
						} senao se (jogador2 == 3) {
							escolha_amigo = "(¬ ¬) Tesoura"
						}

						// Lógica do jogo
						se (jogador1 == 4) {
							// Sair do jogo
							sair = verdadeiro
							escreva("\n *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n")
							escreva("|                 By by!!!               |")
							escreva("\n *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-\n")
							Util.aguarde(3000)
							limpa()
						} senao se (jogador1 < 1 ou jogador1 > 3) {
							// Opção inválida
							escreva("Digite um nº valido!!!")
							Util.aguarde(1000)
						} senao se ((jogador1 == 1 e jogador2 == 3) ou
									(jogador1 == 2 e jogador2 == 1) ou
									(jogador1 == 3 e jogador2 == 2)) {
							// Jogador ganhou
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
							escreva("\n***", nome, " Perdeu mas se divertiu! (^_^) ***\n")
							Util.aguarde(3000)
							limpa()
							
							// Pet perde: +3 felicidade
							se (felicidade < 10) {
								felicidade = felicidade + 3
							} senao {
								felicidade = 10
							}
						} senao se ((jogador1 == 1 e jogador2 == 1) ou
									(jogador1 == 2 e jogador2 == 2) ou
									(jogador1 == 3 e jogador2 == 3)) {
							// Empate
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
							// Pet ganhou
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
							escreva("\n***", Texto.caixa_alta(nome), " ganhou!!!***")
							escreva("\n===========================================")
							Util.aguarde(1000)
							escreva("\n***", nome, " ficou muito feliz!!! (≧◡≦) ***\n")
							Util.aguarde(3000)
							limpa()
							
							// Pet ganha: +5 felicidade
							se (felicidade < 10) {
								felicidade = felicidade + 5
							} senao {
								felicidade = 10
							}
							
							tempo_vida = tempo_vida + 4
							fome = fome + 2
						}
					} enquanto (sair == falso)
					pare

				//  4º Dar banho
				caso 4:
				
					se (limpeza < 10) {
						limpeza = 10
						escreva(nome, " tomou banho e gostou!\n")
					} senao {
						se (limpeza == 10) {
							felicidade = felicidade - 6
							escreva(nome, " já estava limpo e foi forçado a tomar outro banho! 😠\n")
						}
					}

					// Limita felicidade ao mínimo de 0
					se (felicidade < 0) {
						felicidade = 0
					}
					
					escreva("\nNível de Felicidade: ", felicidade)
					escreva("\nNível de Limpeza: ", limpeza, "\n")
					Util.aguarde(4000)
					pare

				//  5º Ver status
				caso 5:
					dias_temp = tempo_vida / 24
					horas_temp = tempo_vida % 24
					escreva("\n+--------------------------------------+")
					escreva("\n|       Status Atual de ", nome, "         |")
					escreva("\n+--------------------------------------+")
					escreva("\n Tempo de vida : ", dias_temp, " dia(s) e ", horas_temp, " hora(s)")
					escreva("\n Felicidade    : ", felicidade, " pontos")
					escreva("\n Limpeza       : ", limpeza, " pontos")
					escreva("\n Fome          : ", fome, " pontos")
					
					se (doente == verdadeiro) {
						escreva("\n Status        : Doente")
					} senao {
						escreva("\n Status        :  Saudável")
					}
					
					escreva("\n+--------------------------------------+\n")
					Util.aguarde(8000)
					pare

				// OPÇÃO 6: Desligar
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

			// Verificações de morte por felicidade
			se (felicidade <= 0 e desligar == falso) {
				limpa()
				escreva("\n GAME OVER ")
				escreva("\n", nome, " morreu de tristeza! ")
				escreva("\nTempo de vida: ", dias_temp, " dia(s) e ", horas_temp, " hora(s)\n")
				desligar = verdadeiro
			}

			// Verificações de morte por fome
			se (fome >= 10 e desligar == falso) {
				limpa()
				escreva("\n GAME OVER ")
				escreva("\n", nome, " morreu de fome!")
				escreva("\nTempo de vida: ", dias_temp, " dia(s) e ", horas_temp, " hora(s)\n")
				desligar = verdadeiro
			}
			
			// Verificações de morte por sujeira
			se (limpeza <= 0 e desligar == falso) {
				limpa()
				escreva("\n GAME OVER ")
				escreva("\n", nome, " ficou muito sujo e morreu de doença!")
				escreva("\nTempo de vida: ", dias_temp, " dia(s) e ", horas_temp, " hora(s)\n")
				desligar = verdadeiro
			}

			// Exibe status após cada ação (exceto se morreu)
			se (desligar == falso) {
				limpa()
				escreva("\n+--------------------------------------+")
				escreva("\n|       Status Atual de ", nome, "         |")
				escreva("\n+--------------------------------------+")
				escreva("\n Tempo de vida : ", dias_temp, " dia(s) e ", horas_temp, " hora(s)")
				escreva("\n Felicidade    : ", felicidade, " pontos")
				escreva("\n Limpeza       : ", limpeza, " pontos")
				escreva("\n Fome          : ", fome, " pontos")
				
				se (doente == verdadeiro) {
					escreva("\n Status        :  Doente")
				} senao {
					escreva("\n Status        :  Saudável")
				}
				
				escreva("\n+--------------------------------------+\n")
			}
			
		} enquanto (desligar == falso)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 16678; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */