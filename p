mtr = []

def mprint():
    for l in mtr:
        for n in l:
            if abs(n - int(n)) < 1.0e-9:
                print(int(n), end='\t')
            else:
                print(n, end='\t')
        print()

def read( file_name ):
    global mtr
    mtr = [[int(n) for n in l.split()] for l in open("C:\\Users\\USER\\Desktop\\matrix.txt")]
    mprint()

def swap(i, j):
    global mtr
    mtr[i], mtr[j] = mtr[j], mtr[i]
    mprint()

def mult(i, k):
    global mtr
    mtr[i] = [ n*k for n in mtr[i] ]
    mprint()

def sadd(i, j):
    global mtr
    mtr[i] = [ mtr[i][ii]+mtr[j][ii] for ii in range(len(mtr[i])) ]
    mprint()

def subt(i, j, k):
    global mtr
    mtr[i] = [ mtr[i][ii]- k*mtr[j][ii] for ii in range(len(mtr[i])) ]
    mprint()

read("matrix.txt")

swap(0, 2)

mult(1, 2)

sadd(0, 1)

subt(0, 2, 3)



