#include "tomurcuk/debugMessage.hpp"

#include <stdio.h>

auto main() -> int {
    (void)fprintf(stderr, "%s\n", tomurcuk::debugMessage());
}
