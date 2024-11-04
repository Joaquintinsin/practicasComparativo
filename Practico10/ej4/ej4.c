#include <stdio.h>
#include <unistd.h>/* por getpid() */
#include <sys/file.h>

#define N (2000)

int main(void)
{
    FILE * f ;
    int i, value;
    for (i=0; i<N; i++) {
        f = fopen("seqno.txt","r+");
        int fd = fileno(f);
        flock(fd, LOCK_EX);
        fscanf(f,"%d", &value);
        value++;
        rewind(f);
        fprintf(f,"%6d\n", value);
        fflush(f);
        printf("Process id: %d, value: %d\n", getpid(), value);
        fflush(stdout); /* forzar la escritura al archivo */
        fclose(f);
        flock(fd, LOCK_UN);
        sleep(2);

    }
}
