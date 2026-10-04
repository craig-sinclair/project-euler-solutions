#include <bits/stdc++.h>
#include <string>
#include <stdio.h>

int main() {
  int largestPalProd = 0;

  for (int i=999; i>=100; i--) {
    for (int j=999; j>=100; j--) {
      int product = i * j;
      std::string stringProd = std::to_string(product);
      std::string reverseStringProd(stringProd);
      std::reverse(reverseStringProd.begin(), reverseStringProd.end());

      if (reverseStringProd == stringProd && product > largestPalProd) {
        largestPalProd = product;
      }
    }
  }
  std::cout << largestPalProd << '\n';
}

