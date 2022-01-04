# SETUP
# AUTHOR: Dalton "Joey" Hill
# This file generates directories and other files 
# for the  convenience of developers and students.

# NOTE; We're using multiple CD commands for easy tracking. 

echo "GENERATING FILE CABINET"

mkdir Desktop

# DOCUMENTS
mkdir Documents
cd Documents
	mkdir office
	cd office
		mkdir calc draw impress math writer
	cd ..
	mkdir programming
	cd programming
		mkdir assembly c cpp d forth go haskell ruby rust
	cd ..
	mkdir scripting
	cd scripting
		mkdir lua python shell
		cd shell
			mkdir bash dash fish zsh
		cd ..
	cd ..
	mkdir web
	cd web
		mkdir html
		cd html
			mkdir css html javascript media php
			cd media
				mkdir audio photo video
				cd audio
					mkdir flac mp3 ogg
				cd ..
				cd photo
					mkdir gif jpeg png svg
				cd ..
				cd video
					mkdir mp4 ogv webm
				cd ..
			cd ..
		cd ..
	cd ..
cd ..

# DOWNLOADS
mkdir Downloads
cd Downloads
	mkdir 7zip iso other tarball zip
cd ..

# MUSIC
mkdir Music
cd Music
	mkdir aup flac mp3 ogg
	# You will need to create directories for each band or artist yourself. We don't know who you listen to or what file format you may download as.  
cd ..

mkdir Pictures
cd Pictures
	mkdir gif jpeg png svg wallpapers xcf
		cd png
			mkdir screenshot
		cd ..
cd ..

# TEMPLATES
mkdir Templates
cd Templates
	# PROGRAMMNG DIRECTORY
	echo "WRITING TEMPLATES"

	mkdir PROGRAMMING
	cd PROGRAMMING
		mkdir A
		cd A
		touch ada.adb apl.apl assembly-n.asm
			echo "GENERATING ADA TEMPLATE"
			echo 'with Ada.Text_IO;' 				>> ada.adb
			echo '' 						>> ada.adb
			echo 'procedure Hello_World is' 			>> ada.adb
			echo 'begin' 						>> ada.adb
			echo '	Ada.Text_IO.Put_Line ("Hello, World!");' 	>> ada.adb
			echo 'end Hello_World;' 				>> ada.adb

			echo "GENERATING APL TEMPLATE" 				>> apl.apl
			echo "[]<-'Hello World!'" 				>> apl.apl

			echo "GENERATING ASSEMBLY TEMPLATE FOR NASM"
			echo 'global _start' 					>> assembly-n.asm
			echo '' 						>> assembly-n.asm
			echo 'section .text' 					>> assembly-n.asm
			echo '_start:' 						>> assembly-n.asm
			echo '	mov rax, 1	; write(' 			>> assembly-n.asm
			echo '	mov rdi, 1	;   STDOUT_FILENO,' 		>> assembly-n.asm
			echo '	mov rsi, msg	;   "Hello, World!\n",' 	>> assembly-n.asm
			echo '	mov rdx, msglen	;   sizeof("Hello, World!\n")' 	>> assembly-n.asm
			echo '	syscall		; );' 				>> assembly-n.asm
			echo '' 						>> assembly-n.asm
			echo '	mov rax, 60	; exit(' 			>> assembly-n.asm
			echo '	mov rdi, 0	;   EXIT_SUCCESS' 		>> assembly-n.asm
			echo '	syscall		; );' 				>> assembly-n.asm
			echo '' 						>> assembly-n.asm
			echo '	syscall		; );' 				>> assembly-n.asm
			echo 'section .rodata' 					>> assembly-n.asm
			echo '	msg: db "Hello, World!", 10' 			>> assembly-n.asm
			echo '	msglen: equ $ - msg' 				>> assembly-n.asm

		cd ..

		mkdir C
		cd C
		touch c.c c.h cobol.cbl cobol.cob cobol.cpy cpp.cpp cpp.hpp csharp.cs
			echo "GENERATING C TEMPLATE"
			echo '#include <stdio.h>' 				>> c.c
			echo '' 						>> c.c
			echo 'int main() {' 					>> c.c
			echo '	printf("Hello World!");' 			>> c.c
			echo '	return 0;' 					>> c.c
			echo '}' 						>> c.c

			echo "GENERATING C++ FILE"
			echo '#include <iostream>' 				>> cpp.cpp
			echo 'using namespace std;' 				>> cpp.cpp
			echo 'int main() {' 					>> cpp.cpp
			echo '	cout << "Hello, World!" << endl;' 		>> cpp.cpp
			echo '	return 0;' 					>> cpp.cpp
			echo '}' 						>> cpp.cpp

			echo "GENERATING COBOL TEMPLATE"
			echo 'IDENTIFICATION DIVISION.' 			>> cobol.cbl
			echo 'PROGRAM-ID. IDSAMPLE.' 				>> cobol.cbl
			echo 'ENVIRONMENT DIVISION.' 				>> cobol.cbl
			echo 'PROCEDURE DIVISION.' 				>> cobol.cbl
			echo "	DISPLAY 'HELLO WORLD'." 			>> cobol.cbl
			echo '	STOP RUN.' 					>> cobol.cbl



		cd ..

		mkdir D
		cd D
		touch d.d
			echo "GENERATING D TEMPLATE"
			echo 'import std.stdio;' 				>> d.d
			echo '' 						>> d.d
			echo 'void main()' 					>> d.d
			echo '{' 						>> d.d
			echo '	writefln("Hello, World!");' 			>> d.d
			echo '}' 						>> d.d
		cd ..

		mkdir F
		cd F
		touch f.f forth.fth fsharp.fs

			echo "GENERATING FORTH TEMPLATE"
			echo ' : HELLO  ( -- )  CR ." Hello, World!" ;' 	>> forth.fth

			echo "GENERATING F# TEMPLATE"
			echo '[<EntryPoint>]' 					>> fsharp.fs
			echo 'let main argv =' 					>> fsharp.fs
			echo '	printfn "Hello, World!"' 			>> fsharp.fs
			echo '	0' 						>> fsharp.fs


		cd ..

		mkdir G
		cd G
		touch golang.go
			echo "GENERATING GO TEMPLATE"
			echo 'package main' 					>> golang.go
			echo '' 						>> golang.go
			echo 'import "fmt"' 					>> golang.go
			echo '' 						>> golang.go
			echo 'func main() {' 					>> golang.go
			echo '	fmt.Println("Hello, World!")' 			>> golang.go
			echo '}' 						>> golang.go
		cd ..

		mkdir H
		cd H
		touch haskell.hs
			echo "GENERATING HASKELL TEMPLATE"
			echo 'main :: IO ()' 					>> haskell.hs
			echo 'main = putStrLn "Hello, World!"' 			>> haskell.hs
		cd ..

		mkdir J
		cd J
		touch java.class java.j java.jar java.jav java.java jsharp.jsl
			echo "GENERATING JAVA TEMPLATE"
			echo 'class HelloWorld {' 				>> java.jar
			echo '	public static void main(String[] args) {' 	>> java.jar
			echo '		System.out.println("Hello, World!");' 	>> java.jar
			echo '	}' 						>> java.jar
			echo '}' 						>> java.jar
		cd ..

		mkdir O
		cd O
		touch objective_c.m objective_c.M objective_c.mm oca.ml ocaml.mli
			echo "GENERATING OCAML TEMPLATE"
			echo 'print_string "Hello World\n"' 			>> oca.ml
		cd ..

		mkdir P
		cd P
		touch p.p prolog.pro
			echo "GENERATING PROLOG TEMPLATE"
			echo "write('Hello, World!')." 				>> prolog.pro
		cd ..

		mkdir R
		cd R
		touch r.r ruby.rb rust.rs
			echo 'print("Hello World!", quote=FALSE)' >> r.r

			echo "GENERATING RUBY TEMPLATE"
			echo 'puts "Hello, World!"' 				>> ruby.rb

			echo "GENERATING RUST TEMPLATE"
			echo 'fn main() {' 					>> rust.rs 
			echo '	println!("Hello, World!");' 			>> rust.rs 
			echo '}' 						>> rust.rs
		cd ..

		mkdir S
		cd S
		touch swift.swift swift.SWIFT
			echo "GENERATING SWIFT TEMPLATE"
			echo 'print("Hello, World!")' 				>> swift.swift
		cd ..

	cd .. 

	# CONFIGURATION DIRECTORY

	mkdir CONFIGURATION
	cd CONFIGURATION
		echo "GENERATING EMPTY CONFIGURATION FILES"
		touch configure.config json.json toml.toml yaml.yaml 

	cd ..

	# DOCUMENTS

	mkdir DOCUMENTS
	cd DOCUMENTS

		mkdir LIBRE
		cd LIBRE
			echo "GENERATING LIBRE OFFICE FILES"
			touch calc.ods draw.odg impress.odp math.odf writer.odt
		cd ..

		#mkdir MICROSOFT
		#cd MICROSOFT
		#touch 
		#cd .. 

		mkdir OTHER
		cd OTHER
		touch desktop.desktop svg.svg text.txt
			echo "GENERATING DESKTOP FILE"
			echo '[Desktop Entry]' 					>> desktop.desktop
			echo 'Version=1.0' 					>> desktop.desktop
			echo 'Type=Application' 				>> desktop.desktop
			echo 'Name=labelyourapp' 				>> desktop.desktop
			echo 'Comment=shortdescriptionhere' 			>> desktop.desktop
			echo 'Exec=appnamehere' 				>> desktop.desktop
			echo 'Icon=/path/to/file' 				>> desktop.desktop
			echo 'Path=' 						>> desktop.desktop
			echo 'Terminal=true/false' 				>> desktop.desktop
			echo 'StartupNotify=true/false' 			>> desktop.desktop
		cd ..

	cd ..

	mkdir SCRIPTING
	cd SCRIPTING

		mkdir L
		cd L
		touch lua.lua
			echo "GENERATING LUA TEMPLATE"
			echo 'print("Hello, World!")' 				>> lua.lua
		cd ..

		mkdir P
		cd P
		touch python.py
			echo "GENERATING PYTHON TEMPLATE"
			echo '#!/usr/bin/env python' 				>> python.py
			echo 'print "Hello, World"' 				>> python.py
		cd ..

		mkdir SHELL
		cd SHELL
		touch ba.sh da.sh fi.sh ion.sh nu.sh shell.sh z.sh 
			echo '#!/bin/bash' 					>> bash.sh
			echo 'echo "Hello, World!"' 				>> bash.sh

			echo '#!/bin/dash'					>> dash.sh
			echo 'echo "Hello, World!"'				>> dash.sh

			echo '#!/bin/fish'					>> fi.sh
			echo 'echo "Hello, World!"'				>> fi.sh

			echo '#!/bin/ion' >> 					ion.sh
			echo 'echo "Hello, World!' >> 				ion.sh

			echo '#!/bin/nu' 					>> nu.sh
			echo 'echo "Hello, World!"' 				>> nu.sh

			echo '#!/bin/shell' 					>> shell.sh
			echo 'echo "Hello, World!"' 				>> shell.sh

			echo '#!/bin/zsh' 					>> z.sh
			echo 'echo "Hello, World!"' 				>> z.sh
		cd ..
	cd ..

	# WEB

	mkdir WEB
	cd WEB

		touch css.css html.htm html.html javascript.js php.php sql.sql svg.svg webassemply.wasm
			echo "GENERATING EMPTY CSS FILE"
			echo '.class {' 					>> css.css
			echo '' 						>> css.css
			echo '}' 						>> css.css
			echo ''							>> css.css
			echo '#id {' 						>> css.css
			echo '' 						>> css.css
			echo '}' 						>> css.css

			echo "GENERATING HTML TEMPLATE"
			echo '<html>'						>> html.html
			echo '<head>'						>> html.html
			echo '</head>'						>> html.html
			echo '<body>'						>> html.html
			echo '<script src="Documents/web/html">' 		>> html.html
			echo '</script>'					>> html.html
			echo '<p>' 						>> html.html
			echo '</p>' 						>> html.html
			echo '</body>'						>> html.html
			echo '</html>'						>> html.html

			echo "GENERATING JAVASCRIPT TEMPLATE"
			echo 'alert( "Hello, world! I am a separate file." );' 	>> javascript.js

			echo "GENERATING PHP TEMPLATE"
			echo '<?php' 						>> php.php
			echo '	print("Hello, World!")' 			>> php.php
			echo '?>' 						>> php.php

			echo "GENERATING SVG TEMPLATE"
			echo "<svg>" 						>> svg.svg
			echo "</svg>" 						>> svg.svg
	cd ..
cd ..

# VIDEOS

mkdir Videos
cd Videos
	mkdir mp4 ogv webm
cd ..

echo "GENERATION COMPLETE"
