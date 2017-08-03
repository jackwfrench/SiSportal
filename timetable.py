import random
subjectcodes = ['ACC', 'ACL', 'ANH', 'AQP', 'BCT', 'BIO', 'BUC', 'CFI', 'CHE', 'CMT', 'CON', 'CRL', 'DAN', 'DRA', 'DRP', 'ENC', 'ENG', 'FTM', 'FRN', 'GEO', 'GRA', 'HED', 'HOC', 'HOS', 'IGS', 'IPT', 'ITS', 'JAP', 'LES', 'MAA', 'MAB', 'MAC', 'MEN', 'MOH', 'MUS', 'PED', 'PHY', 'PRE', 'PVM', 'RAE', 'SOC', 'SOR', 'STY', 'TES', 'TOU', 'VAP', 'VAR']

ids = ['4', '10', '18', '54', '55', '61', '66', '69', '73', '82', '99', '108', '109', '124', '132', '136', '140', '145', '148', '154', '158', '164', '166', '169', '170', '172', '173', '176', '201', '215', '229', '238', '241', '249', '250']

subject12 = []

users = []

mysubject = []

for subjects in subjectcodes:
    classes = '12' + subjects + 'A'
    classes2 = '12' + subjects + 'B'
    classes3 = '12' + subjects + 'C'
    subject12.append(classes)
    subject12.append(classes2)
    subject12.append(classes3)

localsubjects = [subject12[0], subject12[3], subject12[6], subject12[9], subject12[12], subject12[15], subject12[18]]


for i in range(4):
    chosesubject = random.choice(localsubjects)
    mysubject.append(chosesubject)

for numbers in ids:
    users.append(int(numbers))

"""
for i in range(35):
    print((users[i], 9, mysubject[0], mysubject[1], mysubject[2], mysubject[3]), end='')
    print(',')
"""

print(localsubjects)
