#include "libasm.h"

int main(void) {
    int fd = open("./libasm.h", O_RDONLY);
    char *buff = malloc(11);
    int ret = ft_read(-1, buff, 4);

    printf("%s\n", strerror(errno));
    printf("%s\n", buff);
    printf("%d\n", ret);

    ret = ft_write(1, "Hey Elfassi\n", 13);
    printf("%d\n", ret);

    return 0;
}