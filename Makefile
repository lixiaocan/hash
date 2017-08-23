
test: hash.c
	@$(CC) -std=c99 -DTEST_HASH $^ -o $@
	@./test

lib:hash.c
	$(CC) hash.c  -g -fPIC -shared -o libhash.so
clean:
	rm -f test libhash.so


.PHONY: test lib clean
