name = [[1,2,3], [4,5,6], [7,8,9]]
print(name[0])

print(3 > 1 or 1 == 0)

age = 16
if(age >= 20):
    print("Hi")
elif(age >= 15):
    print("Normal")
else:
    print("No")

for key, i in enumerate(name):
    print(i)
    print(type(i))
    print(key)
    print(type(key))

for cnt in range(0, 10, 4):
    if(cnt > 5):
        break
    print(cnt)
