#ifndef __LIBASM_H__
# define __LIBASM_H__

# include <stdio.h>
# include <fcntl.h>
# include <stdlib.h>
# include <unistd.h>
# include <errno.h>
# include <string.h>

int			ft_strcmp(char const *dst, char const *src);
size_t		ft_strlen(const char *str);
ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
char 		*ft_strdup(const char *s1);
char		*ft_strcpy(char *dest, char const *src);

# endif