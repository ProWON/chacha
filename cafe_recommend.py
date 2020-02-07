# -*- encoding:euc-kr -*-
import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.tree import DecisionTreeClassifier

from matplotlib import font_manager, rc
font_name = font_manager.FontProperties(fname="c:/Windows/Fonts/malgun.ttf").get_name()
rc('font', family=font_name)

data = pd.read_csv("D:\\Users\\Web2\\Project1\\personality_cafe.csv", encoding="euc-kr")

import sys
 
user_type = sys.argv[1]
 
if user_type == "A":
    user_type = "외향적"
elif user_type == "B":
    user_type = "내성적"
elif user_type == "C":
    user_type = "개방적"
elif user_type == "D":
    user_type = "폐쇄적"

course_name = sys.argv[2]


cafe_test = {"성향":[user_type], "길":[course_name]}

X = data.iloc[:, :2]
y = data.iloc[:, 2]

cafe_test = pd.DataFrame(cafe_test, index=[65])

cafe_concat = pd.concat([X, cafe_test])

le = LabelEncoder()

for col in list(cafe_concat.columns):
    cafe_concat[col] = le.fit_transform(cafe_concat[col])

X_train = cafe_concat.iloc[:64, :]
 
X_predict = cafe_concat.iloc[64:, :]

model = DecisionTreeClassifier()

model.fit(X_train, y)

result = model.predict(X_predict)

listrs = result.tolist()
stringrs = ''.join(listrs)
listrs = stringrs.split(",")


cafe_data = pd.read_csv("D:\\Users\\Web2\\Project1\\cafe_info.csv", encoding="euc-kr")

if stringrs == "x":
    print("x")
    
else:
    for i in range(len(listrs)):
        for j in cafe_data.columns[:2]:
            plist = cafe_data[cafe_data["카페 이름"]==listrs[i]][j].tolist()
            pstring = ''.join(plist)
            print(pstring)
        for k in cafe_data.columns[2:4]:
            plist = cafe_data[cafe_data["카페 이름"]==listrs[i]][k].tolist()
            print(plist)
        for l in cafe_data.columns[4:9]:
            plist = cafe_data[cafe_data["카페 이름"]==listrs[i]][l].tolist()
            pstring = ''.join(plist)
            print(pstring)
