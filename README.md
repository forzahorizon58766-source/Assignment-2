# Assignment-2
O.S

# Operating Systems Lab-5: Process Management & Compilation Pipeline

This repository demonstrates fundamental OS concepts including process creation, compilation workflow, and the roles of linkers and loaders in program execution.

## Contents Overview

- [Project Overview](#project-overview)
- [Setup Requirements](#setup-requirements)
  - [System Requirements](#system-requirements)
  - [Setup Instructions](#setup-instructions)
- [Running the Code](#running-the-code)
- [Programming Exercises](#programming-exercises)
  - [Part 1: fork() System Call](#part-1-fork-system-call)
  - [Part 5: Multi-File Linking](#part-5-multi-file-linking)
  - [Part 6: Dynamic Loading](#part-6-dynamic-loading)
- [Compilation Pipeline Explained](#compilation-pipeline-explained)
  - [Linker Overview](#linker-overview)
  - [Loader Overview](#loader-overview)
- [Compilation Instructions](#compilation-instructions)
- [Project License](#project-license)

## Project Overview

Lab-5 explores core operating system concepts through practical C programming:
- Creating processes with the fork() system call
- Multi-stage compilation from source to executable
- Linker functionality in resolving symbols across files
- Loader's role in preparing programs for execution
- Automated builds using Makefiles

## Setup Requirements

### System Requirements

You'll need the following tools:
- **GCC Compiler**: For compiling C source code
- **Unix-like OS**: Programs rely on POSIX APIs

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

## Programming Exercises

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

**Functionality:**
- Displays a message and exits
- Use with `ldd` to inspect loaded libraries

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

**Core Tasks:**
1. **Symbol Matching**: Links function calls to their definitions throughout the codebase
2. **Address Finalization**: Assigns actual memory addresses to all code and data
3. **Library Connection**: Integrates required external libraries
4. **Error Reporting**: Flags unresolved or conflicting symbols

**Illustration:** The files file1.c and file2.c compile to separate objects. The linker combines them and resolves file2.c's reference to hello() by connecting it to file1.c's definition.

### Loader Overview

The loader is the OS subsystem that brings programs from disk into executing memory.

**Core Tasks:**
1. **Memory Allocation**: Reads executables and allocates appropriate memory space
2. **Library Loading**: Brings in shared libraries the program needs
3. **Address Fixup**: Adjusts addresses based on actual load location
4. **Startup Configuration**: Prepares stack, arguments, and environment before execution

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

---

**Developer:** OS Lab Assignment  
**Subject Area:** Operating Systems & System Programming  
**Objective:** Hands-on exploration of process management and compilation
