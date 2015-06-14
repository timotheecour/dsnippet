#works: make clean && make lib2 && make reexe2
#fails: make clean && make lib && make reexe

# READ BELOW BEFORE RUNNING TO BE SAFE!!

OUT_D=/tmp/d31/

LFLAGS=-L ~/install_tmp2/usr/local/lib -ldruntime-ldc -lphobos2-ldc -lcurl
LDC_X=~/install_tmp2/usr/local/bin/ldc2
EXE_F=${OUT_D}/out
LIB_F=${OUT_D}/libfun.a

DMD_X=dmd
LFLAGS2=-L ${arch_D}/dmd_build -lphobos2

############## ldc
lib:
	${LDC_X} -oq -of=${LIB_F} -lib -od=${OUT_D}/ fun1.d fun2.d fun3.d

exe:
	clang -o ${EXE_F} ${LIB_F} ${LFLAGS}
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
	rm ${OUT_D}/*

