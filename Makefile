all: out/IntenseRPG.epub out/IntenseRPG.pdf out/IntenseRPG.docx html

out:
	mkdir -p out

clean:
	rm -rf out

out/IntenseRPG.epub: out
	pandoc -S --epub-metadata=pandoc/metadata.xml -o out/IntenseRPG.epub pandoc/title.txt \
		markdown/00_Introduction.md \
		markdown/01_Players_Notes.md \
		markdown/02_Story_Teller_Notes.md \
		markdown/03_Core_Rules.md \
		markdown/04_Skills.md \
		markdown/05_Yer_Stuff.md \
		markdown/06_Scary_Things.md

out/IntenseRPG.pdf: out
	pandoc -S -o out/IntenseRPG.pdf pandoc/title.txt \
		markdown/00_Introduction.md \
		markdown/01_Players_Notes.md \
		markdown/02_Story_Teller_Notes.md \
		markdown/03_Core_Rules.md \
		markdown/04_Skills.md \
		markdown/05_Yer_Stuff.md \
		markdown/06_Scary_Things.md

out/IntenseRPG.docx: out
	pandoc -S -o out/IntenseRPG.docx pandoc/title.txt \
		markdown/00_Introduction.md \
		markdown/01_Players_Notes.md \
		markdown/02_Story_Teller_Notes.md \
		markdown/03_Core_Rules.md \
		markdown/04_Skills.md \
		markdown/05_Yer_Stuff.md \
		markdown/06_Scary_Things.md

html: out/html/00_Introduction.html out/html/01_Players_Notes.html out/html/02_Story_Teller_Notes.html out/html/03_Core_Rules.html out/html/04_Skills.html out/html/05_Yer_Stuff.html out/html/06_Scary_Things.html

out/html:
	mkdir -p out/html

out/html/00_Introduction.html: out/html
	pandoc -s -S -c style.css -o out/html/00_Introduction.html pandoc/title.txt markdown/00_Introduction.md

out/html/01_Players_Notes.html: out/html
	pandoc -s -S -c style.css -o out/html/01_Players_Notes.html pandoc/title.txt markdown/01_Players_Notes.md

out/html/02_Story_Teller_Notes.html: out/html
	pandoc -s -S -c style.css -o out/html/02_Story_Teller_Notes.html pandoc/title.txt markdown/02_Story_Teller_Notes.md

out/html/03_Core_Rules.html: out/html
	pandoc -s -S -c style.css -o out/html/03_Core_Rules.html pandoc/title.txt markdown/03_Core_Rules.md

out/html/04_Skills.html: out/html
	pandoc -s -S -c style.css -o out/html/04_Skills.html pandoc/title.txt markdown/04_Skills.md

out/html/05_Yer_Stuff.html: out/html
	pandoc -s -S -c style.css -o out/html/05_Yer_Stuff.html pandoc/title.txt markdown/05_Yer_Stuff.md

out/html/06_Scary_Things.html: out/html
	pandoc -s -S -c style.css -o out/html/06_Scary_Things.html pandoc/title.txt markdown/06_Scary_Things.md

