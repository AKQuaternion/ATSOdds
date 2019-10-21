#include <iostream>

#include <cmath>
#include <iostream>
#include <iomanip>
#include <vector>

using std::vector;
using std::cout;

double choose(int n, int k) { return 1/((n+1)*std::beta(n-k+1,k+1)); }
// See https://en.cppreference.com/w/cpp/experimental/special_math/beta

int main() {
  const int gamesLeft = 14;
  vector<double> pOfkWins;
  for(int i=0;i<=gamesLeft;++i)
    pOfkWins.push_back(choose(gamesLeft,i));


  return 0;
}