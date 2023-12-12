CXXFLAGS += -fopenmp
CXXFLAGS += -static

PROJECT = bin.riscv
SRCS = main.cpp

all: $(PROJECT) $(PROJECT).dump

$(PROJECT): $(SRCS)
	riscv32-unknown-linux-gnu-g++ $(CXXFLAGS) $^ -o $@

$(PROJECT).dump: $(PROJECT)
	riscv32-unknown-linux-gnu-objdump -d  $^ > $@

clean:
	rm -f $(PROJECT)
	rm -f $(PROJECT).dump