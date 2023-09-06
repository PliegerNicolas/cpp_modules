# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nplieger <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/31 11:27:22 by nplieger          #+#    #+#              #
#    Updated: 2023/09/06 14:12:16 by nicolas          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all :
	@echo "\033[36;2mInitialize submodules and/or update them.\033[0m"
	@git submodule update --quiet --remote --init --recursive

clean:
	@echo "\033[36;2mUninitialize submodules\033[0m"
	@git submodule deinit -f --quiet --all

.PHONY: pull clean
