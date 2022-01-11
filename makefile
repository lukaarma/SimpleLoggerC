liblogger.a: src/logger.c
	rmdir dist /s /q
	mkdir dist
	gcc -c $^ -o logger.o
	ar rsv $@ logger.o
	move $@ dist
	copy src\logger.h dist
	del logger.o
