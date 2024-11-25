class Plant:
    def __init__(self, name, height):
        self.__name = name
        self.__height = height

    def getName(self):
        return self.__name

    def getHeight(self):
        return self.__height

    def grow(self, increment):
        self.__height += increment
        print(f"{self.__name} виросла на {increment} см.")


class Tree(Plant):
    def __init__(self, name, height, age):
        super().__init__(name, height)
        self.__age = age

    def shedLeaves(self):
        print(f"{self.getName()} скинув листя.")

    def getAge(self):
        return self.__age


class Keyboard:
    def __init__(self):
        self.__commands = {
            'G': self.growPlant,
            'S': self.shedLeaves,
        }

    def inputCommand(self, command, plant):
        if command in self.__commands:
            self.__commands[command](plant)

    def growPlant(self, plant):
        plant.grow(5) 

    def shedLeaves(self, plant):
        if isinstance(plant, Tree):
            plant.shedLeaves()
        else:
            print("Ця рослина не може скидати листя.")


if __name__ == "__main__":
    tree = Tree("Дуб", 200, 50)
    keyboard = Keyboard()

    while True:
        command = input("Введіть команду (G - рости, S - скидати листя, Q - вийти): ")
        if command.upper() == 'Q':
            break
        keyboard.inputCommand(command.upper(), tree)
        
        print(f"Назва: {tree.getName()}, Висота: {tree.getHeight()} см, Вік: {tree.getAge()} років.")

