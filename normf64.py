import array
import sys
x=sys.stdin.read()
y=array.array('d',x)
m=max(y)
y=array.array('d',map(lambda z: z/m,y))
y.tofile(sys.stdout)
