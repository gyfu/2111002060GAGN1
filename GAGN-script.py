import random   
def lag(skra):
        with open(skra, "w") as f:
                f.write("INSERT INTO lag VALUES")
                tonlistarmenn = ["Dancing King","Schoolbag on leg","Cash cash cash","Gerpi","Flýja","Útruninn","Young","Drugs","Choke","Speedy automobile","Ticket out of here","Body too young to be looking like this","Y","Legs don't work","Nice vest","Skeleton","Family","Dreams","Ice Techno Hip hop","Green collar","Late night obssession","Warpig","Serpent","Great Mexico","Skinny fists","Antlers","Rosey Island","Confession","Real Thing","Walk"]
                lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                for x in tonlistarmenn:
                        string = '(NULL,"{}","{}","{}","{}"),'.format(x,randomLengd(),lorem,randomDagsetning())
                        f.write(string)




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
lag("log.sql")

