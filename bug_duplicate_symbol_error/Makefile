dmd=~/git_clone/D/Digger/result/bin/dmd

#works with dmd
all0:
	${dmd} -oflibproj6.a -lib -g project2.d foo2.d foo1.d
	${dmd} -ofout -g libproj6.a foo1.d main.d

#works with dmd
all1:
	${dmd} -oflibproj6.a -lib -g project2.d foo1.d foo2.d
	${dmd} -ofout -g libproj6.a foo2.d main.d

#worked with dmd_067_1_X
#works with dmd from: ./digger build v2.068.0-b1
#FAILS with dmd from: ./digger build 
#FAILS with dmd from: ./digger build master (v2.068-devel-494a91d)
#has failed for a few months on git master AFAIR
all1_order_flipped:
	${dmd} -oflibproj6.a -lib -g project2.d foo2.d foo1.d
	${dmd} -ofout -g libproj6.a foo2.d main.d
