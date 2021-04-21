#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <fcntl.h>
# include <stdlib.h>
# include <unistd.h>
# include <errno.h>
# include <string.h>

# define SYS_READ_MAC 0x2000003
# define SYS_WRITE_MAC 0x2000004

size_t		ft_strlen(const char *str);
char		*ft_strcpy(char *dest, char const *src);
int			ft_strcmp(char const *dst, char const *src);
ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
char 		*ft_strdup(const char *s1);

# endif