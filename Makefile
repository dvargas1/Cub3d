# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jeluiz4 <jeffluiz97@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/13 12:36:42 by jeluiz4           #+#    #+#              #
#    Updated: 2023/03/19 20:51:31 by jeluiz4          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	cub3d.c \
		keys.c 

FLAGS = -Wall -Wextra -g
FLAGS_SA = -Wall -Wextra -Werror -g -fsanitize
CC = gcc
NAME = cub3D
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(FLAGS) $(OBJS) -Lmlx_linux -lmlx_Linux -L/usr/lib -Imlx_linux -lXext -lX11 -lm -lz -o $(NAME)
	@printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\e[1;31m"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠤⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣬⣍⡳⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣇⠀⣦⣤⣉⠛⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⣿⣏⢿⡻⢦⡙⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠙⢿⣷⡽⣆⠙⠳⣦⡈⠙⠳⣄⡀⠀⠀⠀⠀⠘⣿⡆⢷⠀⠙⣦⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣼⡇⠀⢻⣿⣿⢦⠀⠈⢻⣦⠀⠈⠻⣄⠀⠀⠀⠀⠛⣧⡘⡇⠀⠘⣧⠹⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠰⣖⡒⢒⣚⣣⣿⣟⣒⡒⢻⣿⣎⣧⠀⠈⠻⣷⠀⠀⠘⢧⠀⠀⠀⢰⣿⠀⣷⡀⠀⢸⣇⢹⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠈⠟⢾⡿⣦⣠⣷⢯⠞⠋⢛⣿⢸⡄⠀⠀⠙⣧⠀⢧⠈⢷⡦⠀⡼⣿⠀⡇⠃⠀⠀⢻⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣽⣟⣿⣿⣼⣆⠇⠀⣿⡄⣇⠀⠀⠀⣿⡆⠁⠀⠘⣧⢠⣧⡟⢸⡷⠀⠀⠀⣿⡟⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⡾⠋⠉⠛⢶⣿⠇⢸⣿⠇⣿⠀⠀⠀⠐⣿⢂⠀⠀⢹⣼⣿⢳⡯⠁⠀⠀⢀⢿⡇⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠁⠀⣿⣷⣴⡀⠀⠉⡇⣆⢸⠀⠀⠀⠀⢹⡇⠀⠀⢸⣿⢿⡟⠀⠀⠀⠀⠀⣸⠳⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⢀⣠⣤⣤⣐⢀⡀⠘⢿⣿⣟⠳⣤⣇⠘⢸⠀⠀⠀⠀⠘⣧⢀⠀⢸⣧⣾⠀⠀⠀⠀⠀⢀⡟⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⣠⡿⠻⠀⠀⠘⣯⡿⠂⠀⠸⠝⣿⣄⠙⢷⣜⣇⡀⠀⠀⠀⢿⣼⡇⢸⣿⠁⠀⠀⠀⠀⠀⣸⠃⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⢠⣼⡋⠉⠀⢀⣢⣶⠛⠀⠀⠀⠀⠀⠀⡸⣷⡘⣿⣿⡷⡀⠀⠀⠸⣧⠇⢸⡏⠀⠀⠀⠀⠀⢠⡟⠄⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⢿⣉⡀⠈⣠⣄⠙⢟⣷⣄⡀⠀⠀⠀⡄⠀⢹⣷⠈⢟⢧⡙⠀⠀⠀⢻⡈⢸⡇⠀⠀⠀⠀⠀⣾⡝⣀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠈⢿⣯⡿⠟⠻⣿⣄⠙⢟⣷⣦⠀⠀⡇⠀⢰⠻⣷⡌⢲⣷⡀⠀⠀⠘⣷⢤⣧⠀⠀⠀⢀⣼⣷⣷⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠁⠀⠀⠀⠈⠹⣿⣄⠙⢿⣷⣄⠀⠀⠀⠀⣿⠁⢸⣿⣿⣶⣄⣀⣹⡄⣽⣶⠾⠗⠾⢿⣚⡛⠻⠧⣶⠴⠶⠦⣄⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣦⠑⢙⣷⣄⠀⣠⡏⠀⢸⣿⣿⣾⣬⠉⠙⣿⡟⠁⣴⠶⠲⠦⣬⡛⢷⣄⠀⠀⠀⠀⢘⣿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⢰⣤⡷⣄⠀⠀⠀⠈⠻⢿⣦⠙⢿⢷⡟⠀⢀⣼⠏⣠⡟⠁⠀⣀⣿⠥⠼⣿⣾⣶⣿⣿⣿⡆⠉⢤⠀⠶⠶⢿⣿⡿⠧⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⣠⡾⠋⢸⣌⠺⠛⣦⣄⣀⠀⢀⣙⡦⠀⠁⠀⣀⣼⠃⣤⣿⣿⠴⠋⠁⠀⠀⠀⠀⠀⠉⠉⠛⠻⣅⡀⠀⠀⠀⠀⢀⣉⣻⣆⠀⠙⢧⡀⠀⠀⣀⡀⣀⣤⣶⣴⣿⠿⣿⠿⠷⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⣠⠾⠋⢀⣾⠟⠯⠷⣤⡎⢁⡸⠉⠉⡁⠀⠀⢀⡀⠈⠻⣿⣿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣏⠉⠙⠲⢴⣾⣿⣻⣿⢳⣄⣠⣿⠾⠿⠿⠛⠝⠋⠀⠁⠀⢀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⣾⡁⢠⣴⡟⠁⠀⠀⠀⠈⠉⠛⠒⠻⠶⠿⠗⠚⠉⠙⢦⡀⢈⣿⠗⠀⠀⣀⣀⣀⣠⣤⠤⠴⠶⢖⠒⣒⣛⣿⣛⣲⣖⣆⠻⣿⣿⠯⣭⣿⣤⣼⣴⣶⣶⣶⣶⣤⡤⠤⠴⠶⠿⠾⠛⠻⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠙⠶⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⣹⣶⡿⣿⠛⠏⠉⠉⠀⢀⣀⣤⠴⠖⠟⣋⣽⣿⣿⣷⣾⣿⠷⠒⡟⠃⣼⣿⣿⣾⣿⣄⣀⣀⡀⢀⡀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠛⢷⣶⣶⣿⠿⠿⠛⠉⠀⢴⣾⣿⠟⠋⠁⠈⣽⡇⠀⠀⡧⢂⣿⣿⠛⠁⠀⠙⠛⠟⠛⠉⠛⢛⣻⣾⣿⡿⠷⠾⡦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣶⢾⣿⣿⣿⠟⠻⠶⣴⣶⣶⣾⣏⣀⣠⣴⣶⣶⣿⡧⠤⢼⠧⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣶⣶⣿⡿⠿⠟⢻⣿⠟⠁⠀⠀⣠⣿⣿⡿⠏⠈⠉⠉⠉⠉⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⣿⠟⠁⠀⡀⠈⠀⠀⢀⣞⠁⠀⠀⣰⣾⣿⠿⠿⢧⢷⣶⣀⣀⡀⠀⢀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠛⠀⠀⠰⠇⠀⠀⢸⠿⠏⠀⠀⢻⡿⣿⡇⠀⠀⠀⠀⠉⠉⠉⠉⠛⠛⠛⠛⠛⠛⠛⠲⠿⢦⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠁⠀⠀⢀⠰⠇⣤⣿⠿⠈⠀⠀⠀⠈⠇⢹⡇⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⣽⠏⡀⠀⠀⠀⢘⣴⣾⣿⠃⠀⠀⠀⠀⠀⠀⠀⢸⣷⣤⣀⣀⣀⣀⣀⣀⣀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣦⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠀⠇⠀⠀⢠⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⢳⣾⣇⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⠛⠻⡗⣿⠶⣤⣤⣀⠀⠀⢀⡀⠀⠀⠉⠛⢧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⠀⠀⠀⠀⠀⠙⢿⣅⠀⠀⠀⠀⠀⠀⠀⠀⢘⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⠛⣿⣿⣾⣧⣤⡀⠀⢀⣤⠞⣋⣩⠭⢶⣦⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣆⠀⠀⠀⠀⠀⠀⠉⠓⠦⢤⣀⡀⠀⠀⠀⣸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣷⣿⢁⡾⠉⠀⠀⠀⠀⠉⠀⠙⠶⠤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡛⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠻⣶⣴⠿⠯⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣼⡇⠀⠀⠀⠀⢀⡀⠀⠀⢀⡀⠠⢤⣉⡉⠓⠒⠦⢤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⣿⣿⢿⣧⣄⠀⠀⠀⠀⠀⢀⣀⣴⠛⢁⡴⠚⠉⠉⠉⠛⠒⠲⠤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣷⣄⠀⠀⠀⠀⠉⠉⠑⣦⠉⠓⠲⢤⣉⣉⠓⠒⠦⠤⣭⣙⣶⡄⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠏⢰⡇⠀⠉⠛⠶⣶⣦⣄⣘⣽⡇⠀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠭⣍⠉⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠻⢶⣤⣀⣀⣤⣴⣟⠀⠀⠀⠀⠀⠈⠉⠉⠙⢳⣄⣹⣿⠁⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠛⢀⡿⠀⠀⠀⠀⠀⠀⠉⠙⠛⠻⢷⣶⣿⡀⠀⠀⠀⠀⠀⠀⠀⢄⡀⠀⠘⢦⣀⠈⠻⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠀⠈⠻⠛⠛⢿⣷⣶⣤⣀⣀⣀⣀⡼⡿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠃⠀⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⢷⣦⠀⠀⠀⠀⠀⠈⠙⠳⢤⡀⠈⠙⠦⣄⠈⠛⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠀⣼⡿⠉⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣶⣶⣦⣀⡀⠀⠀⠀⠈⠑⠦⣄⠈⠻⢦⡀⣹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⠸⣿⠃⠀⢠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣅⠈⠙⠚⢿⣷⣦⣄⡀⠀⠀⠈⢳⣄⢈⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
	@printf "⠀⠀⠀⠀⠀⠀⢰⣿⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⠄⠀⠀⠀⠀⠉⠉⠿⣷⣦⡤⣾⠛⠋⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\e[0m\n"
	@printf "\e[1;32m⡖⠒⠲⣄⡖⠒⡆⡖⢒⠒⡆⢖⠒⣤⠖⢲⠆⠀⢰⠒⠒⠒⢲⠒⡆⡖⢲⡖⠒⣒⣒⡆⠀⠀⢠⠒⠒⣒⡖⢲⢰⠒⢲⠒⢒⣒⣒⡖⢲⠀⠀⡖⢲⠀⠀⠀⠀⢰⣒⠒⢒⣒⠒⢶⡖⢒⣒⣒⡆⠀⢰⠒⠲⣴⠒⢲⡖⡖⢲⡖⠒⠒⢒⡖⢲⢰⠒⡆⠀⠀⢰⡒⠲⣤⠒⣲⡠⠒⠒⠒⢄⡖⢲⠀⡖⢲\e[0m\n"
	@printf "\e[1;32m⠉⡇⢀⠉⢀⠀⣿⠁⣾⡆⢳⡈⢆⠀⣠⠃⠀⠀⠈⢹⠀⡏⢹⠀⣉⡁⢸⡇⢘⣳⡆⠀⠀⠀⠈⢦⠈⢦⡇⠈⣉⠀⢸⠀⣛⣲⠀⡇⢸⠀⠀⡇⢸⠀⠀⠀⠀⠀⢹⠀⣙⣛⠠⢾⡇⢘⣻⡏⠀⠀⠈⠹⡀⠃⢀⠘⢁⡇⢸⠉⡇⢸⠉⡇⢈⣉⠀⡇⠀⠀⠀⠙⣆⠀⡴⢹⠀⢞⠉⡇⠈⡇⢸⠀⡇⢸\e[0m\n"
	@printf "\e[1;32m⠀⣇⣸⢷⢿⣀⣏⣠⠖⢦⣀⡇⢸⣀⡇⠀⠀⠀⠀⢸⣀⡇⢸⣀⡏⣇⣸⣇⣈⣉⣉⣹⢸⣉⣉⣉⣀⡸⣇⣸⢹⣀⣸⣀⣉⣉⣉⣇⣈⣉⣉⣇⣈⣉⣉⡇⠀⠀⢸⣀⣙⣚⣁⣼⣇⣈⣉⣉⣷⠀⠀⠀⢧⣀⣿⣄⣸⣇⣸⠀⣇⣸⠀⣇⣸⢸⣀⡇⠀⠀⠀⠀⢸⣀⡇⠈⠣⣈⣉⣡⠜⠳⣌⣙⣡⠞\e[0m\n"
	@printf "\n\n\n\n\n\n\n"

$(OBJS): $(SRCS)
	$(CC) $(FLAGS) $(SRCS) -I/usr/include -lmlx_Linux -O3 -c

clean:
	rm -f $(OBJS)

fclean:
	rm -f $(NAME) $(OBJS)

re: fclean all

.PHONY:
