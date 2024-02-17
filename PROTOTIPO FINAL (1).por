programa
{
	//inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u

	inteiro numAleatorio = 0
	inteiro num, numeroTentativas = 15
	cadeia nome
	inteiro contador, i = 1
	inteiro opcaoNovoJogo 
	inteiro opcaoMenu = 0
	inteiro faseConcluida = 0
	
	
	funcao inicio()
	{
		menuPrincipal()
	}
	
	funcao menuPrincipal(){
     	
	     escreva("\t\t\t\t\t\t\tG")
		u.aguarde(100)
		escreva("U")
		u.aguarde(100)
		escreva("E")
		u.aguarde(100)
		escreva("S")
		u.aguarde(100)
		escreva("S ")
		u.aguarde(100)
		escreva("T")
		u.aguarde(100)
		escreva("H")
		u.aguarde(100)
		escreva("E ")
		u.aguarde(100)
		escreva("N")
		u.aguarde(100)
		escreva("U")
		u.aguarde(100)
		escreva("M")
		u.aguarde(100)
		escreva("B")
		u.aguarde(100)
		escreva("E")
		u.aguarde(100)
		escreva("R")
		u.aguarde(2000)
		limpa()
		
	faca{	
     	escreva("\n\n\t\t\t\t\t\t   ESCOLHA UMA DAS OPÇÕES ABAIXO: \n\n")
     	u.aguarde(500)
     	escreva("\t\t\t\t\t\t\t1 PARA PROSSEGUIR:\n")
     	u.aguarde(500)
     	escreva("\t\t\t\t\t\t\t2 PARA SAIR DO JOGO:\n")
     	escreva("\n\t\t\t\t\t\t\t\t ")
     	leia(opcaoMenu)
     	limpa()

     	se(opcaoMenu < 1 ou opcaoMenu > 2){
     		limpa()
     		escreva("\n\n\t\t\t\t\t\t\tOPCAO INVÁLIDA!!!\n\n")
     		escreva("\t\t\t\t\t\t      > Digite novamente <")
     		u.aguarde(1500)
     		limpa()
     	
     	}
     	se(opcaoMenu == 2){
     		escreva("\n\n\t\t\t\t\t\t\tVOCE SAIU DO JOGO!")
     		u.aguarde(2000)
     		limpa()     		
     	}

     	se(opcaoMenu==1){
     		limpa()
     	
     		seletor(opcaoMenu)
     		
     	}
		}enquanto(opcaoMenu < 1 ou opcaoMenu > 2)
		}

 	funcao seletor(inteiro opcao){
			
	   	escreva("\t\t\t\t\t\t\tDigite o seu nome:\n\n\n")
	   	escreva("\t\t\t\t\t\t\t    > ")
	   	
	   	leia(nome)
	   	
	   	limpa()
	     escreva("\t\t\t\t\t\t      Bem vindo ao jogo " , nome , "!!\n\n\t\t\t\t\t\t      Leia as instruções abaixo!\n\n ")
	     escreva("\t\t\t\t\t\t\t  O JOGO TEM 5 FASES\n\n")
		u.aguarde(500)
		escreva("\t\t\t\t\tFase 1: O jogador tem 15 chances em 20 numeros sorteados\n")
		u.aguarde(300)
		escreva("\t\t\t\t\tFase 2: O jogador tem 15 chances em 25 numeros sorteados\n")
		u.aguarde(300)
		escreva("\t\t\t\t\tFase 3: O jogador tem 15 chances em 30 numeros sorteados\n")
		u.aguarde(300)
		escreva("\t\t\t\t\tFase 4: O jogador tem 15 chances em 45 numeros sorteados\n")
		u.aguarde(300)
		escreva("\t\t\t\t\tFase 5: O jogador tem 15 chances em 60 numeros sorteados\n\n")
		u.aguarde(5000)
		limpa()	
									
     	faca{
			escreva("\t\t\t\t\t*> DIGITE 1 PARA PROSSEGUIR OU 2 PARA SAIR DO JOGO <*\n\n")
			escreva("\t\t\t\t\t\t\t\t  ")
			leia(opcaoMenu)
			//limpa()
			u.aguarde(100)
			limpa()
								
			se(opcaoMenu < 1 ou opcaoMenu > 2){
	     		limpa()
	     		escreva("\n\n\t\t\t\t\t\t\topção inválida!!!\n\n")
	     		escreva("\t\t\t\t\t\t      > Digite novamente <")
	     		u.aguarde(1000)
	     		limpa()     	
     		}
	     	se(opcaoMenu == 2){
	     		escreva("\n\n\t\t\t\t\t\t\tVOCE SAIU DO JOGO!")
	     		u.aguarde(1000)
	     		limpa()    
	     	}
	     	 
	     	se(opcaoMenu == 1){
	     		executarFase(1, 20)

				se(faseConcluida == 1){
					executarFase(2, 25)
				}
	
				se(faseConcluida == 1){
					executarFase(3, 30)
				}
	
				se(faseConcluida == 1){
					executarFase(4, 45)
				}
	
				se(faseConcluida == 1){
					executarFase(5, 60)
				}
	
				se(faseConcluida == 1){
					trofeu()
		 			limpa()	
				}
				senao gameOver()
				novoJogo()
			  
     			limpa()
     	}    		
	}enquanto(opcaoMenu < 1 ou opcaoMenu > 2)
	}


	funcao executarFase(inteiro fase, inteiro valorFinal) {
		
	     faseConcluida = 0
	     
	     escreva("\t\t\t\t\t\t\t>>> " , fase,"° FASE <<< ")
	     u.aguarde(1000)   
	     sorteio(valorFinal)
	        
		para(contador = 1; contador <= numeroTentativas e faseConcluida == 0; contador++){   
	         	
			escreva("\n\t\t\t\t\t\t   Digite um número de 1 a ", valorFinal, "!\n\n")
			escreva("\t\t\t\t\t\t       ")
		     escreva(contador,"° chance fase " , fase , ": ")
		     leia(num)
		     limpa()
	        	
		
			se(num == numAleatorio){	        		
		        	escreva("\n\n\t\t\t\t\t\t        *** ACERTOU ***")
		        	u.aguarde(1000)
		        	limpa()
		        	faseConcluida = 1	
	        	}

	        	senao{
		        	escreva("\n\n\t\t\t\t\t\t        *** ERROU ***\n\n\n")
		        	
		        	se(num < numAleatorio){
		        		escreva("\t\t\t\t\t  SEU PALPITE É MENOR DO QUE O NÚMERO SORTEADO!")
		        		u.aguarde(1500)
	          	}
	          	
	          	se(num > numAleatorio){
		        		escreva("\t\t\t\t\t  SEU PALPITE É MAIOR DO QUE O NÚMERO SORTEADO!")
		        		u.aguarde(1500)
	        		}

				se(contador > 15){
					gameOver()
				}
	        		
		        	u.aguarde(500)
		        	limpa()
	        	}      	 
	    	}
	 }
	 

 	funcao trofeu(){
 		faca{
		i++
		se(i % 1 == 0){
		escreva("\n\n\n\t\t\t\t\t\t\t>>>>> YOU WIN <<<<<")
		u.aguarde(500)
		limpa()
		u.aguarde(500)	
		}
		
		}enquanto(i <= 5)
 		
 			                         
 	}

 	funcao novoJogo(){
 		
	faca{
		escreva("\n\n\t\t\t\t\t\t      QUER JOGAR NOVAMENTE?\n\n")
	        	escreva("\t\t\t\t\t\t\tDIGITE 1 PARA SIM: \n")
	        	escreva("\t\t\t\t\t\t\tDIGITE 2 PARA NÃO: \n")
	        	escreva("\n\t\t\t\t\t\t\t\t")
	        	leia(opcaoNovoJogo)
	        	u.aguarde(200)
	        	limpa()
 			
			se(opcaoNovoJogo < 1 ou opcaoNovoJogo > 2){
     		limpa()
     		escreva("\n\t\t\t\t\t\t\topção inválida!!!\n\n")
     		escreva("\t\t\t\t\t\t      > Digite novamente <")
     		u.aguarde(1000)
     		limpa()     	
     	}
     	se(opcaoNovoJogo == 2){
     		escreva("\n\n\t\t\t\t\t\t\tVOCE SAIU DO JOGO!")
     		u.aguarde(2000)
     		limpa()
     		
     		    
     	 }
     	 se(opcaoNovoJogo == 1){
     	 limpa()
     	 menuPrincipal()
     	
     	 }   
     	 		
 	}enquanto(opcaoNovoJogo < 1 ou opcaoNovoJogo > 2)
 	 
 	}
 	
 	
 	funcao sorteio(inteiro quantidadeNumeros){
 		numAleatorio = u.sorteia(1, quantidadeNumeros)		
		//escreva("\nnumero sorteado: ", numAleatorio )		
  	 } 

	funcao gameOver(){
		faca{
		i++
		se(i % 1 == 0){
		escreva("\n\n\n\t\t\t\t\t\t\t>>>>> GAME OVER <<<<<")
		u.aguarde(500)
		limpa()
		u.aguarde(500)	
		}
		
		}enquanto(i <= 5)
	}
 }
  
 

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6009; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */