/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc_gb.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mnaimi <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/04 16:10:46 by mnaimi            #+#    #+#             */
/*   Updated: 2021/11/09 09:39:16 by mnaimi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/* -------------------------------------------------------------------------- */

void	*ft_gb_calloc(size_t count, size_t size, t_list **gb_lst)
{
	char	*ptr;
	t_list	*node;

	ptr = (char *) ft_calloc(count, size);
	if (ptr == NULL)
		return (NULL);
	node = ft_lstnew(ptr);
	ft_lstadd_back(gb_lst, node);
	node->next = NULL;
	return ((void *) ptr);
}

/* -------------------------------------------------------------------------- */
