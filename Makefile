all: vmlinux.h bpf_target go_target

vmlinux.h:
	bpftool btf dump file /sys/kernel/btf/vmlinux format c > vmlinux.h

bpf_target: simple.bpf.c
	clang -g -O2 -c -target bpf -o simple.bpf.o simple.bpf.c

go_target: simple.bpf.o main.go
	CC=gcc CGO_CFLAGS="-I /opt/code/cpkg/libs/bpf" CGO_LDFLAGS="/opt/code/cpkg/libs/bpf/libbpf.a" go build -o libbpfgo-prog

clean:
	rm simple.bpf.o libbpfgo-prog
