#include <iomanip>
#include <iostream>
#include <vector>

using std::cout;
using std::vector;

int beginCPoints = 0;
int beginRPoints = 0;
int beginMPoints = 0;
const int gamesLeft = 56;

vector<double> makeOddsOfkWins() {
  vector<double> v{1};
  for (int i = 1; i <= gamesLeft; ++i) {
    v.push_back(v.back() / 2);
    for (auto p = v.size() - 2; p >= 1; --p)
      v[p] = (v[p] + v[p - 1]) / 2;
    v[0] /= 2;
  }
  return v;
}

int main() {
  auto pC = 0.0;
  auto pM = 0.0;
  auto pR = 0.0;
  auto pThreeWayTie = 0.0;
  auto pCMTie = 0.0;
  auto pCRTie = 0.0;
  auto pMRTie = 0.0;

  auto pOfkPoints = makeOddsOfkWins();
  auto sum = 0.0;
  for (auto d : pOfkPoints)
    (cout << d << " "), sum += d;
  cout << sum << "\n";

  sum = 0;
  for (auto c = 0; c <= gamesLeft; ++c)
    for (auto r = 0; r <= gamesLeft; ++r)
      for (auto m = 0; m <= gamesLeft; ++m) {
        auto p = pOfkPoints[c] * pOfkPoints[m] * pOfkPoints[r];
        sum += p;
        auto cPoints = beginCPoints + c;
        auto mPoints = beginMPoints + m;
        auto rPoints = beginRPoints + r;
        if (cPoints == mPoints && cPoints == rPoints)
          pThreeWayTie += p;
        if (cPoints == rPoints && cPoints > mPoints)
          pCRTie += p;
        if (cPoints == mPoints && cPoints > rPoints)
          pCMTie += p;
        if (mPoints == rPoints && mPoints > cPoints)
          pMRTie += p;
        if (cPoints > mPoints && cPoints > rPoints)
          pC += p;
        if (mPoints > cPoints && mPoints > rPoints)
          pM += p;
        if (rPoints > cPoints && rPoints > mPoints)
          pR += p;
      }
  cout << "\nsum=" << sum << "\n";
  cout << "Starting with C=" << beginCPoints << " R=" << beginRPoints
       << " M=" << beginMPoints << " and " << gamesLeft << " games left:\n";
  cout << "C=M=R " << pThreeWayTie << "\n";
  cout << "C=M>R " << pCMTie << "\n";
  cout << "C=R>M " << pCRTie << "\n";
  cout << "M=R>C " << pMRTie << "\n";
  cout << "C>M,R " << pC << "\n";
  cout << "M>C,R " << pM << "\n";
  cout << "R>C,R " << pR << "\n";
  cout << "Overall odds: C:" << pC + (pCMTie + pCRTie) / 2 + pThreeWayTie / 3
       << " M:" << pM + (pCMTie + pMRTie) / 2 + pThreeWayTie / 3
       << " R:" << pR + (pCRTie + pMRTie) / 2 + pThreeWayTie / 3 << "\n";
  cout << pC + (pCMTie + pCRTie) / 2 + pThreeWayTie / 3 << " "
       << pR + (pCRTie + pMRTie) / 2 + pThreeWayTie / 3 << " "
       << pM + (pCMTie + pMRTie) / 2 + pThreeWayTie / 3 << "\n";
  return 0;
}