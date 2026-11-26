section .text
;dit à NASM que les instructions qui suivent sont réservée au code exécutable.;

global ft_strlen
;rend le nom accessible depuis d'autres fichier;

ft_strlen:
	mov rax, 0
.loop:
	cmp byte [rdi + rax], 0
	je .done
	;je = jump if equal;
	inc rax
	jmp .loop
	;jmp = jump;
.done:
	ret

;Le code compilé sait que le résultat de ft_strlen se trouve;
;dans rax, car c’est la convention d’appel Linux x86‑64;
;pour un résultat de type size_t.;
