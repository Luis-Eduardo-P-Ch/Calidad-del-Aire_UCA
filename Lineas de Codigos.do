
*Análisis del efecto de las políticas de confinamiento social en los delitos de la ciudad de Buenos Aires, Argentina durante la pandemia del COVID-19 en 2020.*


*Resumen*

//Uno de los desafíos sanitarios más graves que ha enfrentado la humanidad es la//
// pandemia del COVID-19, situación en donde casi todos los países del mundo//
// implementaron severas restricciones de movilidad para ralentizar los contagios// 
//y por consecuencia los efectos mortales de la enfermedad infecciosa provocada//
//por el virus Sars-cov-2. Sin embargo, las medidas de confinamiento no solo// //contribuyeron a mitigar el virus, sino que también permitieron otros efectos.//
// Por tal motivo, en este estudio se investiga la relación entre la política de//
// confinamiento y los cambios en los niveles de contaminación del aire de la//
//ciudad de Buenos Aires-Argentina, un país de ingresos medios-bajos donde existe//
//poca evidencia sobre los efectos del confinamiento en la calidad del aire. Para//
//ello se utiliza un reporte oficial de emisión de monóxido de carbono, material//
//particulado respirable y dióxido de nitrógeno proporcionado por el laboratorio//
//ambiental de la ciudad entre enero de 2020 y mayo de 2020 en un marco de//
//análisis de series temporales interrumpidas. Los hallazgos de este estudio//
//revelen que los cambios en el comportamiento de la contaminación del aire se//
//vieron relacionados con la política de confinamiento implementada para//
//enfrentar la situación derivada de la pandemia del COVID-19.//



//Empezamos realizando las gráficas//

* gráfico (en diferencias) RD- DiD de las dos series en un mismo gráficco
clear

import excel "C:\Users\luedu\Desktop\Doctorado en Economia UCA\Tesis\Regresión Discontinua\Calidad del Aire 2da\Calidad del Aire Consolidado_Gráfico_en diferencias.xlsx", sheet("Hoja1") firstrow


destring PM10_Cent19_2019, replace
destring PM10_Cent19_2020, replace
destring NO2_Cent19_2019, replace
destring NO2_Cent19_2020, replace


* hacemos el gráfico de emision CO

twoway (scatter CO_Cent18_2019 DayssincestateOrder) (scatter CO_Cent18_2020 DayssincestateOrder)


twoway (scatter CO_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=156 || lfit CO_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=79 || lfit CO_Cent19_2019 DayssincestateOrder if Day >=79 & Day <=157|| scatter CO_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=156 || lfit CO_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=79 || lfit CO_Cent19_2020 DayssincestateOrder if Day >=79 & Day <=157||)

 
* hacemos el gráfico de emision NO

twoway (scatter NO2_Cent19_2019 DayssincestateOrder) (scatter NO2_Cent19_2020 DayssincestateOrder)


twoway (scatter NO2_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=156 || lfit NO2_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=79 || lfit NO2_Cent19_2019 DayssincestateOrder if Day >=79 & Day <=157|| scatter NO2_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=156 || lfit NO2_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=79 || lfit NO2_Cent19_2020 DayssincestateOrder if Day >=79 & Day <=157||)
 

 * hacemos el gráfico de emision de pariculas

twoway (scatter PM10_Cent19_2019 DayssincestateOrder) (scatter PM10_Cent19_2020 DayssincestateOrder)

twoway (scatter PM10_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=156 || lfit PM10_Cent19_2019 DayssincestateOrder if Day >=1 & Day <=79 || lfit PM10_Cent19_2019 DayssincestateOrder if Day >=79 & Day <=157|| scatter PM10_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=156 || lfit PM10_Cent19_2020 DayssincestateOrder if Day >=1 & Day <=79 || lfit PM10_Cent19_2020 DayssincestateOrder if Day >=79 & Day <=157||)


 *Empiezo importando la Base de Datos..    
* Ahora empezamos con las estimaciones 


clear 

import excel "C:\Users\luedu\Desktop\Doctorado en Economia UCA\Tesis\Regresión Discontinua\Calidad del Aire 2da\Calidad del Aire Consolidado.xlsx", sheet("Hoja1") firstrow

des
sum

destring PM10_Cent19, replace

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



*Empezamos haciendo un gráfcio de discontinuidad y que muestre las regresiones

*CO*
scatter CO_Cent19 Diasalin if Day >=159 & Day <=314 || lfit CO_Cent19 Diasalin if Day >=159 & Day <=237 || lfit CO_Cent19 Diasalin if Day >=237 & Day <=314


*NO*
scatter NO2_Cent19 Diasalin if Day >=159 & Day <=314 || lfit NO2_Cent19 Diasalin if Day >=159 & Day <=237 || lfit NO2_Cent19 Diasalin if Day >=237 & Day <=314


*PM10_Cent12*
scatter PM10_Cent19 Diasalin if Day >=159 & Day <=314 || lfit PM10_Cent19 Diasalin if Day >=159 & Day <=237 || lfit PM10_Cent19 Diasalin if Day >=237 & Day <=314


*Luego realizamos las regresiones (RDit)




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



* Regresiones del Modelo  (RD- DiD) de la Tesis 



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

destring PM10_Cent19, replace

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



* Modelo de la Tesis RD DID

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

destring PM10_Cent19, replace

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




*Empezamos haciendo un gráfcio de discontinuidad y que muestre las regresiones

*CO*
scatter CO_Cent19 Diasalin if Day >=159 & Day <=314 || lfit CO_Cent19 Diasalin if Day >=159 & Day <=248 || lfit CO_Cent19 Diasalin if Day >=248 & Day <=314


*NO*
scatter NO2_Cent19 Diasalin if Day >=159 & Day <=314 || lfit NO2_Cent19 Diasalin if Day >=159 & Day <=248 || lfit NO2_Cent19 Diasalin if Day >=248 & Day <=314


*PM10_Cent12*
scatter PM10_Cent19 Diasalin if Day >=159 & Day <=314 || lfit PM10_Cent19 Diasalin if Day >=159 & Day <=248 || lfit PM10_Cent19 Diasalin if Day >=248 & Day <=314


*Luego realizamos las regresiones RDit

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








