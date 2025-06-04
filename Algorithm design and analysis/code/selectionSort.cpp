#include <bits/stdc++.h>
using namespace std;
#define MAXN 1000
vector<int> a(MAXN);
int n;

void selectionSort(int i)
{
    if (i > n)
        return;
    else
    {
        int k = i;
        for (int j = i + 1; j <= n; j++)
        {
            if (a[j] < a[k])
            {
                k = j;
            }
        }
        if (k != i)
        {
            swap(a[i], a[k]);
        }
        selectionSort(i + 1);
    }
}
int main()
{
    cin >> n;
    for (int i = 1; i <= n; i++)
    {
        cin >> a[i];
    }
    selectionSort(1);
    for (int i = 1; i <= n; i++)
    {
        cout << a[i] << " ";
    }
}