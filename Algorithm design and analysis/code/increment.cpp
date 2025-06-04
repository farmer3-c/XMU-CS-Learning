#include <bits/stdc++.h>
using namespace std;
int n;

void increment(vector<int> &a)
{
    int i = n - 1;
    while (a[i] == 1 && i > 0)
    {
        a[i] = 0;
        i--;
    }
    if (i > 0)
        a[i] = 1;
}
int main()
{
    cin >> n;
    vector<int> a(n, 0);
    for (int i = 0; i < n; i++)
    {
        increment(a);
        for (int j = 0; j < n; j++)
        {
            cout << a[j] << " ";
        }
        cout << endl;
    }
}