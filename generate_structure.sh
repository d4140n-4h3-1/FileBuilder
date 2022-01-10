#!/usr/bin/env bash
# SETUP
# AUTHOR: Dalton "Joey" Hill (USER d4140n-4h3-1)
# CONTRIBUTORS: USER Phate6660, 
# This file generates directories and other files 
# for the convenience of developers and students.

# PLEASE DO NOT EDIT ALREADY EXISTING SECTIONS 
# UNLESS ABSOLUTELY NECESSARY. 

# REFERENCE CODE
# echo -e "\e[1;41m USE THIS LINE IF THERE IS EVER AN ISSUE WITH A BLOCK OF CODE \e[0m"

# Check Mark Symbol "${tCYAN}☑${NC}"
# X Mark Symbol "${tRED} ☒ ${NC}"

tRED='\033[1;31m' # ${tRED}
bRED='\033[1;41m' # ${bRED}
tCYAN='\033[1;36m' # ${tCYAN}
NC='\033[0m' # ${NC} , No Color

EKO='echo -e' # ${EKO}

echo "GENERATING FILE CABINET"

if [ ! -d Desktop ]; then
	mkdir Desktop
	${EKO} "'Desktop' generated ${tCYAN}☑${NC} "
fi

# Create the Documents directory along with subdirectories
if [ ! -d Documents ]; then
	mkdir -p Documents/{dev/{programming/{ada,apl,assembly,basic,c,cobol,cpp,d,forth,fsharp,go,haskell,java,pascal,ocaml,prolog,r,ruby,rust,swift},scripting/{lua,python,shell/{bash,dash,fish,ion,nu,zsh}},web/html/{css,javascript,media/{audio/{flac,mp3,ogg},photo/{gif,jpeg,png,svg},video/{mp4,ogv,webm}},php}},office/{calc,draw,impress,math,writer}}
	${EKO} "'Documents' generated ${tCYAN}☑${NC}"
fi

# DOWNLOADS
if [ ! -d Downloads ]; then
	mkdir -p Downloads/{7zip,appimg,iso,other,package/{apk,deb,eopkg,rpm,tgz,txz,xbps,xz,zst},tarball,winexe,zip}
	${EKO} "'Downloads' generated ${tCYAN}☑${NC}"
fi

# MUSIC
# You will need to create directories for each band or artist yourself. We don't know who you listen to or what file format you may download as.  
if [ ! -d Music ]; then
	mkdir -p Music/{aup,flac,mp3,ogg}
	${EKO} "'Music' generated ${tCYAN}☑${NC}"
fi

# PICTURES
if [ ! -d Pictures ]; then
	mkdir -p Pictures/{gif,jpeg,png/screenshot,svg,wallpapers,xcf}
	${EKO} "'Pictures' generated ${tCYAN}☑${NC}"
fi

# TEMPLATES
if [ ! -d Templates ]; then
	mkdir -p Templates/{CONFIGURATION,DOCUMENTS/{LIBRE,OTHER},PROGRAMMING/{A,B,C,D,F,G,H,J,O,P,R,S},SCRIPTING/{L,P,SHELL},WEB}
	${EKO} "'Templates' generated ${tCYAN}☑${NC}"
fi

# VIDEOS
if [ ! -d Videos ]; then
	mkdir -p Videos/{mp4,ogv,webm}
	${EKO} "'Videos' generated ${tCYAN}☑${NC}"
fi

printf "WRITING TEMPLATES\n"

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
	
printf "GENERATING BASIC TEMPLATE\n"
printf '10 REM Hello World in BASIC
20 PRINT "Hello World!"' > Templates/PROGRAMMING/B/basic.bas

printf "GENERATING C TEMPLATE\n"
printf '#include <stdio.h>\n
int main() {
	printf("Hello World!");
	return 0;
}' > Templates/PROGRAMMING/C/c.c

printf "GENERATING C++ FILE\n"
printf '#include <iostream>\n
int main() {
	std::cout << "Hello, World!" << std::endl;
	return 0;
}' > Templates/PROGRAMMING/C/cpp.cpp

printf "GENERATING COBOL TEMPLATE\n"
printf 'IDENTIFICATION DIVISION.
PROGRAM-ID. IDSAMPLE.
ENVIRONMENT DIVISION.
PROCEDURE DIVISION.
	DISPLAY "HELLO WORLD".
	STOP RUN.' > Templates/PROGRAMMING/C/cobol.cbl

printf "GENERATING D TEMPLATE\n"
printf 'import std.stdio;\n
void main() {
	writefln(\"Hello, World!\");
}' > Templates/PROGRAMMING/D/d.d

printf "GENERATING FORTH TEMPLATE\n"
printf ' : HELLO  ( -- )  CR ." Hello, World!\" ;' > Templates/PROGRAMMING/F/forth.fth

printf "GENERATING F# TEMPLATE\n"
printf '[<EntryPoint>]\n
let main argv =
	printfn "Hello, World!"
	0' > Templates/PROGRAMMING/F/fsharp.fs

printf "GENERATING GO TEMPLATE\n"
printf 'package main\n
import "fmt"
func main() {
	fmt.Println("Hello, World!")
}' > Templates/PROGRAMMING/G/golang.go

printf "GENERATING HASKELL TEMPLATE\n"
printf 'main :: IO ()\n
main = putStrLn "Hello, World!"' > Templates/PROGRAMMING/H/haskell.hs

printf "GENERATING JAVA TEMPLATE\n"
printf 'class HelloWorld {
	public static void main(String[] args) {
		System.out.println("Hello, World!");
	}
}' > Templates/PROGRAMMING/J/java.jar

printf "GENERATING OCAML TEMPLATE\n"
printf 'print_string "Hello World"' > Templates/PROGRAMMING/O/oca.ml

printf "GENERATING PASCAL TEMPLATE\n"
printf "program Hello;\n
begin
	writeIn ('Hello, World!');
end" > Templates/PROGRAMMING/P/pascal.p

printf "GENERATING PROLOG TEMPLATE\n"
printf 'write("Hello, World!").' > Templates/PROGRAMMING/P/prolog.pro

printf "GENERATING R TEMPLATE\n"
printf 'print("Hello World!", quote=FALSE)' > Templates/PROGRAMMING/R/r.r

printf "GENERATING RUBY TEMPLATE\n"
printf 'puts "Hello, World!"' > Templates/PROGRAMMING/R/ruby.rb

printf "GENERATING RUST TEMPLATE\n"
printf 'fn main() {
	println!("Hello, World!");
}' > Templates/PROGRAMMING/R/rust.rs

printf "GENERATING SWIFT TEMPLATE\n"
printf 'print("Hello, World!")' > Templates/PROGRAMMING/S/swift.swift


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
printf '!/usr/bin/env python
print "Hello, World"'> Templates/SCRIPTING/P/python.py

printf "GENERATING VARIOUS SHELL SCRIPT TEMPLATES\n"

printf "#!/bin/bash\n\
echo 'Hello, World!'" > Templates/SCRIPTING/SHELL/bash.sh

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
		<script src='Documents/web/html' />\n\
		<p>\n\
		Hello, World! I am an HTML file.
		</p>\n\
	</body>\n\
</html>" > Templates/WEB/html.html

printf "GENERATING JAVASCRIPT TEMPLATE\n"
printf 'alert("Hello, world! I am a separate file.");' > Templates/WEB/javascript.js

printf "GENERATING PHP TEMPLATE\n"
printf '?php
	print(\"Hello, World!\")
?>'> Templates/WEB/php.php

printf "GENERATION COMPLETE\n"
