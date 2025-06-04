#include <bits/stdc++.h>
using namespace std;
int n;
void InsertSort(vector<int> &a)
{
    int key;
    for (int j = 2; j <= n; j++)
    {
        key = a[j];
        int i = j - 1;
        while (i > 0 && a[i] > key)
        {

            a[i + 1] = a[i];
            i--;
        }
        a[i + 1] = key;
    }
}
int main()
{

    cin >> n;
    vector<int> a(n + 1);
    for (int i = 1; i <= n; i++)
    {
        cin >> a[i];
    }
    InsertSort(a);
    for (int i = 1; i <= n; i++)
    {
        cout << a[i] << " ";
    }
}