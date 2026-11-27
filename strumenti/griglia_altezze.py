# grid.py img x0 x1 chiave(v|b) out k  : trova il rigo piu' in alto nella striscia e disegna la griglia
import sys, numpy as np
from PIL import Image, ImageDraw, ImageFont
src,x0,x1,y0,y1,clef,out,k=sys.argv[1],float(sys.argv[2]),float(sys.argv[3]),float(sys.argv[4]),float(sys.argv[5]),sys.argv[6],sys.argv[7],float(sys.argv[8])
im=Image.open(src); W,H=im.size
c=im.crop((int(W*x0),int(H*y0),int(W*x1),int(H*y1)))
a=np.array(c)<110; h,w=a.shape
def lines(sl):
    rows=sl.sum(axis=1); cand=[y for y in range(h) if rows[y]>0.6*sl.shape[1]]
    g=[]
    for y in cand:
        if g and y-g[-1][-1]<=3: g[-1].append(y)
        else: g.append([y])
    ly=[sum(x)/len(x) for x in g]
    for i in range(len(ly)-4):
        d=np.diff(ly[i:i+5])
        if d.min()>12 and d.max()/d.min()<1.3: return ly[i:i+5]
    return None
L=lines(a[:,:w//6]); R=lines(a[:,-w//6:]); print(out,'sx',L,'dx',R)
M=[float(v) for v in sys.argv[9].split(',')] if len(sys.argv)>9 else None
if L is None and R is None: L=[M[0]+i*26.1 for i in range(5)]; R=[M[1]+i*26.1 for i in range(5)]
if L is None: L=R
if R is None: R=L
sp=(L[4]-L[0])/4
c=c.convert('RGB').resize((int(w*k),int(h*k))); d=ImageDraw.Draw(c)
names=['do','re','mi','fa','sol','la','si']
f=ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf',int(9*k))
for st in range(-7,16):
    idx=(2+st) if clef=='v' else (4+st-7)
    o=(1+idx//7) if clef=='v' else idx//7
    lab=names[idx%7]+("'"*o if o>0 else ","*(-o))
    col=(230,0,0) if st%2 else (0,110,255)
    ya=(L[4]-st*sp/2)*k; yb=(R[4]-st*(R[4]-R[0])/8)*k
    d.line([(0,ya),(c.width,yb)],fill=col,width=1)
    d.text((2,ya-6*k),lab,fill=col,font=f); d.text((c.width-38*k,yb-6*k),lab,fill=col,font=f)
c.save(out); print(c.size)
