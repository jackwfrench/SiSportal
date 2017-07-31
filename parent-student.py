import random

student_list = []
parent_list = []

for i in range(1000):
    student_list.append(i)

for i in range(490):
    parent_list.append(i)


for i in range(490):
    parent = random.choice(parent_list)
    student = random.choice(student_list)
    print((parent, student), end='')
    print (',')
