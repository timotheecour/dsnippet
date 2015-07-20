BASE_D=../

all:
	cd foo && dmd -c -o- -I${BASE_D}/ ${BASE_D}/main.d
	#error:Error: module foo.fun1 from file fun1.d conflicts with another module fun1 from file foo/fun1.d

with_flag:
	cd foo && ${dmd_X} -exclude_cwd_from_imports -c -o- -I${BASE_D}/ ${BASE_D}/main.d
	#ok

