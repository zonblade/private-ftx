def cekPrima(angka,c = 0):
	for x in range(1,angka):
		c=c+1 if (angka % x) == 0 else c
	return True if c == 1 and angka/1 == angka else False

def cekHasil():
	hasil = ''
	x = 0;
	while x < 50:
		hasil = str(hasil+','+str(x)) if not cekPrima(x) and not (int(x)/2).is_integer() else hasil
		x=x+1
	return hasil[1:]
print("cari bilangan ganjil non prima dibawah 50. Hasil:")
print(cekHasil())
