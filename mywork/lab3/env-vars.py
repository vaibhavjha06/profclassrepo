#!/Users/vaibhavjha/opt/anaconda3/bin/python3

import os

os.environ["FAV_SPORT"] = "Cricket"
os.environ["MEAT"] = "Mutton"
os.environ["Student"] = "Yes"

FAV_SPORT = input('What is your favorite sport? ' )
MEAT = input('What is your favorite meat? ' )
Student = input('Are you a student? ' )

os.environ["FAV_SPORT"] = FAV_SPORT
os.environ["MEAT"] = MEAT
os.environ["Student"] = Student

FAV_SPORT_ENV = os.getenv('FAV_SPORT')
MEAT_ENV = os.getenv('MEAT')
Student_ENV = os.getenv('Student')

print(FAV_SPORT_ENV)
print(MEAT_ENV)
print(Student_ENV)

# I have been trying every possible way to add the variables to my environment.
# But every time I've tried to export it's given me a syntax error with the first character of the variable I am exporting. If you could explain what it is I need to do, I'd appreciate it.
