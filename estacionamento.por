
programa 
{ 	
	inteiro vagas[30]
	funcao aguarde(){
		cadeia _
		escreva("\n\nPressione enter para continuar  ==>")
		leia(_)

	}
	funcao logico vagaOcupada(inteiro vaga){
		se(vagas[vaga-1] == 1){
			retorne verdadeiro

		}senao{
			retorne falso

		}

	}
	funcao registrarEntrada() {
		inteiro vaga
		escreva("Digite o número da vaga na qual você queira registrar sua entrada.\n")
		leia(vaga)
		se(vagaOcupada(vaga)){
		escreva("Sorry mas já há um veiculo estácionado nesta vaga")
		}senao{
			vagas[vaga-1] = 1
			escreva("Concluido.")
		}

	}
		
	funcao registrarSaida() {
		inteiro vaga
		escreva("Digite o número da vaga na qual você queira registrar sua saída.\n")
		leia(vaga)
		se(vagaOcupada(vaga)){
			vagas[vaga-1] = 0
			escreva("Concluido.")
		}senao{
			escreva("....................ERRO! Não há veiculos estacionados nesta vaga")
		}
		
		
		
		
		} 
	funcao listarVagas() {
		escreva("Suas vagas serão listadas abaixo. 2 Underline estara indicando que á vaga está ocupada, e números indicaram vaga\n")
			
			para(inteiro i = 1; i<=30; i++){
				se(vagaOcupada(i)){
					escreva("|__")
				}senao{
					se(i<10){
						escreva("|0"+i)
					}senao{
						escreva("|"+i)
					}
				}
			}
			escreva("|\n ---------------------------------------------")
		
		
	} 
	funcao inicio () 
	{
		inteiro opcao
		logico continuar = verdadeiro
		enquanto(continuar){
		escreva("SISTEMA DE GESTÃO DE UM ESTACIONAMENTO\n\n")
		escreva("ESCOLHA UMA OPÇÃO\n")
		escreva("1. REGISTRAR ENTRADA\t3. LISTAR REGISTRO\n2 .REGISTRAR SAÍDA\t4 .SAIR\n")
		leia(opcao)
		limpa()
		escolha(opcao){
			caso 1:
			registrarEntrada()
			aguarde()
			pare
			caso 2:
			registrarSaida()
			aguarde()
			pare
			caso 3:
			listarVagas()
			aguarde()
			pare
			caso contrario:
			continuar = falso
		}
		limpa()
		}
	} 
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */