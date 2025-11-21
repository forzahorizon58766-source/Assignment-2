#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t process_id = fork();
    
    if (process_id == 0) {
        printf("This is the child process. PID: %d\n", getpid());
    } else if (process_id > 0) {
        printf("This is the parent process. PID: %d\n", getpid());
    } else {
        printf("Fork failed!\n");
    }
    
    return 0;
}
