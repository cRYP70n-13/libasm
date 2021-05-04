#include "libasm.h"
#include <string.h>

int main(void) {
	int fd = open("./libasm.h", O_RDONLY);
	char *buff = malloc(11);
	int ret = ft_read(-1, buff, 4);
	int len = ft_strlen("Hey this is me Otmane Kimdil");
	int correctLen = strlen("Hey this is me Otmane Kimdil");
	const char *src = "Hello Otmane Kimdil";
	char *dst = malloc(20);

	char *res = ft_strcpy(dst, src);
	printf("Test STRCPY %s\n", res);
	printf("Test ERRNO %s\n", strerror(errno));
	printf("Test READ %s\n", buff);
	printf("Test WRITE %d\n", ret);
	printf("Test STRLEN %d\n", len);
	printf("Test STRLEN %d\n", correctLen);

	ret = ft_write(1, "Hey Elfassi\n", 13);
	printf("%d\n", ret);

	return 0;
}