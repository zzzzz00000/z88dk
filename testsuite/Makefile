


SOURCES = $(wildcard *.c) $(wildcard zxn/*.c) $(wildcard rabbit/*.c) $(wildcard z180/*.c)
OUTPUT = $(SOURCES:.c=.opt)


all: $(OUTPUT)

z180/%.opt: z180/%.c
	zcc +test -mz180 -vn -a $^ -o $@
	@cat $@ | grep -v '^;' | grep -v MODULE > tmp.opt
	diff -w tmp.opt results/$@

zxn/%.opt: zxn/%.c
	zcc +test -custom-copt-rules=../lib/zxn_rules.1 -vn -a $^ -o $@
	@cat $@ | grep -v '^;'  | grep -v MODULE> tmp.opt
	diff -w tmp.opt results/$@

rabbit/%.opt: rabbit/%.c
	zcc +rcmx000 -vn -a $^ -o $@
	@cat $@ | grep -v '^;'  | grep -v MODULE> tmp.opt
	diff -w tmp.opt results/$@

%.opt:	%.c
	zcc +test -vn -a $^ -o $@
	@cat $@ | grep -v '^;'  | grep -v MODULE> tmp.opt
	diff -w tmp.opt results/$@
	

clean:
	$(RM) -f $(OUTPUT) tmp.opt zcc_opt.def
