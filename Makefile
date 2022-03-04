# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnaimi <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/06 16:44:02 by mnaimi            #+#    #+#              #
#    Updated: 2021/11/16 12:15:14 by mnaimi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NC := \033[31;0m
RED := \033[0;31;1m
YEL := \033[0;33;1m
GRA := \033[0;37;1m
CYN := \033[0;36;1m
GRN := \033[0;32;1m
MGN := \033[0;35;1m
BLU := \033[0;34;1m

CC := gcc
FLAGS := -Wall -Wextra -Werror 

SRCS := ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c \
	ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
	ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
	ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c \
	ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c \
	ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
	ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c \
	ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c \
	ft_tolower.c ft_toupper.c ft_lstadd_back.c ft_lstadd_front.c \
	ft_lstclear.c ft_lstdelone.c ft_lstiter.c ft_lstlast.c ft_lstmap.c \
	ft_lstnew.c ft_lstsize.c ft_strcmp.c

OBJS := $(SRCS:%.c=%.o)

PROJECT := libft
HEADER := libft.h
NAME := libft.a

.PHONY: all clean fclean re title

all: title ${NAME}

title:
	@echo "\n${YEL}Entering ${GRA}${PROJECT}${YEL}'s makefile"
	@echo "----------------------------${NC}"

$(NAME): $(OBJS) ${HEADER}
	@ar rcs $(NAME) $(OBJS)
	@echo "$(BLU)Archive file $(GRA)$(NAME)$(BLU) created successfully$(NC)"

%.o: %.c
	@$(CC) $(FLAGS) -o $@ -c $<
	@echo "${MGN}Object file ${GRA}$@${MGN} created from ${GRA}$<${MGN}${NC}"	

clean:
	@rm -f ${OBJS}
	@echo "${GRA}${PROJECT}${RED}\t\tobject files has been deleted${NC}"

fclean:
	@rm -f ${NAME}
	@echo "${GRA}${PROJECT}${RED}\t\tarchive file ${GRA}${NAME}${RED}\t\thas been deleted${NC}"

re: fclean all
