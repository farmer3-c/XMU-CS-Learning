#include <bits/stdc++.h>
using namespace std;

int n;
vector<int> a;
void perm(int m)
{
    if (m == n)
    {
        for (int i = 0; i < n; i++)
        {
            cout << a[i] << " ";
        }
        cout << endl;
    }
    else
    {
        for (int i = m; i < n; i++)
        {
            swap(a[m], a[i]);
            perm(m + 1);
            swap(a[m], a[i]); // backtrack
        }
    }
}
int main()
{
    cin >> n;

    for (int i = 0; i < n; i++)
    {
        a.push_back(i + 1);
    }
    perm(0);
}
