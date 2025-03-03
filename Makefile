program: main.c 
	gcc main.c -o main.out -lm

clean:
	rm main

test: program
	bash test.sh
