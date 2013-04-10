all:
	make -C contrib/csstiles
	cp -r contrib/csstiles/rltiles/*.js contrib/
