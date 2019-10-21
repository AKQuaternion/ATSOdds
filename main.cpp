#include <cmath>
#include <iostream>
#include <iomanip>
#include <vector>

using std::vector;
using std::cout;

const int gamesLeft = 14;
int beginCWins = 19;
int beginRWins = 18;
int beginMWins = 15;

vector<double> makeOddsOfkWins() {
  vector<double> v{1};
  for (int i = 1; i <= gamesLeft; ++i) {
    v.push_back(v.back()/2);
    for(auto p = v.size()-2; p >= 1; --p)
      v[p] = (v[p]+v[p-1])/2;
    v[0] /= 2;
  }
  return v;
}

int main() {
  auto pOfkWins = makeOddsOfkWins();

  return 0;
}