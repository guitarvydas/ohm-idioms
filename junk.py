fc = lambda c: c
fb = lambda b: b
fa = lambda a: a

# def f ():
#     return (fc())(5)

#print (fa(3+fb(4+fc(5))))
print ( 3 + (lambda a: a) (4 + (lambda b: b)((lambda c: c)(5))) )
