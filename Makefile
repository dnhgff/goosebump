mongoose_opts := \
	-DMONGOOSE_NO_AUTH \
	-DMONGOOSE_NO_CGI \
	-DMONGOOSE_NO_DAV \
	-DMONGOOSE_NO_DIRECTORY_LISTING \
	-DMONGOOSE_NO_WEBSOCKET \
	-DMONGOOSE_NO_USER
OPTS := -pthread -std=c11 -O1 $(mongoose_opts)

goosebump : main.c mongoose.c mongoose.h
	gcc $(OPTS) main.c mongoose.c -o goosebump
