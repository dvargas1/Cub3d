# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dvargas < dvargas@student.42.rio>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/13 12:36:42 by jeluiz4           #+#    #+#              #
#    Updated: 2023/04/19 11:59:06 by dvargas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	cub3d.c \
		math_lib.c \
		keys.c \
		ignite.c \
		draw.c \
		free.c \
		minimap.c \
		move.c \
		ray.c \
		ray_operations.c \
		projection.c \
		help.c \
		projection_operations.c \
		parse/checkAssets.c \
		parse/checkAssets_utils.c \
		parse/colorConversion.c \
		parse/createMap.c \
		parse/createMap_utils.c \
		parse/igniteAndError.c \
		parse/validateMap.c \
		parse/validateMap_utils.c \
		parse/parse.c

FLAGS = -Wall -Wextra -g
FLAGS_SA = -Wall -Wextra -Werror -g -fsanitize
CC = gcc
LIBD = "./libft/"
LIBA = "./libft/libft.a"
NAME = cub3D
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	@cd $(LIBD) && make
	$(CC) $(FLAGS) $(OBJS) $(LIBA) -Lmlx_linux -lmlx_Linux -L/usr/lib -Imlx_linux -lXext -lX11 -lm -lz -o $(NAME)
#	@printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\e[1;31m"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠤⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣬⣍⡳⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣇⠀⣦⣤⣉⠛⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⣿⣏⢿⡻⢦⡙⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠙⢿⣷⡽⣆⠙⠳⣦⡈⠙⠳⣄⡀⠀⠀⠀⠀⠘⣿⡆⢷⠀⠙⣦⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣼⡇⠀⢻⣿⣿⢦⠀⠈⢻⣦⠀⠈⠻⣄⠀⠀⠀⠀⠛⣧⡘⡇⠀⠘⣧⠹⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠰⣖⡒⢒⣚⣣⣿⣟⣒⡒⢻⣿⣎⣧⠀⠈⠻⣷⠀⠀⠘⢧⠀⠀⠀⢰⣿⠀⣷⡀⠀⢸⣇⢹⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠈⠟⢾⡿⣦⣠⣷⢯⠞⠋⢛⣿⢸⡄⠀⠀⠙⣧⠀⢧⠈⢷⡦⠀⡼⣿⠀⡇⠃⠀⠀⢻⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣽⣟⣿⣿⣼⣆⠇⠀⣿⡄⣇⠀⠀⠀⣿⡆⠁⠀⠘⣧⢠⣧⡟⢸⡷⠀⠀⠀⣿⡟⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⡾⠋⠉⠛⢶⣿⠇⢸⣿⠇⣿⠀⠀⠀⠐⣿⢂⠀⠀⢹⣼⣿⢳⡯⠁⠀⠀⢀⢿⡇⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠁⠀⣿⣷⣴⡀⠀⠉⡇⣆⢸⠀⠀⠀⠀⢹⡇⠀⠀⢸⣿⢿⡟⠀⠀⠀⠀⠀⣸⠳⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⢀⣠⣤⣤⣐⢀⡀⠘⢿⣿⣟⠳⣤⣇⠘⢸⠀⠀⠀⠀⠘⣧⢀⠀⢸⣧⣾⠀⠀⠀⠀⠀⢀⡟⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⣠⡿⠻⠀⠀⠘⣯⡿⠂⠀⠸⠝⣿⣄⠙⢷⣜⣇⡀⠀⠀⠀⢿⣼⡇⢸⣿⠁⠀⠀⠀⠀⠀⣸⠃⠀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⢠⣼⡋⠉⠀⢀⣢⣶⠛⠀⠀⠀⠀⠀⠀⡸⣷⡘⣿⣿⡷⡀⠀⠀⠸⣧⠇⢸⡏⠀⠀⠀⠀⠀⢠⡟⠄⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⢿⣉⡀⠈⣠⣄⠙⢟⣷⣄⡀⠀⠀⠀⡄⠀⢹⣷⠈⢟⢧⡙⠀⠀⠀⢻⡈⢸⡇⠀⠀⠀⠀⠀⣾⡝⣀⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠈⢿⣯⡿⠟⠻⣿⣄⠙⢟⣷⣦⠀⠀⡇⠀⢰⠻⣷⡌⢲⣷⡀⠀⠀⠘⣷⢤⣧⠀⠀⠀⢀⣼⣷⣷⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠁⠀⠀⠀⠈⠹⣿⣄⠙⢿⣷⣄⠀⠀⠀⠀⣿⠁⢸⣿⣿⣶⣄⣀⣹⡄⣽⣶⠾⠗⠾⢿⣚⡛⠻⠧⣶⠴⠶⠦⣄⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣦⠑⢙⣷⣄⠀⣠⡏⠀⢸⣿⣿⣾⣬⠉⠙⣿⡟⠁⣴⠶⠲⠦⣬⡛⢷⣄⠀⠀⠀⠀⢘⣿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⢰⣤⡷⣄⠀⠀⠀⠈⠻⢿⣦⠙⢿⢷⡟⠀⢀⣼⠏⣠⡟⠁⠀⣀⣿⠥⠼⣿⣾⣶⣿⣿⣿⡆⠉⢤⠀⠶⠶⢿⣿⡿⠧⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⣠⡾⠋⢸⣌⠺⠛⣦⣄⣀⠀⢀⣙⡦⠀⠁⠀⣀⣼⠃⣤⣿⣿⠴⠋⠁⠀⠀⠀⠀⠀⠉⠉⠛⠻⣅⡀⠀⠀⠀⠀⢀⣉⣻⣆⠀⠙⢧⡀⠀⠀⣀⡀⣀⣤⣶⣴⣿⠿⣿⠿⠷⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⣠⠾⠋⢀⣾⠟⠯⠷⣤⡎⢁⡸⠉⠉⡁⠀⠀⢀⡀⠈⠻⣿⣿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣏⠉⠙⠲⢴⣾⣿⣻⣿⢳⣄⣠⣿⠾⠿⠿⠛⠝⠋⠀⠁⠀⢀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⣾⡁⢠⣴⡟⠁⠀⠀⠀⠈⠉⠛⠒⠻⠶⠿⠗⠚⠉⠙⢦⡀⢈⣿⠗⠀⠀⣀⣀⣀⣠⣤⠤⠴⠶⢖⠒⣒⣛⣿⣛⣲⣖⣆⠻⣿⣿⠯⣭⣿⣤⣼⣴⣶⣶⣶⣶⣤⡤⠤⠴⠶⠿⠾⠛⠻⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠙⠶⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢄⣹⣶⡿⣿⠛⠏⠉⠉⠀⢀⣀⣤⠴⠖⠟⣋⣽⣿⣿⣷⣾⣿⠷⠒⡟⠃⣼⣿⣿⣾⣿⣄⣀⣀⡀⢀⡀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠛⢷⣶⣶⣿⠿⠿⠛⠉⠀⢴⣾⣿⠟⠋⠁⠈⣽⡇⠀⠀⡧⢂⣿⣿⠛⠁⠀⠙⠛⠟⠛⠉⠛⢛⣻⣾⣿⡿⠷⠾⡦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣶⢾⣿⣿⣿⠟⠻⠶⣴⣶⣶⣾⣏⣀⣠⣴⣶⣶⣿⡧⠤⢼⠧⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣶⣶⣿⡿⠿⠟⢻⣿⠟⠁⠀⠀⣠⣿⣿⡿⠏⠈⠉⠉⠉⠉⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⣿⠟⠁⠀⡀⠈⠀⠀⢀⣞⠁⠀⠀⣰⣾⣿⠿⠿⢧⢷⣶⣀⣀⡀⠀⢀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠛⠀⠀⠰⠇⠀⠀⢸⠿⠏⠀⠀⢻⡿⣿⡇⠀⠀⠀⠀⠉⠉⠉⠉⠛⠛⠛⠛⠛⠛⠛⠲⠿⢦⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠁⠀⠀⢀⠰⠇⣤⣿⠿⠈⠀⠀⠀⠈⠇⢹⡇⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠨⣽⠏⡀⠀⠀⠀⢘⣴⣾⣿⠃⠀⠀⠀⠀⠀⠀⠀⢸⣷⣤⣀⣀⣀⣀⣀⣀⣀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣦⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠀⠇⠀⠀⢠⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⢳⣾⣇⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⠛⠻⡗⣿⠶⣤⣤⣀⠀⠀⢀⡀⠀⠀⠉⠛⢧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⠀⠀⠀⠀⠀⠙⢿⣅⠀⠀⠀⠀⠀⠀⠀⠀⢘⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⠛⣿⣿⣾⣧⣤⡀⠀⢀⣤⠞⣋⣩⠭⢶⣦⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣆⠀⠀⠀⠀⠀⠀⠉⠓⠦⢤⣀⡀⠀⠀⠀⣸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣷⣿⢁⡾⠉⠀⠀⠀⠀⠉⠀⠙⠶⠤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡛⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠻⣶⣴⠿⠯⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣼⡇⠀⠀⠀⠀⢀⡀⠀⠀⢀⡀⠠⢤⣉⡉⠓⠒⠦⢤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⣿⣿⢿⣧⣄⠀⠀⠀⠀⠀⢀⣀⣴⠛⢁⡴⠚⠉⠉⠉⠛⠒⠲⠤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣷⣄⠀⠀⠀⠀⠉⠉⠑⣦⠉⠓⠲⢤⣉⣉⠓⠒⠦⠤⣭⣙⣶⡄⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠏⢰⡇⠀⠉⠛⠶⣶⣦⣄⣘⣽⡇⠀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠭⣍⠉⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠻⢶⣤⣀⣀⣤⣴⣟⠀⠀⠀⠀⠀⠈⠉⠉⠙⢳⣄⣹⣿⠁⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠛⢀⡿⠀⠀⠀⠀⠀⠀⠉⠙⠛⠻⢷⣶⣿⡀⠀⠀⠀⠀⠀⠀⠀⢄⡀⠀⠘⢦⣀⠈⠻⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠀⠈⠻⠛⠛⢿⣷⣶⣤⣀⣀⣀⣀⡼⡿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠃⠀⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⢷⣦⠀⠀⠀⠀⠀⠈⠙⠳⢤⡀⠈⠙⠦⣄⠈⠛⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠈⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠀⣼⡿⠉⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣶⣶⣦⣀⡀⠀⠀⠀⠈⠑⠦⣄⠈⠻⢦⡀⣹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⠸⣿⠃⠀⢠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣅⠈⠙⠚⢿⣷⣦⣄⡀⠀⠀⠈⢳⣄⢈⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n"
#	@printf "⠀⠀⠀⠀⠀⠀⢰⣿⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⠄⠀⠀⠀⠀⠉⠉⠿⣷⣦⡤⣾⠛⠋⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\e[0m\n"
#	@printf "\e[1;32m⡖⠒⠲⣄⡖⠒⡆⡖⢒⠒⡆⢖⠒⣤⠖⢲⠆⠀⢰⠒⠒⠒⢲⠒⡆⡖⢲⡖⠒⣒⣒⡆⠀⠀⢠⠒⠒⣒⡖⢲⢰⠒⢲⠒⢒⣒⣒⡖⢲⠀⠀⡖⢲⠀⠀⠀⠀⢰⣒⠒⢒⣒⠒⢶⡖⢒⣒⣒⡆⠀⢰⠒⠲⣴⠒⢲⡖⡖⢲⡖⠒⠒⢒⡖⢲⢰⠒⡆⠀⠀⢰⡒⠲⣤⠒⣲⡠⠒⠒⠒⢄⡖⢲⠀⡖⢲\e[0m\n"
#	@printf "\e[1;32m⠉⡇⢀⠉⢀⠀⣿⠁⣾⡆⢳⡈⢆⠀⣠⠃⠀⠀⠈⢹⠀⡏⢹⠀⣉⡁⢸⡇⢘⣳⡆⠀⠀⠀⠈⢦⠈⢦⡇⠈⣉⠀⢸⠀⣛⣲⠀⡇⢸⠀⠀⡇⢸⠀⠀⠀⠀⠀⢹⠀⣙⣛⠠⢾⡇⢘⣻⡏⠀⠀⠈⠹⡀⠃⢀⠘⢁⡇⢸⠉⡇⢸⠉⡇⢈⣉⠀⡇⠀⠀⠀⠙⣆⠀⡴⢹⠀⢞⠉⡇⠈⡇⢸⠀⡇⢸\e[0m\n"
#	@printf "\e[1;32m⠀⣇⣸⢷⢿⣀⣏⣠⠖⢦⣀⡇⢸⣀⡇⠀⠀⠀⠀⢸⣀⡇⢸⣀⡏⣇⣸⣇⣈⣉⣉⣹⢸⣉⣉⣉⣀⡸⣇⣸⢹⣀⣸⣀⣉⣉⣉⣇⣈⣉⣉⣇⣈⣉⣉⡇⠀⠀⢸⣀⣙⣚⣁⣼⣇⣈⣉⣉⣷⠀⠀⠀⢧⣀⣿⣄⣸⣇⣸⠀⣇⣸⠀⣇⣸⢸⣀⡇⠀⠀⠀⠀⢸⣀⡇⠈⠣⣈⣉⣡⠜⠳⣌⣙⣡⠞\e[0m\n"
#@printf "\n\n\n\n\n\n\n"

$(OBJS): %.o: %.c
	$(CC) $(FLAGS) -I/usr/include -lmlx_Linux -c $< -o $@

clean:
	@cd $(LIBD) && make clean
	rm -f $(OBJS)

fclean:
	@cd $(LIBD) && make fclean
	rm -f $(NAME) $(OBJS)

re: fclean all

.PHONY:
