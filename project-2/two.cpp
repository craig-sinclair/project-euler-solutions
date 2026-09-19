#include <iostream>
#include <cstdint>

int main() {
  uint32_t sum = 0;
  uint32_t prevsPrevs = 0;
  uint32_t prevs = 1;

  while(true) {
    uint32_t curr = prevsPrevs + prevs;
    if (curr > 4000000) {
      break;
    }

    if (curr % 2 == 0) {
      sum += curr;
    }
    prevsPrevs = prevs;
    prevs = curr;
  }

  std::cout << sum << '\n';
}
