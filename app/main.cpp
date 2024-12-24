#include "crow_all.h"

int main() {
    crow::SimpleApp app;

    // Route that adds two numbers
    CROW_ROUTE(app, "/add/<int>/<int>")([](int a, int b) {
        return crow::response(std::to_string(a + b));
    });

    // Start the server on port 8080
    app.port(8080).multithreaded().run();

    return 0;
}
