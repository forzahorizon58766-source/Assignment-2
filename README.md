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

Demonstrates process duplication using fork(), showing how one program spawns a second independent process.

**Functionality:**
- Invokes fork() to duplicate the current process
- Parent and child each display their unique process identifiers
- Shows parallel execution of related processes

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

Illustrates separate compilation where the linker connects code across multiple files.

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

A basic program that demonstrates which libraries the OS loader brings into memory.


**Execute:**
```bash
./simple_program
ldd simple_program
```

**Sample Output:**
```
This is a simple program.
```

Running `ldd` reveals the dynamic libraries the loader will use.

## Compilation Pipeline Explained

### Linker Overview

The linker merges compiled object files into a working executable.



**Illustration:** The files file1.c and file2.c compile to separate objects. The linker combines them and resolves file2.c's reference to hello() by connecting it to file1.c's definition.

### Loader Overview

The loader is the OS subsystem that brings programs from disk into executing memory.


**Illustration:** Running `./simple_program` causes the loader to allocate memory, load dependencies (visible through ldd), and begin program execution.

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

