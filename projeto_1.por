programa
{
	inclua biblioteca Util
	inclua biblioteca Texto
	funcao inicio()
	{
	
		inteiro avanca_tempo = 0, alimetar = 0, jogar, dar_banho = 0, ver_status, opcao
		inteiro felicidade = 5, limpeza = 10, fome = 0, i, tempo
		real tempo_vida = 0.0
		logico desligar = falso, doente = falso
		cadeia nome 

			escreva("\nOlá, bem vindo!!")
			escreva("\nInforme o nome do seu companheiro(a): ")
			leia(nome)
			limpa()
			
		faca{
			escreva("\nSalvando informações: \n[")
			para(i = 1; i <= 20; i++)
			{
			// Espera um pouco antes de imprimir o próximo bloco
				para(tempo = 0; tempo < 30000000; tempo++) {} 

					escreva("#") // Cada # representa um pedaço da barra
			}
			escreva("] 100%\n")
			Util.aguarde(2000)
			limpa()
			escreva("Apartir de agora, seu companheiro(a) se chama: ", Texto.caixa_alta(nome))
			escreva("\nEcolha uma da opções abaixo:")
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			escreva("\n 1. Avançar o tempo       \t2. Alimentar")
			escreva("\n 3. Jogar                 \t4. Dar banho")
			escreva("\n 5. Ver status            \t6. Desligar")
			escreva("\n*=*=*=*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*")
			escreva(" \nOpção desejada: ")
			leia(opcao)

			escolha(opcao){
				caso 1:
					 escreva("Voce avançou 8 horas de vida") 	
					 tempo_vida = tempo_vida + 8
					 
				pare
				caso 2:

				
				pare
				caso 3:

				
				pare
				caso 4:

				
				pare
				caso 5:
					tempo_vida = tempo_vida / 24
					escreva("Tempo de vida ", tempo_vida, " Dias")
					Util.aguarde(6000)
				pare
				caso 6:

				
				pare
				
			}
		}enquanto(desligar != verdadeiro)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1536; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */