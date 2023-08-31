# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nplieger <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/31 11:27:22 by nplieger          #+#    #+#              #
#    Updated: 2023/08/31 19:38:07 by nicolas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all :
	@echo "\033[36;2mInitialize submodules and/or update them.\033[0m"
	@git submodule update --quiet --init --recursive

pull:			all
	@echo "\033[36;2mPull latest data and switch to main branch\033[0m"
	@git submodule foreach \
		'git fetch --quiet;				\
		git pull --quiet origin main;	\
		git checkout --quiet main;'

clean:
	@echo "\033[36;2mUninitialize submodules\033[0m"
	@git submodule deinit -f --quiet --all

.PHONY: pull clean
