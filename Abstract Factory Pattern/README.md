# ABSTRACT FACTORY PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Abstract Factory Pattern is a creational design pattern that allows for the creation of families of related objects without specifying their concrete classes. This pattern is particularly useful in scenarios where related objects are required, such as in a furniture set where different themes exist. For instance, it would be illogical to pair a modern chair with a traditional table, as they do not match.\
Similar to the Factory Method Pattern, the Abstract Factory Pattern utilizes a factory to produce objects. However, in this case, the factory is defined as an interface or abstract class. This design choice enables the creation of individual factory classes for different groups. For example, you might define a FurnitureFactory interface, which can then be implemented by ModernFurnitureFactory and TraditionalFurnitureFactory. Each of these theme-specific factories can instantiate objects that adhere to the same design theme.\
The main advantage of the Abstract Factory Pattern is that it decouples the object creation logic from the rest of the code. This means that the client code can work with abstract interfaces instead of concrete classes, allowing for greater flexibility and easier maintenance. If new product families need to be added, the existing code remains unchanged, minimizing the risk of introducing bugs. This pattern effectively encapsulates the creation of related objects, ensuring that they are compatible with one another, which is essential for maintaining a cohesive design.\
[Refactoring Guru](https://refactoring.guru/design-patterns/abstract-factory) explains this pattern really good. I highly recommend it.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/abstract-factory/structure-indexed.png">

Abstract Factory Pattern [1]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In the provided code, I implemented a car factory scenario where the user can select a car type. Upon selection, the user receives the name of the chosen type along with an image representing it. In the background, the selected car type is created for display to the user. For the creation process, I utilized the factory method design pattern. 

<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### Abstract EngineFactory Class

This is the parent EngineFactory class. All type of Engine Factories implement this abstract class. There are two abstract methods in the class which are `Create Motor` and `Create ECU`. Each concrete Engine Factory implements these two methods similar to Factory Method Pattern's `Create Product` method.  

### Concrete Factory Classes
 
Similar in Factory Method Pattern's `Create Product`method, these impelement two creation methods from parent class of EngineFactory. Concrete classes in my project are
- Gasoline Engine Factory
- Diesel Engine Factory
- Electric Engine Factory

### IMotor Interface

The interface for Motor classes. It simply has a `Rotate` method which takes degree input and rotates motor as much as the degree given.

### Motor Concrete Classes

Concrete motor classes are simply implements `IMotor` interface and its methods. They represent type of motors which would be seen in any real world Cars. Concrete classes in my project are
- Gasoline Motor
- Diesel Motor
- Electric Motor

### IECU Interface

The interface for ECU classes. It simply has a `Set Throttle` method which takes gas pedal percentage input and apply throttle to the motor as much as the throttle given.

### ECU Concrete Classes

Concrete ECU classes are simply implements `IECU` interface and its methods. They represent type of ECUs which would be seen in any real world Cars. Concrete classes in my project are
- Gasoline ECU
- Diesel ECU
- Electric ECU

## How to use
1) Launch `Launcher.vi`
2) If there is no problem you will the screen below

<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP1</h5>
</div>
3) There is a combo box you can select engine type you want. Once you click to the combo box you will see some options of engine types. 

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP2</h5>
</div>
4) Lastly, once you select a engine type and click `CREATE!` button, you will be able to see `Motor Type`and `ECU Type` strings change. These strings are purely feed from Get Class Name method which returns name of the class of an object given. Therefore it is not hardcoded. Also if you write some numeric values to `DEGREE` and `THROTTLE` numeric control places and press `APPLY`, you should see a message related to given value.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP3</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**

- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**

### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides

[![Abstract Factory Pattern – Design Patterns (ep 5)](https://img.youtube.com/vi/v-GiuMmsXj4/0.jpg)](https://www.youtube.com/watch?v=v-GiuMmsXj4 "Abstract Factory Pattern – Design Patterns (ep 5)")

### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/abstract-factory/structure-indexed.png




 

