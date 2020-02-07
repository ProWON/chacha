# -*- encoding: euc-kr -*-

import numpy as np
import pandas as pd

from matplotlib import font_manager, rc
font_name = font_manager.FontProperties(fname="c:/Windows/Fonts/malgun.ttf").get_name()
rc('font', family=font_name)

data = pd.read_csv("D:\\Users\\Web2\\Project1\\road_information.csv", encoding="euc-kr")

X = data.iloc[:, :3]
y = data.iloc[:, 3]

X_train = pd.get_dummies(X)

from sklearn.tree import DecisionTreeClassifier
model = DecisionTreeClassifier()
model.fit(X_train, y)

import sys
spot = sys.argv[1]
fellow = sys.argv[2]
tema = sys.argv[3]


fellow_family = 0
fellow_couple = 0
fellow_friend = 0
tema_sea = 0
tema_star = 0
tema_nightview = 0
tema_nature = 0

if spot == "1" :
    spot = 1
else :
    spot = 0

if fellow == "family" :
    fellow_family = 1
elif fellow == "couple" :
    fellow_couple = 1
elif fellow == "friend" :
    fellow_friend = 1
    
if tema == "sea" :
    tema_sea = 1
elif tema == "star" :
    tema_star = 1
elif tema == "night" :
    tema_nightview = 1
elif tema == "nature" :
    tema_nature = 1

dic = {"관광지":[spot],"동승자_가족":[fellow_family],"동승자_연인":[fellow_couple], "동승자_친구":[fellow_friend],
       "테마_바다":[tema_sea], "테마_별":[tema_star], "테마_야경":[tema_nightview], "테마_자연":[tema_nature]}

X_test = pd.DataFrame(dic)

result = model.predict(X_test)

listrs = result.tolist()
stringrs = ''.join(listrs)
stringrs = stringrs.replace(" ", "")
listrs = stringrs.split(",")
for i in range(len(listrs)) :
    print(listrs[i])


