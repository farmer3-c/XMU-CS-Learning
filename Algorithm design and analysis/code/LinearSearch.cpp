#include <bits/stdc++.h>
using namespace std;
int n;
int linearSearch(vector<int> &a, int k)
{
    int i = 0;
    while (a[i] != k && i < n)
    {
        i++;
    }
    if (i < n)
        return i;
    else
        return -1;
}
int main()
{
    cin >> n;
    vector<int> a(n);
    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }
    int k;
    cin >> k;
    int index = linearSearch(a, k);
    cout << index << endl;
}