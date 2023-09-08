SHELL=	/bin/sh

CMD= test.exe

OBJS = test.o

$(CMD):	$(OBJS)
	$(FCOMP) $(FFLAGS) -o $(CMD) $(OBJS) $(SP_LIBd)

test.o:  test.f90
	$(FCOMP) $(FFLAGS) $(NETCDF_INCLUDE) -c test.f90

clean:
	rm -f *.o *.mod ${CMD} *.exe.*
