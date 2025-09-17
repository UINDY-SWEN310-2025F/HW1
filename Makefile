make:
	echo "making"
test:
	chmod a+x ./answer/*
	bash ./script_test/test1.sh
done:
	rm -rf ./answer/xyz_*
	echo "delete all"

