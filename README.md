<br/>
<p align="center">
  <a href="https://github.com/The-Intruder/C-Standard-Library-Extension-aka-Libft">
    <img src="https://cdn-icons-png.flaticon.com/512/2232/2232688.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">C Standard Library Extension <em>(Libft)</em></h3>

  <p align="center">
    A modest C library that provides a set of commonly used functions for string manipulation, memory allocation, and linked list operations. It serves as a helpful utility library for C programming.
    <br/>
    <br/>
    <a href="https://github.com/The-Intruder/C-Standard-Library-Extension-aka-Libft/issues">Report Bug</a>
    .
    <a href="https://github.com/The-Intruder/C-Standard-Library-Extension-aka-Libft/issues">Request Feature</a>
  </p>
</p>

<div align="center">
  <a  href="https://twitter.com/i_am_amine" target="_blank">
    <img  alt="Twitter Follow"  src="https://img.shields.io/twitter/follow/i_am_amine?style=social">
  </a>
  <img  src="https://img.shields.io/github/repo-size/The-Intruder/C-Standard-Library-Extension-aka-Libft"  alt="Repo Size">
  <img  src="https://img.shields.io/github/last-commit/The-Intruder/C-Standard-Library-Extension-aka-Libft"  alt="Last Commit">
  <img  src="https://img.shields.io/github/license/The-Intruder/C-Standard-Library-Extension-aka-Libft" alt="License" >
  <img  src="https://img.shields.io/badge/Made%20with-❤-1f425f.svg"  alt="made-with-love">
</div>

## Table Of Contents

- [Table Of Contents](#table-of-contents)
- [About The Project](#about-the-project)
- [Run Locally](#run-locally)
- [Functions Reference](#functions-reference)
- [Frequently Asked Questions (FAQ)](#frequently-asked-questions-faq)
    - [What is libft?](#what-is-libft)
    - [How do I use libft in my project?](#how-do-i-use-libft-in-my-project)
    - [How do I compile libft?](#how-do-i-compile-libft)
    - [Can I modify libft functions?](#can-i-modify-libft-functions)
    - [Where can I find documentation for libft functions?](#where-can-i-find-documentation-for-libft-functions)
    - [How do I contribute to libft?](#how-do-i-contribute-to-libft)
    - [Is libft compatible with different operating systems?](#is-libft-compatible-with-different-operating-systems)
    - [Can I use libft in commercial projects?](#can-i-use-libft-in-commercial-projects)
    - [Where can I find examples or tutorials on using libft?](#where-can-i-find-examples-or-tutorials-on-using-libft)
- [Contributing](#contributing)
  - [Creating A Pull Request](#creating-a-pull-request)
- [Ressources](#ressources)
- [License](#license)
- [Authors](#authors)
- [Acknowledgements](#acknowledgements)

## About The Project

The libft library contains many functions that are commonly used in C programming, such as string manipulation functions, memory allocation functions, and linked list manipulation functions, among others. The library provides a convenient way for C programmers to perform these operations without having to write the code from scratch every time.

It is designed to be lightweight and easy to use, with a simple interface that is consistent across all of its functions. It is also designed to be portable, so that it can be used on different platforms and operating systems.

In addition to the standard library functions, the libft library includes some more specialized functions that are useful in certain contexts, such as functions for parsing command line arguments, functions for handling binary data, and functions for working with file descriptors.

It is distributed under the permissive MIT license, which allows it to be used and modified freely by anyone. As a result, the library has been widely adopted and incorporated into many other open-source projects.

## Run Locally

Clone the project:

```bash
git clone https://github.com/The-Intruder/C-Standard-Library-Extension-aka-Libft.git libft
```

Go to the project directory:

```bash
cd libft
```

Compile the files into a `.a` archive file _(our library file)_:

```bash
make
```

Start using the archive file `libft.a` in your code by compiling it as the following:

```bash
cc  -Wall  -Werror  -Wextra  -L.  -lft  *.c  *.o
```

_**NOTE:** The `*.c` and the `*.o` represents your own files_

## Functions Reference

---

***ft_strlen:*** Calculates the length of a string.

```c
size_t ft_strlen(const char *s);
```

| Parameter | Type          | Description       |
| :-------- | :------------ | :---------------- |
| `s`       | `const char*` | The input string. |

---

***ft_memcpy:*** Copies a block of memory from one location to another.

```c
void *ft_memcpy(void *dst, const void *src, size_t n);
```

| Parameter | Type          | Description                        |
| :-------- | :------------ | :--------------------------------- |
| `dst`     | `void*`       | Pointer to the destination memory. |
| `src`     | `const void*` | Pointer to the source memory.      |
| `n`       | `size_t`      | Number of bytes to copy.           |

---

***ft_memmove:*** Copies a block of memory from one location to another, but handles

```c
void *ft_memmove(void *dst, const void *src, size_t len);
```

| Parameter | Type          | Description                        |
| :-------- | :------------ | :--------------------------------- |
| `dst`     | `void*`       | Pointer to the destination memory. |
| `src`     | `const void*` | Pointer to the source memory.      |
| `len`     | `size_t`      | Number of bytes to move.           |

---

***ft_memchr:*** Searches for a specific byte value in a block of memory.

```c
void *ft_memchr(const void *s, int c, size_t n);
```

| Parameter | Type          | Description                         |
| :-------- | :------------ | :---------------------------------- |
| `s`       | `const void*` | Pointer to the memory to search in. |
| `c`       | `int`         | Value to be found.                  |
| `n`       | `size_t`      | Number of bytes to search.          |

---

***ft_memset:*** Fills a block of memory with a specified byte value.

```c
void *ft_memset(void *b, int c, size_t len);
```

| Parameter | Type     | Description                   |
| :-------- | :------- | :---------------------------- |
| `b`       | `void*`  | Pointer to the memory to set. |
| `c`       | `int`    | Value to set.                 |
| `len`     | `size_t` | Number of bytes to set.       |

---

***ft_calloc:*** Allocates memory for an array and initializes it to zero.

```c
void *ft_calloc(size_t count, size_t size);
```

| Parameter | Type     | Description                     |
| :-------- | :------- | :------------------------------ |
| `count`   | `size_t` | Number of elements to allocate. |
| `size`    | `size_t` | Size of each element.           |

---

***ft_bzero:*** Sets a block of memory to zero.

```c
void ft_bzero(void *s, size_t n);
```

| Parameter | Type     | Description                        |
| :-------- | :------- | :--------------------------------- |
| `s`       | `void*`  | Pointer to the memory to zero out. |
| `n`       | `size_t` | Number of bytes to zero out.       |

---

***ft_strnstr:*** Finds the first occurrence of a substring within a string, up to a specified length.

```c
char *ft_strnstr(const char *haystack, const char *needle, size_t len);
```

| Parameter  | Type          | Description                             |
| :--------- | :------------ | :-------------------------------------- |
| `haystack` | `const char*` | The string to search in.                |
| `needle`   | `const char*` | The string to search for.               |
| `len`      | `size_t`      | Maximum number of characters to search. |

---

***ft_strcpy:*** Copies a string from one location to another.

```c
char *ft_strcpy(char *dest, const char *src);
```

| Parameter | Type          | Description                        |
| :-------- | :------------ | :--------------------------------- |
| `dest`    | `char*`       | Pointer to the destination string. |
| `src`     | `const char*` | Pointer to the source string.      |

---

***ft_strrchr:*** Finds the last occurrence of a character in a string.

```c
char *ft_strrchr(const char *s, int c);
```

| Parameter | Type          | Description                  |
| :-------- | :------------ | :--------------------------- |
| `s`       | `const char*` | The string to search in.     |
| `c`       | `int`         | The character to search for. |

---

***ft_strchr:*** Finds the first occurrence of a character in a string.

```c
char *ft_strchr(const char *s, int c);
```

| Parameter | Type          | Description                  |
| :-------- | :------------ | :--------------------------- |
| `s`       | `const char*` | The string to search in.     |
| `c`       | `int`         | The character to search for. |

---

***ft_strdup:*** Duplicates a string.

```c
char *ft_strdup(const char *src);
```

| Parameter | Type          | Description                     |
| :-------- | :------------ | :------------------------------ |
| `src`     | `const char*` | The source string to duplicate. |

---

***ft_isalpha:*** Checks if a character is alphabetic.

```c
int  ft_isalpha(int c);
```

| Parameter | Type  | Description             |
| :-------- | :---- | :---------------------- |
| `c`       | `int` | The character to check. |

---

***ft_isdigit:*** Checks if a character is a digit.

```c
int  ft_isdigit(int c);
```

| Parameter | Type  | Description             |
| :-------- | :---- | :---------------------- |
| `c`       | `int` | The character to check. |

---

***ft_isalnum:*** Checks if a character is alphanumeric.

```c
int  ft_isalnum(int c);
```

| Parameter | Type  | Description             |
| :-------- | :---- | :---------------------- |
| `c`       | `int` | The character to check. |

---

***ft_isascii:*** Checks if a character is an ASCII character.

```c
int  ft_isascii(int c);
```

| Parameter | Type  | Description             |
| :-------- | :---- | :---------------------- |
| `c`       | `int` | The character to check. |

---

***ft_isprint:*** Checks if a character is a printable character.

```c
int  ft_isprint(int c);
```

| Parameter | Type  | Description             |
| :-------- | :---- | :---------------------- |
| `c`       | `int` | The character to check. |

---

***ft_toupper:*** Converts a character to uppercase.

```c
int  ft_toupper(int c);
```

| Parameter | Type  | Description             |
| :-------- | :---- | :---------------------- |
| `c`       | `int` | The character to check. |

---

***ft_tolower:*** Converts a character to lowercase.

```c
int  ft_tolower(int c);
```

| Parameter | Type  | Description             |
| :-------- | :---- | :---------------------- |
| `c`       | `int` | The character to check. |

---

***ft_atoi:*** Converts a string to an integer.

```c
int  ft_atoi(const char *str);
```

| Parameter | Type          | Description                          |
| :-------- | :------------ | :----------------------------------- |
| `str`     | `const char*` | The string to convert to an integer. |

---

***ft_memcmp:*** Compares two blocks of memory.

```c
int  ft_memcmp(const void *s1, const void *s2, size_t n);
```

| Parameter | Type          | Description                              |
| :-------- | :------------ | :--------------------------------------- |
| `s1`      | `const char*` | The first string to compare.             |
| `s2`      | `const char*` | The second string to compare.            |
| `n`       | `size_t`      | Maximum number of characters to compare. |

---

***ft_strncmp:*** Compares two strings up to a specified length.

```c
int  ft_strncmp(const char *s1, const char *s2, size_t n);
```

| Parameter | Type          | Description                              |
| :-------- | :------------ | :--------------------------------------- |
| `s1`      | `const char*` | The first string to compare.             |
| `s2`      | `const char*` | The second string to compare.            |
| `n`       | `size_t`      | Maximum number of characters to compare. |

---

***ft_striteri:*** Applies a function to each character in a string, with its index as an argument.

```c
void ft_striteri(char *s, void (*f)(unsigned int, char*));
```

| Parameter | Type                            | Description                                                                                                                                  |
| :-------- | :------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------- |
| `s`       | `char*`                         | The string to iterate over.                                                                                                                  |
| `f`       | `void (*)(unsigned int, char*)` | Pointer to a function that takes an unsigned integer and a character as arguments. This function is called for each character in the string. |

---

***ft_putchar_fd:*** Writes a character to a file descriptor.

```c
void ft_putchar_fd(char c, int fd);
```

| Parameter | Type   | Description             |
| :-------- | :----- | :---------------------- |
| `c`       | `char` | The character to write. |
| `fd`      | `int`  | The file descriptor.    |

---

***ft_putstr_fd:*** Writes a string to a file descriptor.

```c
void ft_putstr_fd(char *s, int fd);
```

| Parameter | Type    | Description          |
| :-------- | :------ | :------------------- |
| `s`       | `char*` | The string to write. |
| `fd`      | `int`   | The file descriptor. |

---

***ft_putendl_fd:*** Writes a string followed by a newline character to a file descriptor.

```c
void ft_putendl_fd(char *s, int fd);
```

| Parameter | Type    | Description          |
| :-------- | :------ | :------------------- |
| `s`       | `char*` | The string to write. |
| `fd`      | `int`   | The file descriptor. |

---

***ft_putnbr_fd:*** Writes an integer to a file descriptor.

```c
void ft_putnbr_fd(int n, int fd);
```

| Parameter | Type  | Description           |
| :-------- | :---- | :-------------------- |
| `n`       | `int` | The integer to write. |
| `fd`      | `int` | The file descriptor.  |

---

***ft_substr:*** Extracts a substring from a string.

```c
char *ft_substr(char const *s, unsigned int start, size_t len);
```

| Parameter | Type           | Description                  |
| :-------- | :------------- | :--------------------------- |
| `s`       | `char*`        | The string to extract from.  |
| `start`   | `unsigned int` | The starting index.          |
| `len`     | `size_t`       | The length of the substring. |

---

***ft_strjoin:*** Concatenates two strings.

```c
char *ft_strjoin(char const *s1, char const *s2);
```

| Parameter | Type    | Description        |
| :-------- | :------ | :----------------- |
| `s1`      | `char*` | The first string.  |
| `s2`      | `char*` | The second string. |

---

***ft_strtrim:*** Removes leading and trailing whitespace from a string.

```c
char *ft_strtrim(char const *s1, char const *set);
```

| Parameter | Type    | Description                    |
| :-------- | :------ | :----------------------------- |
| `s1`      | `char*` | The string to trim.            |
| `set`     | `char*` | The set of characters to trim. |

---

***ft_split:*** Splits a string into an array of substrings based on a specified delimiter.

```c
char **ft_split(char const *s, char c);
```

| Parameter | Type    | Description              |
| :-------- | :------ | :----------------------- |
| `s`       | `char*` | The string to split.     |
| `c`       | `char`  | The delimiter character. |

---

***ft_itoa:*** Converts an integer to a string.

```c
char *ft_itoa(int n);
```

| Parameter | Type  | Description                         |
| :-------- | :---- | :---------------------------------- |
| `n`       | `int` | The integer to convert to a string. |

---

***ft_strmapi:*** Applies a function to each character in a string, with its index as an argument, and returns a new string.

```c
char *ft_strmapi(char const *s, char (*f)(unsigned int, char));
```

| Parameter | Type                           | Description                                                                                                                                                              |
| :-------- | :----------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `s`       | `char*`                        | The string to iterate over.                                                                                                                                              |
| `f`       | `char (*)(unsigned int, char)` | Pointer to a function that takes an unsigned integer and a character as arguments and returns a new character. This function is called for each character in the string. |

---

***ft_lstnew:*** Creates a new node for a linked list.

```c
t_list *ft_lstnew(void *content);
```

| Parameter | Type    | Description                  |
| :-------- | :------ | :--------------------------- |
| `content` | `void*` | The content of the new node. |

---

***ft_lstmap:*** Applies a function to each element in a linked list and returns a new list.

```c
t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));
```

| Parameter | Type               | Description                                                                                                                                          |
| :-------- | :----------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------- |
| `lst`     | `t_list*`          | The original list to be mapped.                                                                                                                      |
| `f`       | `void* (*)(void*)` | Pointer to a function that takes a void pointer as an argument and returns a new void pointer. This function is applied to each element of the list. |
| `del`     | `void (*)(void*)`  | Pointer to a function used to delete the content of a node.                                                                                          |

---

***ft_lstlast:*** Returns the last node in a linked list.

```c
t_list *ft_lstlast(t_list *lst);
```

| Parameter | Type      | Description                           |
| :-------- | :-------- | :------------------------------------ |
| `lst`     | `t_list*` | The list to find the last element of. |

---

***ft_lstadd_front:*** Adds a new node to the beginning of a linked list.

```c
void ft_lstadd_front(t_list **lst, ft_list *new);
```

| Parameter | Type       | Description                                       |
| :-------- | :--------- | :------------------------------------------------ |
| `lst`     | `t_list**` | A pointer to the pointer of the head of the list. |
| `new`     | `t_list*`  | The new node to add to the front of the list.     |

---

***ft_lstadd_back:*** Adds a new node to the end of a linked list.

```c
void ft_lstadd_back(t_list **lst, ft_list *new);
```

| Parameter | Type       | Description                                       |
| :-------- | :--------- | :------------------------------------------------ |
| `lst`     | `t_list**` | A pointer to the pointer of the head of the list. |
| `new`     | `t_list*`  | The new node to add to the back of the list.      |

---

***ft_lstdelone:*** Deletes a node from a linked list.

```c
void ft_lstdelone(t_list *lst, void (*del)(void*));
```

| Parameter | Type              | Description                                                 |
| :-------- | :---------------- | :---------------------------------------------------------- |
| `lst`     | `t_list*`         | The node to delete.                                         |
| `del`     | `void (*)(void*)` | Pointer to a function used to delete the content of a node. |

---

***ft_lstclear:*** Deletes all nodes from a linked list.

```c
void ft_lstclear(t_list **lst, void (*del)(void*));
```

| Parameter | Type              | Description                                                 |
| :-------- | :---------------- | :---------------------------------------------------------- |
| `lst`     | `t_list**`        | A pointer to the pointer of the head of the list.           |
| `del`     | `void (*)(void*)` | Pointer to a function used to delete the content of a node. |

---

***ft_lstiter:*** Applies a function to each element in a linked list.

```c
void ft_lstiter(t_list *lst, void (*f)(void *));
```

---

***ft_lstsize:*** Counts the number of nodes in a linked list.

```c
int  ft_lstsize(t_list *lst);
```

| Parameter | Type      | Description                  |
| :-------- | :-------- | :--------------------------- |
| `lst`     | `t_list*` | The list to get the size of. |

---

***ft_gb_calloc:*** Similar to calloc, but returns NULL if the allocation fails.

```c
void *ft_gb_calloc(size_t count, size_t size, ft_list **gb_lst);
```

| Parameter | Type       | Description                                  |
| :-------- | :--------- | :------------------------------------------- |
| `count`   | `size_t`   | The number of elements to allocate.          |
| `size`    | `size_t`   | The size of each element.                    |
| `gb_lst`  | `t_list**` | A pointer to the pointer of the global list. |

---

***ft_abs:*** Returns the absolute value of an integer.

```c
double ft_abs(double nb);
```

| Parameter | Type     | Description                                  |
| :-------- | :------- | :------------------------------------------- |
| `nb`      | `double` | The number to compute the absolute value of. |

---

***ft_intlen:*** Returns the number of digits in an integer.

```c
size_t ft_intlen(long nb);
```

| Parameter | Type   | Description                      |
| :-------- | :----- | :------------------------------- |
| `nb`      | `long` | The number to get the length of. |

---

***ft_atol:*** Converts a string to a long integer.

```c
long ft_atol(const char *str);
```

| Parameter | Type          | Description                              |
| :-------- | :------------ | :--------------------------------------- |
| `str`     | `const char*` | The string to convert to a long integer. |

---

***ft_free:*** Frees a block of memory that was previously allocated with malloc, calloc, or realloc.

```c
void ft_free(void **ptr);
```

| Parameter | Type     | Description                                           |
| :-------- | :------- | :---------------------------------------------------- |
| `ptr`     | `void**` | A pointer to the pointer to the memory block to free. |

---

***ft_clear_console:*** Clears the console screen.

```c
void ft_clear_console(void);
```

This function does not take any parameters.

---

***ft_isspace:*** Checks if a character is a whitespace character.

```c
int  ft_isspace(int c);
```

| Parameter | Type  | Description             |
| :-------- | :---- | :---------------------- |
| `c`       | `int` | The character to check. |

---

***ft_strcmp:*** Compares two strings.

```c
int  ft_strcmp(const char *s1, const char *s2);
```

| Parameter | Type          | Description        |
| :-------- | :------------ | :----------------- |
| `s1`      | `const char*` | The first string.  |
| `s2`      | `const char*` | The second string. |

---

***ft_strlcpy:*** Copies a string from one location to another, up to a specified length, and ensures that the destination buffer is null-terminated.

```c
size_t ft_strlcpy(char *dst, const char *src, size_t dstsize);
```

| Parameter | Type          | Description                         |
| :-------- | :------------ | :---------------------------------- |
| `dst`     | `char*`       | The destination string.             |
| `src`     | `const char*` | The source string.                  |
| `dstsize` | `size_t`      | The size of the destination buffer. |

## Frequently Asked Questions (FAQ)

#### What is libft?

libft is a library of custom functions written in C that provide commonly used functionality not available in the standard C library. It is designed to be portable and can be used in various C projects.

#### How do I use libft in my project?

To use libft, you need to compile it into an object file (libft.o or libft.a) and link it with your project. Here's a general overview of the steps:

1. Clone or download the libft source code.
2. Compile the source files (_.c) using a compiler of your choice (e.g., GCC) to create object files (_.o).
3. Link the object files with your project during compilation using the -l flag and specify the path to the libft directory.

#### How do I compile libft?

You can compile libft using the provided Makefile. Simply navigate to the libft directory and run the make command. This will compile the source files and create the libft.a library file.

#### Can I modify libft functions?

Yes, you can modify the libft functions to suit your specific requirements. However, it's recommended to keep the original functions intact and create new functions if needed. Make sure to thoroughly test any modifications you make to ensure they work as expected.

#### Where can I find documentation for libft functions?

The libft project typically includes a header file (libft.h) that contains function prototypes and brief descriptions. You can refer to this header file for the list of available functions and their usage. Additionally, you can refer to the source code and comments within each function for more detailed information.

#### How do I contribute to libft?

Contributions to libft are welcome! If you have improvements, bug fixes, or additional functions to suggest, you can submit a pull request on the official libft repository. Make sure to follow the contribution guidelines provided in the repository.

#### Is libft compatible with different operating systems?

Yes, libft is designed to be portable and compatible with various operating systems, including Linux, macOS, and Windows (with appropriate modifications). However, it's always a good idea to test your code on the target operating system to ensure compatibility.

#### Can I use libft in commercial projects?

Yes, you can use libft in commercial projects. It is released under a permissive open-source license (MIT license), which allows for both personal and commercial use.

#### Where can I find examples or tutorials on using libft?

You can find examples and tutorials on using libft on various platforms, including online programming communities, blogs, and forums. Additionally, you can explore the official libft repository for usage examples and documentation.

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

- If you have suggestions for adding or removing projects, feel free to [open an issue](https://github.com/The-Intruder/Lightweight-Unix-Shell-Implementation-aka-Minishell/issues/new) to discuss it, or directly create a pull request after you edit the _README.md_ file with necessary changes.
- Please make sure you check your spelling and grammar.
- Create individual PR for each suggestion.

### Creating A Pull Request

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Ressources

Here are some usefule links for the Libft project:

- [Libft unit test](https://github.com/alelievr/libft-unit-test)
- [Libft war machine](https://github.com/0x050f/libft-war-machine)
- [Francinette](https://github.com/xicodomingues/francinette)
- [Libftdestructor](https://github.com/t0mm4rx/libftdestructor)
- [42 libft](https://github.com/Glagan/42-libft)

## License

Distributed under the **GPL-3** License. See [LICENSE](https://github.com/The-Intruder/Lightweight-Unix-Shell-Implementation-aka-Minishell/blob/main/LICENSE.md) for more information.

## Authors

- **Mohamed Amine Naimi** aka ***[The-Intruder](https://github.com/The-Intruder/)*** - _Computer Science Student_ - *Built the Libft project*

## Acknowledgements

- [The-Intruder](https://github.com/The-Intruder/)
