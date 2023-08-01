# libbpfgo-example

Check out selftests in libbpfgo for more (and more up-to-date) examples: [here](https://github.com/aquasecurity/libbpfgo/tree/main/selftest)

This is an example of writing a small program with [libbpfgo](https://github.com/aquasecurity/tracee/tree/main/libbpfgo), a Go wrapper for libbpf.

To build simply run `make` and run the resulting `libbpfgo-prog` binary.


## 环境
### OS Version
alibaba cloud linux 3.2 
Linux xxxxx 5.10.134-12.2.al8.x86_64 #1 SMP Thu Oct 27 10:07:15 CST 2022 x86_64 x86_64 x86_64 GNU/Linux

### libbpf version
```
mkdir -p /opt/code/cpkg/libs
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/opt/code/cpkg/libs
curl -o /opt/code/libbpf-1.0.1.tar.gz -L https://github.com/libbpf/libbpf/releases/tag/v1.0.1
tar -zxvf /opt/code/libbpf-1.0.1.tar.gz -C /opt/code/
make -C libbpf-1.0.1/src/
make install -C libbpf-1.0.1/src/
cp -frp libbpf-1.0.1/src/ /opt/code/cpkg/libs/bpf
```
