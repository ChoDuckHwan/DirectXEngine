#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <vector>
#include <string>
#include <queue>

using namespace std;
int INF = 2147483647;

void BFS(const int& start, const int& target)
{
    int VisitTimeSize = target * 2 + 1;
    vector<int> VisitTime(VisitTimeSize, INF - 1);
    VisitTime[start] = 0;

    queue<int> queue_nextvisit;
    queue_nextvisit.push(start - 1);
    VisitTime[start - 1] = 1;
    queue_nextvisit.push(start + 1);
    VisitTime[start + 1] = 1;
    queue_nextvisit.push(start * 2);
    VisitTime[start * 2] = 1;

    while (!queue_nextvisit.empty())
    {
        int nowvisit = queue_nextvisit.front();
        queue_nextvisit.pop();        
        if (nowvisit > 0 && nowvisit * 2 < VisitTimeSize)
        {
            if (VisitTime[nowvisit] + 1 < VisitTime[nowvisit - 1])
            {
                VisitTime[nowvisit - 1] = VisitTime[nowvisit] + 1;
                queue_nextvisit.push(nowvisit - 1);
            }
            if (VisitTime[nowvisit] + 1 < VisitTime[nowvisit + 1])
            {
                VisitTime[nowvisit + 1] = VisitTime[nowvisit] + 1;
                queue_nextvisit.push(nowvisit + 1);
            }
            if (VisitTime[nowvisit] + 1 < VisitTime[nowvisit * 2])
            {
                VisitTime[nowvisit * 2] = VisitTime[nowvisit] + 1;
                queue_nextvisit.push(nowvisit * 2);
            }
        }
    }

    printf("%d\n", VisitTime[target]);
}

int main()
{
    int N, K;
    cin >> N >> K;

    BFS(N, K);
}