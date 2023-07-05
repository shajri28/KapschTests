class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __del__(self):
        print("object is being deconstructed")


p = Person("Mike", 25)
