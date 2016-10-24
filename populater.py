import random
import time

def strTimeProp(start, end, format, prop):
    stime = time.mktime(time.strptime(start, format))
    etime = time.mktime(time.strptime(end, format))
    ptime = stime + prop * (etime - stime)
    return time.strftime(format, time.localtime(ptime))

def randomDate(start, end, prop):
    return strTimeProp(start, end, '%m/%d/%Y %I:%M %p', prop)

clubs = []
pc = []
ms = []

with open("./student_clubs_table.txt", 'w') as myFile:
    clubs = ["TriBeta",
             "PANDAS",
             "Pen 15 Club",
             "Kool Kids Klub",
             "American Chemical Society",
             "Pre-health Professionals"]

    for i in range(0,6):
        pc.append(random.randint(0,10000))


    ms = ["We are a science.",
          "We are Python enthusiats.",
          "We are pen collectors.",
          "We are the kool kids of the school",
          "We are american undergraduate chemist",
          "We are future health professions"]

    for i in range(0,6):
        myFile.write(clubs[i])
        myFile.write('\t')
        myFile.write(str(pc[i]))
        myFile.write('\t')
        myFile.write(ms[i])
        myFile.write('\n')

with open("./membership_table.txt", 'w') as myFile:
    for i in range(0,50):
        myFile.write(clubs[random.randint(0,5)])
        myFile.write('\t')
        myFile.write(str(random.randint(0,10000)))
        myFile.write('\t')
        myFile.write(randomDate("1/1/2008 1:30 PM", "1/1/2009 4:50 AM", random.random()))
        myFile.write('\t')
        myFile.write(randomDate("1/1/2014 1:30 PM", "1/1/2015 4:50 AM", random.random()))
        myFile.write('\n')

