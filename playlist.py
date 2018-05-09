import random
def rod():
        r = random.randint(3, 10)
        return r
def listiID():
        pass
def lagID():
        val = random.randint(1,30)
        return val


35
30
def init(skra):
        with open(skra, "w") as f:
                f.write("INSERT INTO listalog VALUES")
                f.close
def main(skra):
        init(skra)
        with open(skra, "a") as f:
                tel = 0
                for n in range(35):
                        tel += 1
                        for x in range(rod()):
                                strengur = "(NULL,{},{},{}),\n".format(x+1, tel,lagID())
                                f.write(strengur)
main("playlists.txt")

template = "(NULL,{},{},{},{}),"
