# SETUP
# AUTHOR: Dalton "Joey" Hill
# This file generates directories and other files 
# for the convenience of developers and students.

echo "GENERATING FILE CABINET"

mkdir Desktop

# DOCUMENTS
# Create the Documents directory along with the subdirectories.
mkdir -p Documents/office/{calc,draw,impress,math,writer}
# Create the programming directory along with the subdirectories.
mkdir -p programming/{assembly,c,cpp,d,forth,go,haskell,ruby,rust}
# Create the scripting directory along with the subdirectories.
mkdir -p scripting/{lua,python,shell/{bash,dash,fish,zsh}}
# Create the web directory along with the subdirectories.
mkdir -p web/html/{css,html,javascript,media/{audio/{flac,mp3,ogg},photo/{gif,jpeg,png,svg},video/{mp4,ogv,webm}},php}

# DOWNLOADS
mkdir -p Downloads/{7zip,iso,other,tarball,zip}

# MUSIC
# You will need to create directories for each band or artist yourself. We don't know who you listen to or what file format you may download as.  
mkdir -p Music/{aup,flac,mp3,ogg}

# PICTURES
mkdir -p Pictures/{gif,jpeg,png/screenshot,svg,wallpapers,xcf}

# TEMPLATES
mkdir -p Templates/{CONFIGURATION,DOCUMENTS/{LIBRE,OTHER},PROGRAMMING/{A,C,D,F,G,H,J,O,P,R,S},SCRIPTING/{L,P,SHELL},WEB}
echo "WRITING TEMPLATES"

printf "GENERATING ADA TEMPLATE\n"
printf "Text_IO;\n\n\
	procedure Hello_World is\n\
	begin\n\
		Ada.Text_IO.Put_Line ('Hello, World!');\n\
	end Hello_World;\n" > Templates/PROGRAMMING/A/ada.adb

printf "GENERATING APL TEMPLATE\n"
printf "[]<-'Hello World!'\n" > Templates/PROGRAMMING/A/apl.apl

printf "GENERATING ASSEMBLY TEMPLATE FOR NASM\n"
printf "global _start\n\n\
	section .text
	_start:
		mov rax, 1	; write(\n\
		mov rdi, 1	;   STDOUT_FILENO,\n\
		mov rsi, msg	;   'Hello, World!\n',\n\
		mov rdx, msglen	;   sizeof('Hello, World!\n')\n\
		syscall		; );\n\n\
		mov rax, 60	; exit(\n\
		mov rdi, 0	;   EXIT_SUCCESS\n\
		syscall		; );\n\n\
		syscall		; );\n\
	section .rodata\n\
		msg: db 'Hello, World!', 10\n\
		msglen: equ $ - msg" > Templates/PROGRAMMING/A/assembly-n.asm

printf "GENERATING C TEMPLATE\n"
printf "#include <stdio.h>\n\n\
	int main() {\n\
		printf(\"Hello World!\");\n\
		return 0;\n\
	}" > Templates/PROGRAMMING/C/c.c

printf "GENERATING C++ FILE\n"
printf "#include <iostream>\n\n\
	int main() {\n\
		std::cout << \"Hello, World!\" << std::endl;\n\
		return 0;\n\
	}" > Templates/PROGRAMMING/C/cpp.cpp

printf "GENERATING COBOL TEMPLATE\n"
printf "IDENTIFICATION DIVISION.\n\
	PROGRAM-ID. IDSAMPLE.\n\
	ENVIRONMENT DIVISION.\n\
	PROCEDURE DIVISION.\n\
		DISPLAY \"HELLO WORLD\".\n\
		STOP RUN." > Templates/PROGRAMMING/C/cobol.cbl

printf "GENERATING D TEMPLATE\n"
printf "import std.stdio;\n\n\
	void main() {\n\
		writefln(\"Hello, World!\");\n\
	}" > Templates/PROGRAMMING/D/d.d

printf "GENERATING FORTH TEMPLATE\m"
printf " : HELLO  ( -- )  CR .\" Hello, World!\" ;\n" > Templates/PROGRAMMING/F/forth.fth

printf "GENERATING F# TEMPLATE\n"
printf "[<EntryPoint>]\n\
	let main argv =\n\
		printfn \"Hello, World!\"\n\
		0" > Templates/PROGRAMMING/F/fsharp.fs

printf "GENERATING GO TEMPLATE\n"
printf "package main\n\n\
	import 'fmt'\n\n\
	func main() {\n\
		fmt.Println(\"Hello, World!\")\n\
	}" > Templates/PROGRAMMING/G/golang.go

printf "GENERATING HASKELL TEMPLATE\n"
printf "main :: IO ()\n\
	main = putStrLn \"Hello, World!\"" > Templates/PROGRAMMING/H/haskell.hs

printf "GENERATING JAVA TEMPLATE\n"
printf "class HelloWorld {\n\
		public static void main(String[] args) {\n\
			System.out.println(\"Hello, World!\");\n\
		}\n\
	}" > Templates/PROGRAMMING/J/java.jar

printf "GENERATING OCAML TEMPLATE\n"
printf "print_string \"Hello World\n\"" > Templates/PROGRAMMING/O/oca.ml

printf "GENERATING PROLOG TEMPLATE\n"
printf "write(\"Hello, World!\")." > Templates/PROGRAMMING/P/prolog.pro

printf "GENERATING R TEMPLATE\n"
printf "print(\"Hello World!\", quote=FALSE)" > Templates/PROGRAMMING/R/r.r

printf "GENERATING RUBY TEMPLATE\n"
printf "puts \"Hello, World!\"" > Templates/PROGRAMMING/R/ruby.rb

printf "GENERATING RUST TEMPLATE\n"
printf "fn main() {\n\
		println!(\"Hello, World!\");\n\
	}" > Templates/PROGRAMMING/R/rust.rs

printf "GENERATING SWIFT TEMPLATE\n"
printf "print(\"Hello, World!\")" > Templates/PROGRAMMING/S/swift.swift


# CONFIGURATION DIRECTORY
printf "GENERATING EMPTY CONFIGURATION FILES\n"
touch Templates/CONFIGURATION/{configure.config,json.json,toml.toml,yaml.yaml}


# DOCUMENTS
printf "GENERATING LIBRE OFFICE FILES\n"
touch Templates/DOCUMENTS/LIBRE/{calc.ods,draw.odg,impress.odp,math.odf,writer.odt}

printf "GENERATING DESKTOP FILE\n"
printf "[Desktop Entry]\n\
	Version=1.0\n\
	Type=Application\n\
	Name=labelyourapp\n\
	Comment=shortdescriptionhere\n\
	Exec=appnamehere\n\
	Icon=/path/to/file\n\
	Path=\n\
	Terminal=true/false\n\
	StartupNotify=true/false" > Templates/DOCUMENTS/OTHER/desktop.desktop

printf "GENERATING LUA TEMPLATE\n"
printf "print('Hello, World!')" > Templates/SCRIPTING/L/lua.lua

printf "GENERATING PYTHON TEMPLATE\n"
printf "#!/usr/bin/env python\n\
	print \"Hello, World\"" > Templates/SCRIPTING/P/python.py

printf "GENERATING VARIOUS SHELL SCRIPT TEMPLATES\n"

printf "#!/bin/bash\n\
	printf 'Hello, World!\n'" > Templates/SCRIPTING/SHELL/bash.sh

printf "#!/bin/dash\n\
	echo 'Hello, World!'" > Templates/SCRIPTING/SHELL/dash.sh

printf "#!/bin/fish\n\
	echo 'Hello, World!'" > Templates/SCRIPTING/SHELL/fish.sh

printf "#!/bin/ion\n\
	echo 'Hello, World!'" > Templates/SCRIPTING/SHELL/ion.sh

printf "#!/bin/nu\n\
	echo 'Hello, World!'" > Templates/SCRIPTING/SHELL/nu.sh

printf "#!/bin/zsh\n\
	echo 'Hello, World!'" > Templates/SCRIPTING/SHELL/z.sh

# WEB
printf "GENERATING EMPTY CSS FILE\n"
printf ".class {\n\n\
        }\n\n\
	#id {\n\n\
	}" > Templates/WEB/css.css

printf "GENERATING HTML TEMPLATE\n"
printf "<html>\n\
	  <head>\n\
	  </head>\n\n\
	  <body>\n\
	    <script src='Documents/web/html'>\n\
	    </script>\n\
	    <p>\n\
	    </p>\n\
	  </body>\n\
	</html>" > Templates/WEB/html.html

printf "GENERATING JAVASCRIPT TEMPLATE\n"
printf "alert(\"Hello, world! I am a separate file.\");" > Templates/WEB/javascript.js

printf "GENERATING PHP TEMPLATE\n"
printf "<?php\n\
	  print(\"Hello, World!\")\n\
	?>" > Templates/WEB/php.php

# VIDEOS
mkdir -p Videos/{mp4,ogv,webm}

printf "GENERATION COMPLETE\n"
