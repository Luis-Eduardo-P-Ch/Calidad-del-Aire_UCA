
* gráfico de las dos series en un mismo gráficco
clear

import excel "C:\Users\luedu\Desktop\Doctorado en Economia UCA\Tesis\Regresión Discontinua\Calidad del Aire 2da\Calidad del Aire Consolidado_Gráfico_en diferencias.xlsx", sheet("Hoja1") firstrow




destring PM10_Cent12_2019, replace
destring PM10_Cent13_2019, replace
destring PM10_Cent14_2019, replace
destring PM10_Cent15_2019, replace
destring PM10_Cent16_2019, replace
destring PM10_Cent17_2019, replace
destring PM10_Cent18_2019, replace
destring PM10_Cent19_2019, replace

destring PM10_Cent12_2020, replace
destring PM10_Cent13_2020, replace
destring PM10_Cent14_2020, replace
destring PM10_Cent15_2020, replace
destring PM10_Cent16_2020, replace
destring PM10_Cent17_2020, replace
destring PM10_Cent18_2020, replace
destring PM10_Cent19_2020, replace

destring NO2_Cent12_2019, replace
destring NO2_Cent13_2019, replace
destring NO2_Cent14_2019, replace
destring NO2_Cent15_2019, replace
destring NO2_Cent16_2019, replace
destring NO2_Cent17_2019, replace
destring NO2_Cent18_2019, replace
destring NO2_Cent19_2019, replace

destring NO2_Cent12_2020, replace
destring NO2_Cent13_2020, replace
destring NO2_Cent14_2020, replace
destring NO2_Cent15_2020, replace
destring NO2_Cent16_2020, replace
destring NO2_Cent17_2020, replace
destring NO2_Cent18_2020, replace
destring NO2_Cent19_2020, replace


* hacemos el gráfico de emision CO



twoway (scatter CO_Cent12_2019 DayssincestateOrder) (scatter CO_Cent12_2020 DayssincestateOrder)
twoway (scatter CO_Cent13_2019 DayssincestateOrder) (scatter CO_Cent13_2020 DayssincestateOrder)
twoway (scatter CO_Cent14_2019 DayssincestateOrder) (scatter CO_Cent14_2020 DayssincestateOrder)
twoway (scatter CO_Cent15_2019 DayssincestateOrder) (scatter CO_Cent15_2020 DayssincestateOrder)
twoway (scatter CO_Cent16_2019 DayssincestateOrder) (scatter CO_Cent16_2020 DayssincestateOrder)
twoway (scatter CO_Cent17_2019 DayssincestateOrder) (scatter CO_Cent17_2020 DayssincestateOrder)
twoway (scatter CO_Cent18_2019 DayssincestateOrder) (scatter CO_Cent18_2020 DayssincestateOrder)


twoway (scatter CO_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=156 || lfit CO_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=79 || lfit CO_Cent19_2019 DayssincestateOrder if Day >=79 & Day <=157|| scatter CO_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=156 || lfit CO_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=79 || lfit CO_Cent19_2020 DayssincestateOrder if Day >=79 & Day <=157||)

 
* hacemos el gráfico de emision NO

twoway (scatter NO2_Cent12_2019 DayssincestateOrder) (scatter NO2_Cent12_2020 DayssincestateOrder)
twoway (scatter NO2_Cent13_2019 DayssincestateOrder) (scatter NO2_Cent13_2020 DayssincestateOrder)
twoway (scatter NO2_Cent14_2019 DayssincestateOrder) (scatter NO2_Cent14_2020 DayssincestateOrder)
twoway (scatter NO2_Cent15_2019 DayssincestateOrder) (scatter NO2_Cent15_2020 DayssincestateOrder)
twoway (scatter NO2_Cent16_2019 DayssincestateOrder) (scatter NO2_Cent16_2020 DayssincestateOrder)
twoway (scatter NO2_Cent17_2019 DayssincestateOrder) (scatter NO2_Cent17_2020 DayssincestateOrder)
twoway (scatter NO2_Cent18_2019 DayssincestateOrder) (scatter NO2_Cent18_2020 DayssincestateOrder)
twoway (scatter NO2_Cent19_2019 DayssincestateOrder) (scatter NO2_Cent19_2020 DayssincestateOrder)


twoway (scatter NO2_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=156 || lfit NO2_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=79 || lfit NO2_Cent19_2019 DayssincestateOrder if Day >=79 & Day <=157|| scatter NO2_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=156 || lfit NO2_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=79 || lfit NO2_Cent19_2020 DayssincestateOrder if Day >=79 & Day <=157||)
 

 * hacemos el gráfico de emision de pariculas

twoway (scatter PM10_Cent12_2019 DayssincestateOrder) (scatter PM10_Cent12_2020 DayssincestateOrder)
twoway (scatter PM10_Cent13_2019 DayssincestateOrder) (scatter PM10_Cent13_2020 DayssincestateOrder)
twoway (scatter PM10_Cent14_2019 DayssincestateOrder) (scatter PM10_Cent14_2020 DayssincestateOrder)
twoway (scatter PM10_Cent15_2019 DayssincestateOrder) (scatter PM10_Cent15_2020 DayssincestateOrder)
twoway (scatter PM10_Cent16_2019 DayssincestateOrder) (scatter PM10_Cent16_2020 DayssincestateOrder)
twoway (scatter PM10_Cent17_2019 DayssincestateOrder) (scatter PM10_Cent17_2020 DayssincestateOrder)
twoway (scatter PM10_Cent18_2019 DayssincestateOrder) (scatter PM10_Cent18_2020 DayssincestateOrder)
twoway (scatter PM10_Cent19_2019 DayssincestateOrder) (scatter PM10_Cent19_2020 DayssincestateOrder)

twoway (scatter PM10_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=156 || lfit PM10_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=79 || lfit PM10_Cent19_2019 DayssincestateOrder if Day >=79 & Day <=157|| scatter PM10_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=156 || lfit PM10_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=79 || lfit PM10_Cent19_2020 DayssincestateOrder if Day >=79 & Day <=157||)


 *Empiezo importando la Base de Datos..    Delitos_consolidado 
* Ahora empezamos con las estimaciones 


clear 

import excel "C:\Users\luedu\Desktop\Doctorado en Economia UCA\Tesis\Regresión Discontinua\Calidad del Aire 2da\Calidad del Aire Consolidado.xlsx", sheet("Hoja1") firstrow

des
sum

destring PM10_Cent12, replace
destring PM10_Cent13, replace
destring PM10_Cent14, replace
destring PM10_Cent15, replace
destring PM10_Cent16, replace
destring PM10_Cent17, replace
destring PM10_Cent18, replace
destring PM10_Cent19, replace

destring NO2_Cent12, replace
destring NO2_Cent13, replace
destring NO2_Cent14, replace
destring NO2_Cent15, replace
destring NO2_Cent16, replace
destring NO2_Cent17, replace
destring NO2_Cent18, replace
destring NO2_Cent19, replace



//Analizo solo el año 2020 //* 

*CO
scatter CO_Cent19 Day if Day >=159 & Day <=314 || lfit CO_Cent19 Day if Day >=159 & Day <=237 || lfit CO_Cent19 Day if Day >=237 & Day <=314

*NO
scatter NO2_Cent19 Day if Day >=159 & Day <=314 || lfit NO2_Cent19 Day if Day >=159 & Day <=237 || lfit NO2_Cent19 Day if Day >=237 & Day <=314

*PM
scatter PM10_Cent19 Day if Day >=159 & Day <=314 || lfit PM10_Cent19 Day if Day >=159 & Day <=237 || lfit PM10_Cent19 Day if Day >=237 & Day <=314


//Al observar la discontinuidad, empecemos estimado el modleo de regreesi{on discu¿ontinua en el tiempo//

*Generamos una variable centrada en el frontera. EN este caso en el día 231 * 

gen Diasalin= Day-237

*Podemos ver la gráfica.*
scatter Diasalin Day


//*Ahora vamos a generar una variable Binaria con 1 cuando es mayor a 231 (es, decir todos
*los dias posteriores al confinamiento) y 0 cuando es menor (antes del confinamiento)*

gen Dias_menos237= .

replace Dias_menos237= 0 if Day < 237
replace Dias_menos237= 1 if Day >= 237

*y luego generamos una variable ventana. "Banwith" *

gen ventana=abs(Day-237)

*Lo podemos ver en la gráfica *
scatter ventana Day

scatter ventana Diasalin

*Gráfica de los delitos de ambos años (Estos gráficos tambien nos puede servir para incluirlos en el 
*documento

twoway (scatter CO_Cent12 Days), by(Year)
twoway (scatter PM10_Cent12 Days), by(Year)
twoway (scatter NO2_Cent19 Days), by(Year)


*Ahora Hacemos las Estimaciones: Dos caminos
*Ahora veamos un camino como lo hace Bernal y Pena.

*Empezamos haciendo una regresion por izquierda y por derecha.

*Izquierda
reg CO_Cent12 DayssincestateOrder if Day >=160 & Day <237 

*Derecha
reg CO_Cent12 DayssincestateOrder if Day >=237 & Day <= 314 

*Y posteriormente, en en una regresion discontinua nitida (Todos por arriba y por debajo participan del programa)
*Solo debemos restar los interceptos de cada regresión.


*OJO: 
*Pero hay una forma mas directa y rápida. Y esto es:

reg CO_Cent12 DayssincestateOrder Dias_menos237 if ventana <= 77 


//* La idea es intrepretar el coeficiente de Dias_menos231. 
*La diferencia de ahora es que podemos evaluarlo estadisticamente. 
*De esta forma lo evaluamos un cambio en la ordenada de origen. 
*Por tanto, podemos decir que la pandemia tuvo un efecto de 118.84 en la medida de robos.
*Y es significativa*

*Pero ademas podemos incorporar un posible cambio en la pendiente, para eso lo que hacemos en agregar un interaccion.

reg CO_Cent12 c.DayssincestateOrder##c.Dias_menos237 if ventana <= 77 

*De esta manera nos aparecen las misma variables pero sumado la intereccion de la variable day y la dicotomica.
*Con lo cual tambien podemos evaluar si hay un cambio en la pendiente de la regresión.

*Guardamos los resultados con:

eststo mco1

or

estimate store mco1

*Y corremos alguna regresiones mas, pero en vez de una ventana de 72 de 65.

reg CO_Cent12 c.DayssincestateOrder##c.Dias_menos237 if ventana <= 65

*Nos damos cuenta el impacto en el cambio es de 1.21 y que al haber disminuido la ventana sigue siendo significativo
*ademas se tener un mayor cambio marginal (pendiente mas inclinada)

*Guardamos 

eststo mco2
or
estimate store mco2  

*Y realizamos mas estimaciones:

reg CO_Cent12 c.DayssincestateOrder##c.Dias_menos237 if ventana <= 55

eststo mco3
or
estimate store mco3  


*Ahora vamos a comparar todas las regresiones juntas.

esttab mco*, compress nogaps nolines r2 se obslast noomit replace star(* 0.1 ** 0.05 *** 0.01) b(3) se(3)


*hacemos un table. 

table Day , c(mean Dias_menos237) 

table DayssincestateOrder, c(mean Dias_menos237) 

*Con esto nos permitira ver si todos los que cumplen las condiocnes participaron del porgrama o no.
*EN caso de ser no.



*Hasta aqui lo que vimos en el video*


*Ahora tratamos de estimar lo porpuesto en la TESIS*  Al final es lo mismo solo paraa que salgan con los nombres de las variables de la tesis. 

*Empezamos haciendo un gráfcio de discontinuidad y que muestre las regresiones

*CO*
scatter CO_Cent19 Diasalin if Day >=159 & Day <=314 || lfit CO_Cent19 Diasalin if Day >=159 & Day <=237 || lfit CO_Cent19 Diasalin if Day >=237 & Day <=314


*NO*
scatter NO2_Cent19 Diasalin if Day >=159 & Day <=314 || lfit NO2_Cent19 Diasalin if Day >=159 & Day <=237 || lfit NO2_Cent19 Diasalin if Day >=237 & Day <=314


*PM10_Cent12*
scatter PM10_Cent19 Diasalin if Day >=159 & Day <=314 || lfit PM10_Cent19 Diasalin if Day >=159 & Day <=237 || lfit PM10_Cent19 Diasalin if Day >=237 & Day <=314


*Luego realizamos las regresiones

* CO

*dias en Funcion lineal 
reg CO_Cent19 c.Dias_menos237##c.DayssincestateOrder i.DayoftheWeek if ventana <= 60

reg CO_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_40 i.DayoftheWeek if ventana <= 40

reg CO_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_20 i.DayoftheWeek if ventana <= 20


*dias en Funcion cuadrática 
reg CO_Cent19 c.Dias_menos237##c.DayssincestateOrder##c.DayssincestateOrder i.DayoftheWeek if ventana <= 60

reg CO_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_40##c.DayssincestateOrder_B_40 i.DayoftheWeek if ventana <= 40

reg CO_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_20##c.DayssincestateOrder_B_20 i.DayoftheWeek if ventana <= 20



* NO

*dias en Funcion lineal
reg NO2_Cent19 c.Dias_menos237##c.DayssincestateOrder i.DayoftheWeek if ventana <= 60

reg NO2_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_40 i.DayoftheWeek if ventana <= 40

reg NO2_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_20 i.DayoftheWeek if ventana <= 20



*dias en Funcion cuadrática 
reg NO2_Cent19 c.Dias_menos237##c.DayssincestateOrder##c.DayssincestateOrder i.DayoftheWeek if ventana <= 60

reg NO2_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_40##c.DayssincestateOrder_B_40 i.DayoftheWeek if ventana <= 40

reg NO2_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_20##c.DayssincestateOrder_B_20 i.DayoftheWeek if ventana <= 20



* Particulas

*dias en Funcion lineal
reg PM10_Cent19 c.Dias_menos237##c.DayssincestateOrder i.DayoftheWeek if ventana <= 60

reg PM10_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_40 i.DayoftheWeek if ventana <= 40

reg PM10_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_20 i.DayoftheWeek if ventana <= 20


*dias en Funcion cuadrática 
reg PM10_Cent19 c.Dias_menos237##c.DayssincestateOrder##c.DayssincestateOrder i.DayoftheWeek if ventana <= 60

reg PM10_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_40##c.DayssincestateOrder_B_40 i.DayoftheWeek if ventana <= 40

reg PM10_Cent19 c.Dias_menos237##c.DayssincestateOrder_B_20##c.DayssincestateOrder_B_20 i.DayoftheWeek if ventana <= 20





*RREGRESIÖN DIFERENCIA EN DIFERENCIA* 

reg CO_Cent12 Year2020##PostLockdown
 
reg CO_Cent12 c.Year2020##c.PostLockdown

*Nota: cuando se usa c. es para que nos apareza el nombre de la variable. especialemente  cuando solo usamos un #, es decir, para que no nos muestre las 
*estimaciones de la variables individuales

*Link de apoyo en las estimaciones
*La idea del metodo esta bien explicado en: 
*https://www.youtube.com/watch?v=Q5QOCMIwjbg

*Explicado de forma animada en: 
*https://www.youtube.com/watch?v=eiffOVbYvNc

*Explicado en la estimacion de codigos:
*https://www.youtube.com/watch?v=bG61UMDiIRc




* Modleo de la Tesis.

*Tla gráfica esta al inicio porque necesitabamos tener a la serie en dos (una 2019 y otra 2020)*

*CO

reg CO_Cent19 c.Year2020##c.PostLockdown##c.Days i.DayoftheWeek
reg CO_Cent19 c.Year2020##c.PostLockdown##c.Days##c.Days i.DayoftheWeek

*NO
reg NO2_Cent19 c.Year2020##c.PostLockdown##c.Days i.DayoftheWeek
reg NO2_Cent19 c.Year2020##c.PostLockdown##c.Days##c.Days i.DayoftheWeek

* Particulas
reg PM10_Cent19 c.Year2020##c.PostLockdown##c.Days i.DayoftheWeek
reg PM10_Cent19 c.Year2020##c.PostLockdown##c.Days##c.Days i.DayoftheWeek



*PRUEBAS PLACEBO  16 de marzo *

clear 

import excel "C:\Users\luedu\Desktop\Doctorado en Economia UCA\Tesis\Regresión Discontinua\Calidad del Aire 2da\Calidad del Aire Consolidado.xlsx", sheet("Hoja1") firstrow

des
sum

destring PM10_Cent12, replace
destring PM10_Cent13, replace
destring PM10_Cent14, replace
destring PM10_Cent15, replace
destring PM10_Cent16, replace
destring PM10_Cent17, replace
destring PM10_Cent18, replace
destring PM10_Cent19, replace

destring NO2_Cent12, replace
destring NO2_Cent13, replace
destring NO2_Cent14, replace
destring NO2_Cent15, replace
destring NO2_Cent16, replace
destring NO2_Cent17, replace
destring NO2_Cent18, replace
destring NO2_Cent19, replace




*Generamos una variable centrada en el frontera. EN este caso en el día 233 ( 16 de marzo 2020) * 

gen Diasalin= Day-233

*Podemos ver la gráfica.*
scatter Diasalin Day


//*Ahora vamos a generar una variable Binaria con 1 cuando es mayor a 233 (es, decir todos
*los dias posteriores al confinamiento) y 0 cuando es menor (antes del confinamiento)*

gen Dias_menos233= .

replace Dias_menos233= 0 if Day < 233
replace Dias_menos233= 1 if Day >= 233

*y luego generamos una variable ventana. "Banwith" *

gen ventana=abs(Day-233)

*Lo podemos ver en la gráfica *
scatter ventana Day

scatter ventana Diasalin


*Ahora tratamos de estimar lo porpuesto en la TESIS*  Al final es lo mismo solo paraa que salgan con los nombres de las variables de la tesis. 

*Empezamos haciendo un gráfcio de discontinuidad y que muestre las regresiones

*CO*
scatter CO_Cent19 Diasalin if Day >=159 & Day <=314 || lfit CO_Cent19 Diasalin if Day >=159 & Day <=233 || lfit CO_Cent19 Diasalin if Day >=233 & Day <=314


*NO*
scatter NO2_Cent19 Diasalin if Day >=159 & Day <=314 || lfit NO2_Cent19 Diasalin if Day >=159 & Day <=233 || lfit NO2_Cent19 Diasalin if Day >=233 & Day <=314


*PM10_Cent12*
scatter PM10_Cent19 Diasalin if Day >=159 & Day <=314 || lfit PM10_Cent19 Diasalin if Day >=159 & Day <=233 || lfit PM10_Cent19 Diasalin if Day >=233 & Day <=314


*Luego realizamos las regresiones

* CO

*dias en Funcion lineal 
reg CO_Cent19 c.Dias_menos233##c.DayssincestateOrder_16 i.DayoftheWeek if ventana <= 60

*dias en Funcion cuadrática 
reg CO_Cent19 c.Dias_menos233##c.DayssincestateOrder_16##c.DayssincestateOrder_16 i.DayoftheWeek if ventana <= 60



* NO

*dias en Funcion lineal
reg NO2_Cent19 c.Dias_menos233##c.DayssincestateOrder_16 i.DayoftheWeek if ventana <= 60

*dias en Funcion cuadrática 
reg NO2_Cent19 c.Dias_menos233##c.DayssincestateOrder_16##c.DayssincestateOrder_16 i.DayoftheWeek if ventana <= 60



* Particulas

*dias en Funcion lineal
reg PM10_Cent19 c.Dias_menos233##c.DayssincestateOrder_16 i.DayoftheWeek if ventana <= 60

*dias en Funcion cuadrática 
reg PM10_Cent19 c.Dias_menos233##c.DayssincestateOrder_16##c.DayssincestateOrder_16 i.DayoftheWeek if ventana <= 60



* Modleo de la Tesis RD DID

*Tla gráfica esta al inicio porque necesitabamos tener a la serie en dos (una 2019 y otra 2020)*

*CO

reg CO_Cent19 c.Year2020##c.PostLockdown_16##c.Days i.DayoftheWeek
reg CO_Cent19 c.Year2020##c.PostLockdown_16##c.Days##c.Days i.DayoftheWeek

*NO
reg NO2_Cent19 c.Year2020##c.PostLockdown_16##c.Days i.DayoftheWeek
reg NO2_Cent19 c.Year2020##c.PostLockdown_16##c.Days##c.Days i.DayoftheWeek

* Particulas
reg PM10_Cent19 c.Year2020##c.PostLockdown_16##c.Days i.DayoftheWeek
reg PM10_Cent19 c.Year2020##c.PostLockdown_16##c.Days##c.Days i.DayoftheWeek




*PRUEBAS PLACEBO  31 de marzo *

clear 

import excel "C:\Users\luedu\Desktop\Doctorado en Economia UCA\Tesis\Regresión Discontinua\Calidad del Aire 2da\Calidad del Aire Consolidado.xlsx", sheet("Hoja1") firstrow

des
sum

destring PM10_Cent12, replace
destring PM10_Cent13, replace
destring PM10_Cent14, replace
destring PM10_Cent15, replace
destring PM10_Cent16, replace
destring PM10_Cent17, replace
destring PM10_Cent18, replace
destring PM10_Cent19, replace

destring NO2_Cent12, replace
destring NO2_Cent13, replace
destring NO2_Cent14, replace
destring NO2_Cent15, replace
destring NO2_Cent16, replace
destring NO2_Cent17, replace
destring NO2_Cent18, replace
destring NO2_Cent19, replace




*Generamos una variable centrada en el frontera. EN este caso en el día 248 ( 31 de marzo 2020) * 

gen Diasalin= Day-248

*Podemos ver la gráfica.*
scatter Diasalin Day


//*Ahora vamos a generar una variable Binaria con 1 cuando es mayor a 233 (es, decir todos
*los dias posteriores al confinamiento) y 0 cuando es menor (antes del confinamiento)*

gen Dias_menos248= .

replace Dias_menos248= 0 if Day < 248
replace Dias_menos248= 1 if Day >= 248

*y luego generamos una variable ventana. "Banwith" *

gen ventana=abs(Day-248)

*Lo podemos ver en la gráfica *
scatter ventana Day

scatter ventana Diasalin


*Ahora tratamos de estimar lo porpuesto en la TESIS*  Al final es lo mismo solo paraa que salgan con los nombres de las variables de la tesis. 

*Empezamos haciendo un gráfcio de discontinuidad y que muestre las regresiones

*CO*
scatter CO_Cent19 Diasalin if Day >=159 & Day <=314 || lfit CO_Cent19 Diasalin if Day >=159 & Day <=248 || lfit CO_Cent19 Diasalin if Day >=248 & Day <=314


*NO*
scatter NO2_Cent19 Diasalin if Day >=159 & Day <=314 || lfit NO2_Cent19 Diasalin if Day >=159 & Day <=248 || lfit NO2_Cent19 Diasalin if Day >=248 & Day <=314


*PM10_Cent12*
scatter PM10_Cent19 Diasalin if Day >=159 & Day <=314 || lfit PM10_Cent19 Diasalin if Day >=159 & Day <=248 || lfit PM10_Cent19 Diasalin if Day >=248 & Day <=314


*Luego realizamos las regresiones

* CO

*dias en Funcion lineal 
reg CO_Cent19 c.Dias_menos248##c.DayssincestateOrder_31 i.DayoftheWeek if ventana <= 60
*dias en Funcion cuadrática 
reg CO_Cent19 c.Dias_menos248##c.DayssincestateOrder_31##c.DayssincestateOrder_31 i.DayoftheWeek if ventana <= 60



* NO

*dias en Funcion lineal
reg NO2_Cent19 c.Dias_menos248##c.DayssincestateOrder_31 i.DayoftheWeek if ventana <= 60

*dias en Funcion cuadrática 
reg NO2_Cent19 c.Dias_menos248##c.DayssincestateOrder_31##c.DayssincestateOrder_31 i.DayoftheWeek if ventana <= 60

* Particulas

*dias en Funcion lineal
reg PM10_Cent19 c.Dias_menos248##c.DayssincestateOrder_31 i.DayoftheWeek if ventana <= 60
*dias en Funcion cuadrática 
reg PM10_Cent19 c.Dias_menos248##c.DayssincestateOrder_31##c.DayssincestateOrder_31 i.DayoftheWeek if ventana <= 60




* Modleo de la Tesis RD DID

*Tla gráfica esta al inicio porque necesitabamos tener a la serie en dos (una 2019 y otra 2020)*

*CO

reg CO_Cent19 c.Year2020##c.PostLockdown_31##c.Days i.DayoftheWeek
reg CO_Cent19 c.Year2020##c.PostLockdown_31##c.Days##c.Days i.DayoftheWeek

*NO
reg NO2_Cent19 c.Year2020##c.PostLockdown_31##c.Days i.DayoftheWeek
reg NO2_Cent19 c.Year2020##c.PostLockdown_31##c.Days##c.Days i.DayoftheWeek

* Particulas
reg PM10_Cent19 c.Year2020##c.PostLockdown_31##c.Days i.DayoftheWeek
reg PM10_Cent19 c.Year2020##c.PostLockdown_31##c.Days##c.Days i.DayoftheWeek








