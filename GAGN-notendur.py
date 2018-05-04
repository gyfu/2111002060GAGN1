import random
def skraNotanda(skra):
        with open(skra, "w") as f:
                nofn = {"Huginn":"Kleppur","Alma":"Breiðholt","Valborg":"Kópavogur","Jon":"Laugardalur","Ingi":"Hafnarfjörður","Gunnar":"Akureyri","Benedikt":"Akranes"}
                for x,y in nofn.items():
                        strengur = '("{}","{}","{}","{}"),'.format(x,faedingardag(),netfang(x),y)
                        f.write(strengur)

def netfang(nafn):
        netfang = "{}@{}.is".format(nafn,nafn)
        return netfang
def faedingardag():
        ar = str(random.randint(1900, 2018))
        manud = str(random.randint(1, 12))
        if len(manud) == 1:
                manud = "0" + manud
        dag = str(random.randint(1, 31))
        if len(dag) == 1:
                dag = "0" + dag
        dagsetning = dag + manud + ar
        return dagsetning        

skraNotanda("notendur.txt")
