import unittest
from example_pkg.person import Person, BadPerson


class TestPerson(unittest.TestCase):
    def setUp(self):
        name = 'Steve'
        age = 20
        self.person = Person(name, age)

    def test_name(self):
        self.assertEqual(self.person.name, 'Steve')

    def test_age(self):
        self.assertEqual(self.person.age, 20)

    def test_bark(self):
        bark_string = self.person.bark()
        self.assertIsNotNone(bark_string)

    def cleanUp(self):
        del self.person


class TestBadPerson(unittest.TestCase):
    def setUp(self):
        first_name = 'Steve'
        last_name = 'Treefort'
        self.person = BadPerson(first_name, last_name)


    def test_full_name(self):
        full_name = 'Steve Treefort'
        self.assertEqual(self.person.fullName(), full_name, 'Incorrectly full name.')


if __name__ == '__main__':
    unittest.main()
