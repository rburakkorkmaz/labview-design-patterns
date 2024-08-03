# FACTORY METHOD PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Factory Method Pattern is a creational design pattern that helps you decouple object creation and delegate it to a class called a Factory. These factory classes are responsible for instantiating Product classes. Each product class has a corresponding factory class. By delegating object creation to a class, changing the product class does not affect the creation part of the code, which aligns with the Open/Closed Principle. Additionally, since Product classes share a mutual parent abstract class or interface, the business logic of the system does not need to concern itself with the methods of each product type.
For example, in a project, there could be a Jet Engine or a Car Engine. While the working principles and effects of these engines are completely different, they both share a common method, such as StartEngine, which is used by the main system when starting one of these engines.
This design pattern provides a flexible and maintainable approach to object creation, enabling easier extension and modification of code while adhering to solid design principles.\
[Refactoring Guru](https://refactoring.guru/design-patterns/factory-method) explains this pattern really good. I highly recommend it.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/factory-method/structure.png?id=4cba0803f42517cfe8548c9bc7dc4c9b">

Factory Method Pattern [1]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In the provided code, I implemented a car factory scenario where the user can select a car type. Upon selection, the user receives the name of the chosen type along with an image representing it. In the background, the selected car type is created for display to the user. For the creation process, I utilized the factory method design pattern.\
<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### Abstract CarFactory Class

The ancestor class of Car Factories. It defines `CreateProduct`, but does not implement it. I used abstract class here because I wanted to be able to `Destroy` all concrete factory classes with a mutual `Destroy` method. I implemented `Destroy` method in the abstract class, so every class can inherit it.

### Concrete Factory Classes
 
Concrete Factories are responsible from implementing `CreateProduct` method, therefore they are responsible from creating products. There are three concrete factory classes right now. These are:
- SedanCarFactory
- HatchbackCarFactory
- SUVCarFactory

### ICarProduct Interface

The interface all car products share. It defines `GetCarImage` and `GetCarType` methods. These methods are implemented differently in each of the concrete classes that implements the interface. 

### Car Concrete Class

Concrete car classes that represents real cars as class objects. If there were no factory method design pattern, we would create these classes with a creation method or new() keyword in the code by hand. Now, since they have their own factory classes, we do not have to create them manually. Instead, all we have to do is call the corresponding factory class's `CreateProduct` method. Also, if in the future I decide to add a `Jeep` or other new car type to my code, all I have to do is implement the `ICarProduct` interface in this new car type class and create a factory class for it.


## How to use
1) Launch `Launcher.vi`
2) If there is no problem you will the screen below

<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP1</h5>
</div>
3) There is a combobox you can select car type you want. Please select your car type from there. Once you select screen will be something like below.

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP2</h5>
</div>
4) Lastly, once you click `CREATE SELECTED CAR` button, you will be able to see an image of choosen car type and string of car type right above the button.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP3</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**

- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**

[![Factory Method Pattern - Design Patterns (ep 4)](https://img.youtube.com/vi/EcFVTgRHJLM/0.jpg)](https://www.youtube.com/watch?v=EcFVTgRHJLM "Factory Method Pattern - Design Patterns (ep 4)")

### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/factory-method/structure.png?id=4cba0803f42517cfe8548c9bc7dc4c9b




 

