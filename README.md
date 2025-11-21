# Assignment-2
O.S






### System Requirements

we need the following tools:
- **GCC Compiler**: For compiling C source code

Installing GCC on Debian-based systems:
```bash
sudo apt install gcc
```

### Setup Instructions

1. Get the repository:
```bash
git clone https://github.com/Homd11/assignment2.git
cd assignment2
```

2. Build everything:
```bash
make all
```

## Running the Code

### Build all executables
```bash
make all
```

### Execute all demos
```bash
make run
```

### Remove build artifacts
```bash
make clean
```

### Build specific targets
```bash
# Fork demonstration
make process_creation

# Linking demonstration
make output_program

# Loading demonstration
make simple_program
```

### Part 1: fork() System Call

**Source:** `process_creation.c`

**Execute:**
```bash
./process_creation
```

**Sample Output:**
```
This is the parent process. PID: [parent_id]
This is the child process. PID: [child_id]
```

### Part 5: Multi-File Linking

**Sources:** `file1.c`, `file2.c`

**Functionality:**
- `file1.c` implements the hello() function
- `file2.c` provides main() which invokes hello()
- Linker connects the function call to its implementation

**Execute:**
```bash
./output_program
```

**Sample Output:**
```
Hello from file1!
```

### Part 6: Dynamic Loading

**Source:** `simple_program.c`

**Execute:**
```bash
./simple_program
ldd simple_program
```

**Sample Output:**
```
This is a simple program.
```

## Compilation Pipeline Explained

### Linker Overview

The linker merges compiled object files into a working executable.


### Loader Overview

The loader is the OS subsystem that brings programs from disk into executing memory.


## Compilation Instructions

### Build all programs:
```bash
make all
```

### Run individual programs:
```bash
./process_creation
./output_program
./simple_program
```

### Inspect library dependencies:
```bash
ldd simple_program
```

## Project License

Licensed under the MIT License - refer to the [LICENSE](LICENSE) file for complete terms.

