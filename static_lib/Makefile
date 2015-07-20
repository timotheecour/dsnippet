#works: make clean && make lib2 && make reexe2
#fails: make clean && make lib && make reexe

# READ BELOW BEFORE RUNNING TO BE SAFE!!

OUT_D=/tmp/d31/

#INSTALL_D=~/install_tmp2/usr/local/
INSTALL_D=~/install_tmp3/usr/local/

LFLAGS=-L ${INSTALL_D}/lib -ldruntime-ldc -lphobos2-ldc -lcurl
LDC_X=${INSTALL_D}/bin/ldc2
EXE_F=${OUT_D}/out
LIB_F=${OUT_D}/libfun.a
LIB2_F=${OUT_D}/libfun2.a

DMD_X=dmd
LFLAGS2=-L ${arch_D}/dmd_build -lphobos2

############## ldc
lib:
	${LDC_X} -oq -of=${LIB_F} -lib -od=${OUT_D}/ fun1.d fun2.d fun3.d

exe:
	clang -o ${EXE_F} ${LIB_F} ${LFLAGS}
	${EXE_F}

reexeL0:
	${LDC_X} -c -oq -od=${OUT_D}/ fun2.d
	#clang -o ${EXE_F} ${LIB_F} ${OUT_D}/fun2.o ${LFLAGS} 
	#clang -v -o ${EXE_F} ${OUT_D}/fun2.o ${LIB_F} ${LFLAGS} -multiply_defined supress
	cp ${LIB_F} ${LIB2_F}
	ar -r ${LIB2_F} ${OUT_D}/fun2.o
	#ar -rs ${LIB2_F} ${OUT_D}/fun2.o
	#ranlib ${LIB2_F}
	clang -o ${EXE_F} ${LIB2_F} ${LFLAGS}
	#clang -o ${EXE_F} -all_load ${LIB2_F} ${LFLAGS}
	#-multiply_defined_unused suppress : obsolete
	# -m : obsolete
	# clang -v -o ${EXE_F} -all_load  -multiply_defined supress ${LIB2_F} ${LFLAGS}
	${EXE_F}

reexeL2:
	${LDC_X} -c -oq -od=${OUT_D}/ fun1.d fun2.d fun3.d
	#clang -o ${EXE_F} ${LIB_F} ${OUT_D}/fun2.o ${LFLAGS} 
	#clang -v -o ${EXE_F} ${OUT_D}/fun2.o ${LIB_F} ${LFLAGS} -multiply_defined supress
	#cp ${LIB_F} ${LIB2_F}
	ar -rcs ${LIB_F} ${OUT_D}/fun1.o ${OUT_D}/fun2.o ${OUT_D}/fun3.o

reexeL3:
	${LDC_X} -c -oq -od=${OUT_D}/ fun2.d
	cp ${LIB_F} ${LIB2_F}
	ar -r ${LIB2_F} ${OUT_D}/fun2.o
	clang -o ${EXE_F} ${LIB2_F} ${LFLAGS}
	${EXE_F}

reexe:
	${LDC_X} -oq -of=${EXE_F} -od=${OUT_D}/ fun1.d fun2.d -L${LIB_F}
	${EXE_F}

############## dmd
lib2:
	${DMD_X} -of${LIB_F} -lib -od${OUT_D}/ fun1.d fun2.d fun3.d

exe2:
	clang -o ${EXE_F} ${LIB_F} ${LFLAGS2}
	${EXE_F}

reexe2:
	${DMD_X} -of${EXE_F} -od${OUT_D}/ fun1.d fun2.d -L${LIB_F}
	${EXE_F}

####################
clean:
	#TODO:don't use glob for safety
	rm ${OUT_D}/*

