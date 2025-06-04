#include <bits/stdc++.h>
using namespace std;
void hanoi(int n, char a, char b, char c)
{
    if (n == 1)
    {
        cout << "move 1 " << a << "->" << c << endl;
    }
    else
    {
        hanoi(n - 1, a, c, b);
        cout << "move " << " " << n << a << "->" << c << endl;
        hanoi(n - 1, b, a, c);
    }
}
int main()
{

    int n;
    cin >> n;
    char a = 'A', b = 'B', c = 'C';
    hanoi(n, a, b, c);
}