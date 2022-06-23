/*create database Db_Felipe
use Db_Felipe*/

/* 1)DESENVOLVA UM SCRIP EM SQL QUE MOSTRE UM CONTADOR ATÉ 100 E PARA NO
NÚMERO 62, MOSTRANDO O NÚMERO COMO RESULTADO*/

DECLARE @Contador AS INT /*@Contador está sendo a variável, use @ para declaração*/
SET @Contador = 1 /* set serve para atribuir valor na variável*/
WHILE @Contador <= 100
 BEGIN
 SELECT @Contador
 IF @Contador <= 62 
 BEGIN
 SET @Contador = @Contador + 1 
 CONTINUE 
 END 
 BREAK
 END

/* 2)CRIE UM SCRIPT EM SQP QUE MOSTRE OS NUMEROS DE 1 ATÉ 100 E MOSTRE SE O NÚMERO 
É PAR OU ÍMPAR*/

DECLARE @Variavel AS INT
SET @Variavel = 1 
WHILE @Variavel <= 100
 BEGIN
 SELECT @Variavel,
 CASE
WHEN @Variavel % 2 = 0 THEN 'PAR'
 ELSE 'IMPAR'
 END
 SET @Variavel = @Variavel + 1 
 END

 /*DESENVOLVA UM SCRIP EM PL/SQL QUE APRESENTE O RESULTADO DA VARIÁVEL IDADE SE:

        CONDIÇÃO     |     RESULTADO
      MENOR QUE 10   |      CRIANÇA
      DE 10 ATÉ 17   |	    JOVEM
      DE 18 ATÉ 60	 |      ADULTO
      ACIMA DE 61	 |      IDOSO                                             */

DECLARE @Idade AS INT, @Resultado varchar (30)
SET @Idade = 0
	IF @Idade = 0 AND @Idade <10
		BEGIN
			SET @Resultado = 'CRIANÇA'
				END	

	ELSE IF @Idade = 10 AND @Idade <= 17
		BEGIN
			SET @Resultado = 'JOVEM'
				END

	ELSE IF @Idade = 18 AND @Idade <= 60
		BEGIN	
			SET @Resultado = 'ADULTO'
				END

	ELSE IF @Idade >= 61
		BEGIN
			SET @Resultado = 'IDOSO'
				END

				print @Resultado
