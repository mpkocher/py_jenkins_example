"""An Simple Example module"""


class Person(object):
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):
        return "Person {x}".format(x=self.name)

    def __repr__(self):
        return "Person('{x}', y)".format(x=self.name, y=self.age)

    def say(self):
        return "Hello {x}".format(x=self.name)

    def bark(self):
        return "Bark. Bark. I am {x}".format(x=self.name)

    def summary(self):
        """Simple Summary of the Person"""
        outs = []
        outs.append("Person Summary")
        outs.append("name : {x}".format(x=self.name))
        outs.append("age  : {x}".format(x=self.age))
        return "\n".join(outs)


class BadPerson:
    def __init__(self, firstName, lastName):
        self.firstName = firstName
        self.lastName = lastName

    def fullName(self):
        return " ".join([self.firstName, self.lastName])
