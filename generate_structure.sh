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
# 

tRED='\033[1;31m' # ${tRED}
bRED='\033[1;41m' # ${bRED}
tCYAN='\033[1;36m' # ${tCYAN}
NC='\033[0m' # ${NC} , No Color

MDR='mkdir -p' # ${MDR}

printf "GENERATING FILE CABINET\n"

TP='Templates/PROGRAMMING' # ${TP}
TS='Templates/SCRIPTING' # ${TS}
TSS='Templates/SCRIPTING/SHELL' # ${TSS}
TW='Templates/WEB' #{TW}

if [ ! -d Desktop ]; then
	mkdir Desktop
	printf "'Desktop' generated ${tCYAN}☑${NC}\n"
fi

# Create the Documents directory along with subdirectories
if [ ! -d Documents ]; then
	${MDR} Documents/{dev/{programming/{ada,apl,assembly,basic,c,cobol,cpp,d,forth,fsharp,go,haskell,java,pascal,ocaml,prolog,r,ruby,rust,swift},scripting/{lua,python,shell/{bash,dash,fish,ion,nu,zsh}},web/html/{css,javascript,media/{audio/{flac,mp3,ogg},photo/{gif,jpeg,png,svg},video/{mp4,ogv,webm}},php}},office/{calc,draw,impress,math,writer}}
	printf "'Documents' generated ${tCYAN}☑${NC}\n"
fi

# DOWNLOADS
if [ ! -d Downloads ]; then
	${MDR} Downloads/{7zip,appimg,iso,other,package/{apk,deb,eopkg,rpm,tgz,txz,xbps,xz,zst},tarball,winexe,zip}
	printf "'Downloads' generated ${tCYAN}☑${NC}\n"
fi

# MUSIC
# You will need to create directories for each band or artist yourself. We don't know who you listen to or what file format you may download as.  
if [ ! -d Music ]; then
	${MDR} Music/{aup,flac,mp3,ogg}
	printf "'Music' generated ${tCYAN}☑${NC}\n"
fi

# PICTURES
if [ ! -d Pictures ]; then
	${MDR} Pictures/{gif,jpeg,png/screenshot,svg,wallpapers,xcf}
	printf "'Pictures' generated ${tCYAN}☑${NC}\n"
fi

# TEMPLATES
if [ ! -d Templates ]; then
	${MDR} Templates/{CONFIGURATION,DOCUMENTS/{LIBRE,OTHER},PROGRAMMING/{A,B,C,D,F,G,H,J,O,P,R,S},SCRIPTING/{L,P,SHELL},WEB}
	printf "'Templates' generated ${tCYAN}☑${NC}\n"
fi

# VIDEOS
if [ ! -d Videos ]; then
	${MDR} Videos/{mp4,ogv,webm}
	printf "'Videos' generated ${tCYAN}☑${NC}\n"
fi

printf "WRITING TEMPLATES\n"

printf "GENERATING ADA TEMPLATE\n"
printf "Text_IO;\n\n\
procedure Hello_World is\n\
begin\n\
	Ada.Text_IO.Put_Line ('Hello, World!');\n\
end Hello_World;\n" > ${TP}/A/ada.adb

printf "GENERATING APL TEMPLATE\n"
printf "[]<-'Hello World!'\n" > ${TP}/A/apl.apl

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
	msglen: equ $ - msg" > ${TP}/A/assembly-n.asm
	
printf "GENERATING BASIC TEMPLATE\n"
printf '10 REM Hello World in BASIC
20 PRINT "Hello World!"' > ${TP}/B/basic.bas

printf "GENERATING C TEMPLATE\n"
printf '#include <stdio.h>\n
int main() {
	printf("Hello World!");
	return 0;
}' > ${TP}/C/c.c

printf "GENERATING C++ FILE\n"
printf '#include <iostream>\n
int main() {
	std::cout << "Hello, World!" << std::endl;
	return 0;
}' > ${TP}/cpp.cpp

printf "GENERATING COBOL TEMPLATE\n"
printf 'IDENTIFICATION DIVISION.
PROGRAM-ID. IDSAMPLE.
ENVIRONMENT DIVISION.
PROCEDURE DIVISION.
	DISPLAY "HELLO WORLD".
	STOP RUN.' > ${TP}/C/cobol.cbl

printf "GENERATING D TEMPLATE\n"
printf 'import std.stdio;\n
void main() {
	writefln(\"Hello, World!\");
}' > ${TP}/D/d.d

printf "GENERATING FORTH TEMPLATE\n"
printf ' : HELLO  ( -- )  CR ." Hello, World!\" ;' > ${TP}/F/forth.fth

printf "GENERATING F# TEMPLATE\n"
printf '[<EntryPoint>]\n
let main argv =
	printfn "Hello, World!"
	0' > ${TP}/F/fsharp.fs

printf "GENERATING GO TEMPLATE\n"
printf 'package main\n
import "fmt"
func main() {
	fmt.Println("Hello, World!")
}' > ${TP}/G/golang.go

printf "GENERATING HASKELL TEMPLATE\n"
printf 'main :: IO ()\n
main = putStrLn "Hello, World!"' > ${TP}/H/haskell.hs

printf "GENERATING JAVA TEMPLATE\n"
printf 'class HelloWorld {
	public static void main(String[] args) {
		System.out.println("Hello, World!");
	}
}' > ${TP}/J/java.jar

printf "GENERATING OCAML TEMPLATE\n"
printf 'print_string "Hello World"' > ${TP}/O/oca.ml

printf "GENERATING PASCAL TEMPLATE\n"
printf "program Hello;\n
begin
	writeIn ('Hello, World!');
end" > ${TP}/P/pascal.p

printf "GENERATING PROLOG TEMPLATE\n"
printf 'write("Hello, World!").' > ${TP}/P/prolog.pro

printf "GENERATING R TEMPLATE\n"
printf 'print("Hello World!", quote=FALSE)' > ${TP}/R/r.r

printf "GENERATING RUBY TEMPLATE\n"
printf 'puts "Hello, World!"' > ${TP}/R/ruby.rb

printf "GENERATING RUST TEMPLATE\n"
printf 'fn main() {
	println!("Hello, World!");
}' > ${TP}/R/rust.rs

printf "GENERATING SWIFT TEMPLATE\n"
printf 'print("Hello, World!")' > ${TP}/S/swift.swift


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
printf "print('Hello, World!')" > ${TS}/L/lua.lua

printf "GENERATING PYTHON TEMPLATE\n"
printf '!/usr/bin/env python
print "Hello, World"'> ${TS}/P/python.py

printf "GENERATING VARIOUS SHELL SCRIPT TEMPLATES\n"

printf "#!/bin/bash\n\
printf 'Hello, World!'\n" > ${TSS}/bash.sh

printf "#!/bin/dash\n\
printf 'Hello, World!'\n" > ${TSS}/dash.sh

printf "#!/bin/fish\n\
printf 'Hello, World!'\n" > ${TSS}/fish.sh

printf "#!/bin/ion\n\
printf 'Hello, World!'\n" > ${TSS}/ion.sh

printf "#!/bin/nu\n\
printf 'Hello, World!'\n" > ${TSS}/nu.sh

printf "#!/bin/zsh\n\
printf 'Hello, World!'\n" > ${TSS}/z.sh

# WEB
printf "GENERATING EMPTY CSS FILE\n"
printf ".class {\n\n\
}\n\n\
#id {\n\n\
}" > ${TW}/css.css

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
</html>" > ${TW}/html.html

printf "GENERATING JAVASCRIPT TEMPLATE\n"
printf 'alert("Hello, world! I am a separate file.");' > ${TW}/javascript.js

printf "GENERATING PHP TEMPLATE\n"
printf '?php
	print(\"Hello, World!\")
?>'> ${TW}/php.php

printf "GENERATION COMPLETE\n"
