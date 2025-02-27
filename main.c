#include "stdio.h"
#include "stdlib.h"
#include "errno.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

extern int ft_strlen(char *str);
extern char *ft_strcpy(char *dst, char *src);
extern int ft_strcmp(char *s1, char *s2);
extern int ft_write(int fd, char *str, int len);
extern int ft_read(int fd, char *buf, int size_buf);
extern char *ft_strdup(char *str);
extern int ft_atoi_base(char *str, char *base);

int main()
{
    int tmp = ft_atoi_base("abcd+", "0123456789abcdef");
    printf ("return of atoi_base = %d\n", tmp);














//     char *str = "coucou";
//     char dst[10];

// // -------------------------------------------------------------------------------------------//

//     printf("------------length-string------------\n\n");

//     printf("Length of string : %d\n\n", ft_strlen(str));

// // -------------------------------------------------------------------------------------------//
//     printf("-------------copy-string-------------\n\n");
//     char *new_string = ft_strcpy(dst, str);
//     printf ("Dest after copy : %s\n\n", dst);
//     printf ("New string : %s\n\n", new_string);


// // -------------------------------------------------------------------------------------------//

//     printf("-------------comp-string-------------\n\n");

//     int res = ft_strcmp(dst, str);
//     if (res == 0)
//         printf ("Strings are the same, value of return : %d\n\n", res);
//     else 
//         printf ("Strings aren't the same, value of return : %d\n\n", res);
//     printf("Change dst[0] = 'a' :\n");
//     dst[0] = 'a';
//     res = ft_strcmp(dst, str);
//     if (res == 0)
//         printf ("Strings are the same, value of return : %d\n\n", res);
//     else 
//         printf ("Strings aren't the same, value of return : %d\n\n", res);

// // -------------------------------------------------------------------------------------------//

//     printf("--------------ft_write---------------\n\n");
//     res = ft_write(1, "write\n\n", 7);
//     printf("How much char where printed : %d\n\n", res);
    
//     printf ("Checking errno with bad file descriptor: \n");
//     res = ft_write(10, "write\n\n", 7);
//     perror("Error");

// // -------------------------------------------------------------------------------------------//

//     printf("\n\n--------------ft_read---------------\n\n");
//     char buf[1001];
//     int fd = open("testfile.txt", O_RDONLY);
//     res = ft_read(fd, buf, 1000);
//     buf[res] = '\0';
//     printf("How much char where printed : %d\n", res);
//     printf("buffer : %s\n", buf);
    
//     printf ("Checking errno with bad file descriptor: \n");
//     res = ft_read(10, "write\n\n", 7);
//     perror("Error");

// // -------------------------------------------------------------------------------------------//

//     printf("\n\n-------------ft_strdup--------------\n\n");
//     char *new_strdup = ft_strdup(buf);
//     printf("Copy buf = %s\n\n", new_strdup );
//     free(new_strdup);
}
