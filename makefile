comgen: main.o Chars.o
	gcc main.o Chars.o -o comgen `pkg-config --libs gtk+-3.0`

main.o: main.c
	valac --pkg gtk+-3.0 -c main.c

Chars.o: Chars.c
	valac --pkg gtk+-3.0 -c Chars.c

main.c: main.vala
	valac -C --pkg gtk+-3.0 main.vala Chars.vala

Chars.c: Chars.vala
	valac -C --pkg gtk+-3.0 main.vala Chars.vala

clean:
	rm *.c *.o