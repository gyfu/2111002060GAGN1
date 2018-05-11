USE 2111002060_lokaverk2;


#1:
/*
SELECT lag.heiti, utgefandi.nafn, flytjandi.nafn
FROM lag
JOIN utgefandi ON lag.utgefandiID=utgefandi.utgefandi_ID
JOIN flytjandi ON lag.flytjandiID=flytjandi.flytjandi_ID
WHERE flytjandi.nafn = "BAAB"
*/
#2:
/*
SELECT notandalisti.heiti
FROM listalog
JOIN notandalisti ON listalog.listiID=notandalisti.listi_ID
JOIN lag ON listalog.lagID=lag.lag_ID
WHERE lag.heiti = "Dancing King"
*/
#3:
/*
SELECT lag.heiti, lag.lengd
FROM lag
JOIN tegund ON lag.tegundID=tegund.tegund_ID
WHERE tegund.nafn = "Pop"
*/
#4:
/*
SELECT CONVERT(lengd, TIME), utgafudagur
FROM lag
WHERE CONVERT(lengd, TIME) > "05:00:00"
*/
#5: -------ÞARF AÐ LAGA-------
/*
SELECT utgefandi.nafn, lag.heiti, COUNT(lag.lag_ID)
FROM listalog
JOIN lag ON listalog.lagID=lag.lag_ID
JOIN utgefandi ON lag.utgefandiID=utgefandi.utgefandi_ID
GROUP BY lag.heiti
ORDER BY COUNT(lag.lag_ID) DESC
*/
#6:
/*
SELECT notandi.nafn, notandalisti.heiti, notandalisti.stofndagur
FROM notandalisti
JOIN notandi ON notandalisti.notandiID=notandi.notandi_ID
*/
#7:
/*
SELECT lag.heiti, flytjandi.nafn, lag.lengd
FROM lag
JOIN flytjandi ON lag.flytjandiID=flytjandi.flytjandi_ID
ORDER BY lag.lengd DESC
LIMIT 5
*/
#8:
/*
SELECT tegund.nafn, COUNT(lag.lag_ID)
FROM lag
JOIN tegund on lag.tegundID=tegund.tegund_ID
GROUP BY tegund.nafn 
ORDER BY COUNT(lag.lag_ID) DESC
LIMIT 3
*/
#9:
/*
 SELECT notandi.nafn, COUNT(notandalisti.listi_ID)
 FROM notandalisti
 JOIN notandi on notandalisti.notandiID=notandi.notandi_ID
 GROUP BY notandi.nafn
 */
#10:
/*
SELECT heiti
FROM lag
WHERE heiti LIKE 'a%' AND heiti LIKE '%s%'
*/
#11:
/*
SELECT lag.heiti, utgefandi.nafn, RIGHT(lag.utgafudagur,4)
FROM lag
JOIN utgefandi ON lag.utgefandiID=utgefandi.utgefandi_ID
WHERE CONVERT(RIGHT(lag.utgafudagur, 4), UNSIGNED) < 2015
*/
#12: 
/*
SELECT AVG(lengd)
FROM lag
*/
#13:
/*
SELECT flytjandi.nafn, flytjandi.lysing, COUNT(lag.lag_ID)
FROM lag
JOIN flytjandi ON lag.flytjandiID=flytjandi.flytjandi_ID
GROUP BY flytjandi.flytjandi_ID
*/
#14:
/*
SELECT  flytjandi.nafn, COUNT(lag.lag_ID)
FROM lag
JOIN flytjandi ON lag.flytjandiID=flytjandi.flytjandi_ID
GROUP BY flytjandi.nafn
*/
#EIGIN FYRIRSPURNIR:
#1: Lög á lista röðuð
/*
SELECT notandalisti.heiti, lag.heiti, listalog.rod
FROM listalog
JOIN lag ON listalog.lagID=lag.lag_ID
JOIN notandalisti ON listalog.listiID=notandalisti.listi_ID
ORDER BY notandalisti.listi_ID
*/
#2: Sýna lög á lista og lengd laganna
/*
SELECT notandalisti.heiti, lag.heiti, lag.lengd, listalog.rod
FROM listalog
JOIN lag ON listalog.lagID=lag.lag_ID
JOIN notandalisti ON listalog.listiID=notandalisti.listi_ID
ORDER BY notandalisti.listi_ID
*/
#3: Sýna lengd playlista
/*
SELECT notandalisti.heiti, SUM(CONVERT(lag.lengd, TIME))
FROM listalog
JOIN lag ON listalog.lagID=lag.lag_ID
JOIN notandalisti ON listalog.listiID=notandalisti.listi_ID
GROUP BY notandalisti.listi_ID
*/
#4: Nafn lags, flytjanda, og útgefanda í playlista
/*
SELECT notandalisti.heiti,listalog.rod, lag.heiti,lag.lengd, flytjandi.nafn, utgefandi.nafn
FROM listalog
JOIN lag ON listalog.lagID=lag.lag_ID
JOIN notandalisti ON listalog.listiID=notandalisti.listi_ID
JOIN flytjandi ON lag.flytjandiID=flytjandi.flytjandi_ID
JOIN utgefandi ON lag.utgefandiID=utgefandi.utgefandi_ID
ORDER BY listalog.listalag_ID
*/
#5: Sýna öll lög á öllum lista notanda(huginn)
/*
SELECT notandalisti.heiti, lag.heiti, listalog.rod
FROM listalog
JOIN lag ON listalog.lagID=lag.lag_ID
JOIN notandalisti ON listalog.listiID=notandalisti.listi_ID
JOIN notandi ON notandalisti.notandiID=notandi.notandi_ID
WHERE notandi.nafn = "huginn"
ORDER BY listalog.listalag_ID
*/















