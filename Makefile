ellipse_mask:
	gfortran ellipse_mask.f95 -O2 -o em

debug:
	gfortran ellipse_mask.f95 -fbounds-check -ffpe-trap='invalid,zero' -fcheck='all' -Wall -o em

.PHONY : clean
clean :
	-rm -f em
