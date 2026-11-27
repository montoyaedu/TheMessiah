# Controllo di suonabilita' per due voci scritte in LilyPond semplice (altezze assolute, italiano).
import re, itertools
from fractions import Fraction as F
BASE={'do':0,'re':2,'mi':4,'fa':5,'sol':7,'la':9,'si':11}
TOK=re.compile(r"^(do|re|mi|fa|sol|la|si)(d|b)?([',]*)(\d+\.*)?(.*)$")
CORDE=[40,45,50,55,59,64]
def dur(d):
    b=F(1,int(d.rstrip('.'))); v=b; a=b
    for _ in range(d.count('.')): a/=2; v+=a
    return v
def parse(line):
    """ritorna lista di (inizio, durata, midi|None, testo)"""
    out=[]; t=F(0); cur='4'
    for tok in line.replace('|',' ').split():
        if tok.startswith('%'): break
        m=re.match(r"^([rs])(\d+\.*)?",tok)
        if m and not TOK.match(tok):
            if m.group(2): cur=m.group(2)
            out.append([t,dur(cur),None,tok]); t+=dur(cur); continue
        m=TOK.match(tok)
        if not m: raise SystemExit('token? '+tok)
        n,alt,marks,d,rest=m.groups()
        if d: cur=d
        midi=48+BASE[n]+(1 if alt=='d' else -1 if alt=='b' else 0)+12*(marks.count("'")-marks.count(","))
        out.append([t,dur(cur),midi,tok]); t+=dur(cur)
    return out,t
def posizioni(m):
    return [(s,m-o) for s,o in enumerate(CORDE) if 0<=m-o<=14]
def fattibile(a,b):
    for (s1,f1) in posizioni(a):
        for (s2,f2) in posizioni(b):
            if s1!=s2 and (f1==0 or f2==0 or abs(f1-f2)<=4): return True
    return False
def problemi(top,bas):
    P=[]
    for (t,d,m,_) in top+bas:
        pass
    istanti=sorted({e[0] for e in top+bas})
    for t in istanti:
        a=[e for e in top if e[0]<=t<e[0]+e[1] and e[2] is not None]
        b=[e for e in bas if e[0]<=t<e[0]+e[1] and e[2] is not None]
        for e in a+b:
            if not posizioni(e[2]): P.append((t,'fuori estensione',e[3]))
        if a and b:
            x,y=a[0][2],b[0][2]
            if y>x: P.append((t,'basso sopra il canto',a[0][3]+'/'+b[0][3]))
            elif y!=x and not fattibile(x,y): P.append((t,'non sta sotto le dita',a[0][3]+'/'+b[0][3]))
    return P
def sposta(line,ott):
    def f(tok):
        m=TOK.match(tok)
        if not m or re.match(r"^[rs]\d",tok): return tok
        n,alt,marks,d,rest=m.groups()
        k=marks.count("'")-marks.count(",")+ott
        return n+(alt or '')+("'"*k if k>0 else ","*(-k))+(d or '')+rest
    return ' '.join(f(t) for t in line.split())
