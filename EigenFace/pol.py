file=open('read.txt','r')
s=file.read()
d=int(s)
d=d+1
r=open('read.txt','w')
r.write(str(d));
