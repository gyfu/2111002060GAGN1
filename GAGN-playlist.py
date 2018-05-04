import random
def playlist(skra):
        listi = heiti()
        with open(skra, "w") as f:
                f.write("INSERT INTO notandalisti VALUES\n")
                for x in listi:
                        strengur = '(NULL,"{}","{}"),'.format(x,randomDagsetning())
                        f.write(strengur)

                                

def heiti():
        listi = []
        tel = 0
        for n in range(25):
                tel += 1
                strengur = "playlist{}".format(tel)
                listi.append(strengur)
                if tel == 5:
                        tel = 0
        return listi

def randomDagsetning():
        ar = "2018"
        manud = str(random.randint(1, 12))
        if len(manud) == 1:
                manud = "0" + manud
        dag = str(random.randint(1, 31))
        if len(dag) == 1:
                dag = "0" + dag
        dagsetning = dag + manud + ar
        return dagsetning

playlist("playlist.txt")
