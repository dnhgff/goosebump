// Copyright (C) 2015 dnhgff
// see LICENSE for that kind of stuff
#include <time.h> // mongoose should declare this itself, but does not.
#include "mongoose.h"

int main(int argc, char *argv[]) {
    char *root = ".";
    char *port = "8888";
    if (argc > 1) {
        root = argv[1];
    }
    if (argc > 2) {
        port = argv[2];
    }

    struct mg_server *server = mg_create_server(NULL, NULL);
    mg_set_option(server, "document_root", root);
    mg_set_option(server, "listening_port", port);

    for (;;) {
        mg_poll_server(server, 1000);
    }
    mg_destroy_server(&server);

    return 0;
}
