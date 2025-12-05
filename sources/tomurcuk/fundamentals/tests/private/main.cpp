#include "tomurcuk/DebugMessage.hpp"

#include <stdio.h>

auto main() -> int {
    (void)fprintf(stderr, "%s\n", tomurcuk::debugMessage());
}
