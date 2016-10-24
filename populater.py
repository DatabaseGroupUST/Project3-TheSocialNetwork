import random

with open("./student_clubs_table.txt", 'w') as myFile:
    clubs = ["TriBeta",
             "PANDAS",
             "Pen 15 Club",
             "Kool Kids Klub",
             "American Chemical Society",
             "Pre-health Professionals"]

    pc = []
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
