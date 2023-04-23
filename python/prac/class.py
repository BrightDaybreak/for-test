class Student:
    def __init__(self):
        self.name = "Wakayama"

    def calc_avg(self, op1, op2):
        print((op1 + op2) / 2)


hoge = Student()
hoge.calc_avg(30, 89)

hoge.name = "Sato"
print(hoge.name)

hoge2 = Student()
print(hoge2.name)
