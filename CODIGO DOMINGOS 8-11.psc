Algoritmo Registro_Login
	
	Dimension user[10]
	Dimension pass[10]
	Definir TempUser, TempPass como texto
	Definir opc como numero
	Definir UserCant,n como numero
	user[2]<-"admin"
	pass[1]<-"admin"
	Escribir "QUE OPCION DESEA"
	Escribir "1: INICIO DE SESION"
	Escribir "2: REGISTRARSE"
	Escribir "3: Consultar usuarios"
	Leer opc
	Segun opc
		caso 1:
			Escribir "ESCRIBA SU USUARIO"
			leer TempUser
			n<-0
			a<-0
			Repetir 
				Para i<-1 hasta 10 Hacer
					si TempUser=user[i] Entonces
						Escribir "DIGITE SU CONTRASEÑA"
						leer TempPass
						Repetir
							Para j<- 1 Hasta 10 Hacer
								Si TempPass=pass[i] Entonces
									Escribir ""
								SiNo
									Escribir "CONTRASEÑA INCORRECTA"
									Escribir "VUELVA A DIGITAR LA CONTRASEÑA"
									leer TempPass
								FinSi
							FinPara
						Hasta Que a = 1 
						n<-1
					SiNo
						i<-i-1
						n<-0
						Escribir "EL USUARIO NO ES VALIDO " TempUser
						Escribir "VUELVA A DIGITAR EL USUARIO"
						leer TempUser
					FinSi
				FinPara
			Hasta Que n = 1
			
		caso 2:
			Limpiar Pantalla
			Escribir "CUANTOS USUARIOS DESEA REGISTRAR"
			leer UserCant
			si UserCant > 10 Entonces
				n<-0
				Repetir
					Escribir "LA CANTIDAD DE USUARIOS NO ES VALIDA NO PUEDEN SER MAS DE 10 USUARIOS"
					Escribir "DIGITE CUANTOS USUARIOS SE REGISTRARAN NUEVAMENTE"
					Leer UserCant
					Si UserCant > 10 Entonces
						n<-0
					SiNo
						n<-1
					FinSi
					Limpiar Pantalla
				Hasta Que n=1
			FinSi
			Limpiar Pantalla
			Para i<- 1 Hasta UserCant Hacer
				Escribir "DIGITE EL NUEVO USUARIO"
				leer user[i]
				Escribir "ASIGNE UNA CONTRASEÑA"
				leer pass[i]
			FinPara
			Limpiar pantalla
			Escribir "REGISTRO EXITOSO"
	FinSegun
FinAlgoritmo
