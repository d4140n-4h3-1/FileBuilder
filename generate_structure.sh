echo "Generate structure"

mkdir Desktop Documents Downloads Music Pictures Templates Videos

cd Documents
	mkdir markdown office pdf programming scripting svg-roughdraft txt web
	cd office
		mkdir odf-math odg-draw odp-impress ods-calc odt-writer
	cd ../programming
		mkdir assembly c c++ crystal forth go haskell java lua objective-c ocaml parasail python ruby rust swift vala
	cd ../web
		mkdir css html javascript media php
		cd media
			mkdir audio photo video
			cd audio
				mkdir flac mp3 ogg
			cd ../photo
				mkdir gif jpeg png svg
			cd ../video
				mkdir mp4 webm

cd ../../../../Music
	mkdir flac mp3 ogg opus wav

cd ../Pictures
	mkdir jpeg png gif svg .icons # ICONS ARE MADE INVISIBLE SO THEY ARE NOT AN EYESORE FOR THE AVERAGE USER

cd ../Templates
	mkdir documents programming scripting web
	cd documents
		touch calc.ods draw.odg impress.odp math.odf pdf.pdf text.txt writer.odt
	cd ../programming
		touch assembly.asm c.c cpp.cpp golang.go c-header.h cpp-header.hpp haskell.hs java.class java.jar java.java objective-c.m objective-c.mm objective-c.M python.py r.r ruby.rb swift.swift swift.SWIFT
	cd ../scripting
		touch shell.sh
	cd ../web
		touch css.css html.html html.htm javascript.js php.php svg.svg

cd ../Videos
	mkdir mov mp4 ogg webm
