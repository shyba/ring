	.text
foo:
	# TOC references may have offsets.
	addis 3, 2, 5+foo@toc@ha
	addi 3, 3, 10+foo@toc@l

	addis 3, 2, 15+foo@toc@ha
	addi 3, 3, 20+foo@toc@l

	addis 4, 2, foo@toc@ha
	addi 4, 4, foo@toc@l

	addis 5, 2, 5+foo@toc@ha
	ld 5, 10+foo@toc@l(5)
