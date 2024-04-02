# 1. 친화수란 a와 b라는 서로 다른 두 자연수가 있을 때,
# a의 자신을 제외한 약수를 모두 더하면 b가 되고,
# b의 자신을 제외한 약수를 모두 더하면 a가 되는 두 수의 쌍을 말한다.
# 예로 220, 284을 들면 220의 자신을 제외한 약수는 1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110이고,
# 이를 모두 더하면 284이다. 또한 284의 자신을 제외한 약수는 1, 2, 4, 71, 142이고,
# 이를 모두 더하면 220이 되므로 220과 284는 친화수이다.
# 자연수 A를 입력받았을 때, A 이하의 친화수의 쌍의 개수를 출력하는 프로그램을 만들어라.

ipNum = int(input("자연수 입력: "))
sumYaksu = [sum([i for i in range(1, n) if n % i == 0]) for n in range(1, ipNum+1)]
result = []

for i in range(len(sumYaksu)):
    for j in range(len(sumYaksu)):
        if (i+1 != j+1) and (i+1) == sumYaksu[j] and (j+1) == sumYaksu[i] and sorted([i+1, j+1]) not in result:
            result.append(sorted([i+1, j+1]))

print(len(result))


# 2. 리스트에 있는 숫자들의 최빈값을 구하는 프로그램을 만들어라.
# [12, 17, 19, 17, 23] = 17
# [26, 37, 26, 37, 91] = 26, 37
# [28, 30, 32, 34, 144] = 없다

# 최빈값 : 자료의 값 중에서 가장 많이 나타난 값 
# ① 자료의 값이 모두 같거나 모두 다르면 최빈값은 없다.
# ② 자료의 값이 모두 다를 때, 도수가 가장 큰 값이 1개 이상 있으면 그 값은 모두 최빈값이다.

numLst = [26, 37, 26, 37, 91]
frequencyCount = 2
modeWhich = []

for i in numLst:
    if i not in modeWhich:
        if numLst.count(i) == frequencyCount:
            modeWhich.append(i)
        elif numLst.count(i) > frequencyCount:
            modeWhich = [i]

print(modeWhich)