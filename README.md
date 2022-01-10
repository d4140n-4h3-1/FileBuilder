# FileBuilder

This is essential for creating an organized file structure for developers and students. This is a great tool for personal Arch and Gentoo Linux builds. However, this will work on any Linux system. 

Templates will be especially useful for quick file creation. 

## Updates

Some major changes have been made. 

* Credits to contributors are listed as "USER _username_ ,", or "_first last_ (USER _username_)" if they so choose. 
* New directories have been added. 
* Directories **programming**, **scripting** and **web** have been moved inside **Documents/dev/**
* Shortcuts have been added. **${KEYWORD}** has been provided for better readability and to shorten some text. 
* Sections **basic.bas** and **oca.ml** have been fixed. They should be generated as intended
* The overall file is now more readable via XML after a several tweaks. 
* All remaining **echo**s have been replaced with **printf** as **printf** is guaranteed to be built within shells.
* **mkdir -p** has been shortened to **${MDR}**
* **Templates/PROGRAMMING**, **Templates/SCRIPTING**, **Templates/SCRIPTING/SHELL** and **Templates/WEB** have been shortened to **${TP}**, **${TS**}, **${TSS}** and **${TW}**

## Issues

The permanent issue is there is always room for new templates under Line 71, whether it's a script, program, or even a configuration file. 

Any scripting languages (such as Go) that can be compiled directly into binaries should take their place in **Templates/PROGRAMMING**. 
