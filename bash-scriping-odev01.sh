echo "Welcome to my Bash"
echo "Enter file name:"
read name
touch $name.txt
date
echo "Dosyanin icine ne girmek icin Enter basiniz : "
read content
nano $name.txt
deger=""
loop="0"
if [[ -e $name.txt ]]; then
	echo ""
	echo "Durum : Mevcut"
	if [[ -f $name.txt ]]; then
		echo "Turu : Dosya"
		if [[ -s $name.txt ]]; then
			deger=$(<$name.txt)
			echo "Dosya icerigi (Dolu): $deger"
			loop="0"
			while [[ $loop != "1" ]]; do
				echo ""
				echo "Tercih yapiniz:"
				echo "0. Dosyaya icerik ekle"
				echo "1. Programi kapat"
				echo "Tercih : "
				read loop
				clear
				case $loop in
					"0")
						echo "Icerik degistirmek icin Enter'a basiniz : "
						read degisim
						nano $name.txt
						echo "Son tablo :"
						echo "Durum : Mevcut"
						echo "Turu : Dosya"
						deger=$(<$name.txt)
						echo "Dosya icerigi (Dolu): $deger"
					;;
					"1")
						echo "Son tablo :"
						echo "Durum : Mevcut"
						echo "Turu : Dosya"
						deger=$(<$name.txt)
						echo "Dosya icerigi (Dolu): $deger"
						echo "Program kapaniyor..."
					;;
				esac
			done
		else
			echo "Dosya icerigi (Bos) :"
		fi
	elif [[ -d $name.txt ]]; then
		echo "Turu : Klasor"
	else
		echo "Turu : None"
	fi
else
	echo "Durum : Yok"
fi