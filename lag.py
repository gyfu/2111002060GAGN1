import random
def randomLengd():
        randfyrr = random.randint(1, 10)
        randseinni = random.randint(0, 59)
        randfyrr = str(randfyrr)
        randseinni = str(randseinni)
        if len(randfyrr) == 1:
                randfyrr = "0" + randfyrr
        if len(randseinni) == 1:
                randseinni = "0" + randseinni
        return "{}:{}".format(randfyrr,randseinni)
def randomDagsetning():
        ar = str(random.randint(1970, 2018))
        manud = str(random.randint(1, 12))
        if len(manud) == 1:
                manud = "0" + manud
        dag = str(random.randint(1, 31))
        if len(dag) == 1:
                dag = "0" + dag
        dagsetning = dag + manud + ar
        return dagsetning
def skrifa(skra, tegund, utgefandi,flytjandi,nofn,leng,texta,dags):
        with open(skra, "a") as f:
                string = '(NULL,"{}","{}","{}","{}",{},{},{}),'.format(nofn,leng,texta,dags,tegund,utgefandi,flytjandi)
                f.write(string)
                f.close()
                
                

def main(skra):
        with open(skra, "w") as f:
                f.write("INSERT INTO lag VALUES")
        f.close()
        abba = ["Dancing King","Schoolbag on leg","Cash cash cash"]
        hatari = ["Gerpi","Flýja","Útruninn"]
        daughter = ["Young","Drugs","Choke"]
        tracy = ["Speedy automobile","Ticket out of here","Body too young to be looking like this"]
        ed = ["Y","Legs don't work","Nice vest"]
        cranberries = ["Skeleton","Family","Dreams"]
        moses = ["Ice Techno Hip hop","Green collar","Late night obssession"]
        destroy = ["Warpig","Serpent","Great Mexico"]
        emperor = ["Skinny fists","Antlers","Rosey Island"]
        fighters = ["Confession","Real Thing","Walk"]
        listamenn = [abba, hatari, daughter, tracy, ed, cranberries, moses, destroy, emperor, fighters]
        texti = "Lorem ipsum dolor sit amet."
        flytjandi = 0
        tel = 0
        utgef = 1
        for listi in listamenn:
                flytjandi += 1
                tel += 1
                if tel % 2 == 0:
                        utgef += 1
                        tel = 0
                for x in listi:
                        lengd = randomLengd()
                        utgafudagur = randomDagsetning()
                        skrifa(skra,1,utgef,flytjandi,x,lengd,texti,utgafudagur)














main("test.txt")
                        
