USE 2111002060_lokaverk2;

#1:
/*
SELECT lag.heiti, utgefandi.nafn, flytjandi.nafn
FROM lag
INNER JOIN utgefandi ON lag.utgefandiID=utgefandi.utgefandi_ID
INNER JOIN flytjandi ON lag.flytjandiID=flytjandi.flytjandi_ID
WHERE flytjandi.nafn = "BAAB"
*/
#2:
/*
SELECT notandalisti.heiti
FROM listalog
INNER JOIN notandalisti ON listalog.listiID=notandalisti.listi_ID
INNER JOIN lag ON listalog.lagID=lag.lag_ID
WHERE lag.heiti = "Dancing King"
/*
#3:
/*
SELECT lag.heiti, lag.lengd
FROM lag
INNER JOIN tegund ON lag.tegundID=tegund.tegund_ID
WHERE tegund.nafn = "Pop"
*/
#4:
/*
SELECT CONVERT(lengd, TIME) FROM lag
WHERE CONVERT(lengd, TIME) > "05:00:00"
*/
#5:
/*
SELECT utgefandi.nafn, lag.heiti, COUNT(lag.heiti)
FROM listalog 
INNER JOIN lag ON listalog.lagID=lag.lag_ID
INNER JOIN utgefandi ON lag.utgefandiID=utgefandi.utgefandi_ID
GROUP BY utgefandi.nafn, lag.heiti
ORDER BY COUNT(lag.heiti) DESC #--------------------------????????????????????
*/
#6:
/*
SELECT notandi.nafn, notandalisti.heiti, notandalisti.stofndagur
FROM notandalisti
JOIN notandi ON notandalisti.notandiID=notandi.notandi_ID
GROUP BY notandi.nafn
*/
#7:
/*
SELECT lag.heiti, flytjandi.nafn, lag.lengd
FROM lag
INNER JOIN flytjandi ON lag.flytjandiID=flytjandi.flytjandi_ID
ORDER BY lag.lengd DESC
LIMIT 5
*/
#8:
/*
SELECT lag.heiti, tegund.nafn
FROM lag
INNER JOIN tegund on lag.tegundID=tegund.tegund_ID
ORDER BY length(tegund.nafn) #-------------------------------????????????????? 
*/
#9:
 
#10:
/*
SELECT heiti
FROM lag
WHERE heiti LIKE 'a%' AND heiti LIKE '%s%'
*/
#11: - Breyta dagsetning format
#12: 
/*
SELECT AVG(lengd)
FROM lag
*/
#14:
/*
SELECT  flytjandi.nafn, COUNT(lag.lag_ID)
FROM lag
INNER JOIN flytjandi ON lag.flytjandiID=flytjandi.flytjandi_ID
GROUP BY flytjandi.nafn
*/








