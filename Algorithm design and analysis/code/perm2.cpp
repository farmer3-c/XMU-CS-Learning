#include <bits/stdc++.h>
using namespace std;

int n;
vector<int> a;
void perm(int m)
{
    if (m == 0)
    {
        for (int i = 0; i < n; i++)
        {
            cout << a[i] << " ";
        }
        cout << endl;
    }
    else
    {
        for (int i = 0; i < n; i++)
        {
            if (a[i] == 0)
            {
                a[i] = m;
                perm(m - 1);
                a[i] = 0;
            }
        }
    }
}
int main()
{
    cin >> n;

    for (int i = 0; i < n; i++)
    {
        a.push_back(0);
    }
    perm(n);
}
