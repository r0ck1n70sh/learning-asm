# Learning Assembly

## 1. Description
Following excellent tutorial [ASM_Tutor](https://asmtutor.com/).

## 2. Folder Structure
```
/
 |--- ReadMe.md
 |--- lesson1
 |   |--- example1.asm
 |   |--- ...
 |   +--- ReadMe.md
 |---...
 +--- lessonN
      |--- exampleN.asm
      |--- ...
      +--- ReadMe.md
```

## 3. Step to Compile & Run
Here, we're compiling (or assembling) `example.asm` file.
```bash
$ nasm -f elf example.asm
$ ld -m elf_i386 example.o -o example
```
Now executable linux file `example` is created, which we can run. 
```bash
$ ./example
Hello World!
```
