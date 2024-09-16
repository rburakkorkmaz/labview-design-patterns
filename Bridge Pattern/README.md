# BRIDGE PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Bridge pattern is a structural design pattern that addresses the challenge of managing complex class hierarchies by separating large classes into two distinct hierarchies: abstraction and implementation. This separation allows for independent evolution of both hierarchies and reduces the exponential growth of subclasses.\
In the abstraction hierarchy, we typically find high-level concepts or interfaces that define the core features of a system. Examples include shapes, file types, or user interface elements. The implementation hierarchy, on the other hand, contains the concrete implementations or business logic, such as specific colors for shapes or methods for handling different file types.\
The power of the Bridge pattern becomes evident when dealing with systems that have multiple orthogonal dimensions of variation. Consider a scenario with shapes (Triangle, Square, Circle) and colors (Blue, Red, Pink). Without the Bridge pattern, each combination of shape and color would require a separate class, leading to a combinatorial explosion as new shapes or colors are added.\
For instance, with 3 shapes and 3 colors, we would need 9 distinct classes (Blue Triangle, Red Square, Pink Circle, etc.). Extending this to 50 shapes and 50 colors would result in an unwieldy 2,500 classes.\
The Bridge pattern elegantly solves this problem by decoupling the abstraction (shapes) from the implementation (colors). Instead of creating a class for each combination, we create separate hierarchies for shapes and colors, connecting them through composition. This approach results in a much more manageable system with only 100 classes (50 shapes + 50 colors) rather than 2,500.\
This pattern not only reduces the number of classes but also enhances flexibility and maintainability. New shapes or colors can be added independently without affecting the existing structure. Furthermore, it adheres to the Open/Closed Principle, allowing for extension without modifying existing code.\
For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/bridge), which explains this pattern very well.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/bridge/problem-en.png">

Shape and Color Example [1]
</div>

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/bridge/structure-en.png">

Bridge Pattern [2]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project, I tried to implement a file logging and viewing mechanism. The idea is to seperate File Type and File Method into two different hierarchies. 

The File types are:
- `Excel`
- `TDMS`
File Methods are:
- `Logger`
- `Viewer`

so basically we have combinations below:
- `Excel Logger`
- `Excel Viewer`
- `TDMS Logger`
- `TDMS Viewer`


<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### DataType Abstract Class

Base Abstraction class of the bridge design pattern. It has `Log` and `View` methods to be implemented by its children.

### Excel and TDMS Class
 
Refined Abstraction classes. These classes represents file type and delagate logging or viewing job to Concrete Implementations.

### IDataMethod Interface

Base of the Implementations. It has an abstract Execute method to be implemented by its children (Concrete Implementations)

### Viewer and Logger
Concrete Implementation classes. These classes implement Execute method according to their own bussiness logic.

## How to use
1) Launch `Launcher.vi`

2) If there are no issues, you will see the screen below. You can select File Type and File Method from above.
<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP 1</h5>
</div>

3) In the Log mode, you can write any double value to `Speed` and `Torque` section and click `LOG` button to write data to selected File Type. In the picture, I was writing to an TDMS file. 

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP 3</h5>
</div>

4) In View mode, the program automatically reads the file with interval given as Reflesh Rate parameter.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP 4</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![Bridge Pattern – Design Patterns (ep 11)](https://img.youtube.com/vi/F1YQ7YRjttI/0.jpg)](https://www.youtube.com/watch?v=F1YQ7YRjttI "Bridge Pattern – Design Patterns (ep 11)")


- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The Bridge Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific](https://img.youtube.com/vi/88kAIisOiYs/0.jpg)](https://www.youtube.com/watch?v=88kAIisOiYs "The Bridge Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific")

### Text Based Sources
- **[Bridge Pattern](https://ucemucar.medium.com/bridge-pattern-89c1b3fab343) by Uğur Cem Uçar**

### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides
### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/bridge/problem-en.png
[2] https://refactoring.guru/images/patterns/diagrams/bridge/structure-en.png




 

