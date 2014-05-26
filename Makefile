build = build

all: $(build)/Makefile
	cd $(build) && make 

$(build)/Makefile: ./src/CMakeLists.txt
	mkdir -p $(build) && cd $(build) && cmake ../src 

clean:
	$(MAKE) -C $(build) clean
	rm -rf $(build)
