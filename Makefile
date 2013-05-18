all: out/IntenseRPG.epub out/IntenseRPG.pdf out/IntenseRPG.docx

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

out/IntenseRPG.pdf:
	pandoc -S -o out/IntenseRPG.pdf pandoc/title.txt \
		markdown/00_Introduction.md \
		markdown/01_Players_Notes.md \
		markdown/02_Story_Teller_Notes.md \
		markdown/03_Core_Rules.md \
		markdown/04_Skills.md \
		markdown/05_Yer_Stuff.md \
		markdown/06_Scary_Things.md

out/IntenseRPG.docx:
	pandoc -S -o out/IntenseRPG.docx pandoc/title.txt \
		markdown/00_Introduction.md \
		markdown/01_Players_Notes.md \
		markdown/02_Story_Teller_Notes.md \
		markdown/03_Core_Rules.md \
		markdown/04_Skills.md \
		markdown/05_Yer_Stuff.md \
		markdown/06_Scary_Things.md

