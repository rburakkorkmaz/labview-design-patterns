# DECORATOR PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

### **Definition**
The Decorator Pattern is a structural design pattern that allows behavior to be added to individual objects, either statically or dynamically, without affecting the behavior of other objects from the same class. This pattern is particularly useful for adhering to the Single Responsibility Principle, as it enables the extension of an object's functionality without modifying its structure.
The key idea behind the Decorator Pattern is to design a class structure that holds a reference to the same ancestor class (the wrapper) and implements that ancestor class. By doing so, a recursive structure occurs where class A wraps class B, which wraps class C, and so on. At the end of the recursive structure, there is a real context class that wraps no one.
This approach is particularly helpful when you need to wrap a method of an object and alter it slightly before returning it.\
[Refactoring Guru](https://refactoring.guru/design-patterns/decorator) explains this pattern really good. I highly recommend it.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/decorator/structure.png?id=8c95d894aecce5315cc1b12093a7ea0c">

Decorator Pattern [1]
</div>

### **Use Case Scenario & LabVIEW Implementation**
In the provided code, I tried to implement a Text formatter example. The idea is that there are content string which holds formatted version of a string and description string which hold formatted string explanation such as Bold, Italic, etc.\
<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### AbstractText Class

At the core of this implementation is the `AbstractText` class, which serves as an abstract base class. It does not implement any methods, which might raise the question of why an interface was not used. The answer lies in the inclusion of a `Destroy` method. 

- **Reason for Abstract Class**: The `Destroy` method is implemented within the `AbstractText` class. This design choice avoids the need to implement the `Destroy` method in every subclass that inherits from the interface. Instead, it centralizes the cleanup logic in the abstract class, which is called at the end of the program.

### Concrete Text Class

Following the `AbstractText` class is the concrete `Text` class. This class represents the terminal node in the decorator pattern and does not wrap any other `AbstractText` instances, as it has no attributes to hold such references.

- **Purpose**: The primary responsibility of the `Text` class is to provide implementations for the `GetContent` and `GetDescription` methods, returning constant strings. These strings can be further wrapped by other decorators.

### TextDecorator Class

The `TextDecorator` class is an abstract class that extends `AbstractText`. It contains a reference to another `AbstractText` instance, effectively allowing it to wrap a text object.

- **Functionality**: Concrete decorator classes inherit from `TextDecorator` and override the `GetContent` and `GetDescription` methods to include additional information. 

### Method Execution

In this design, each decorator calls the `GetContent` or `GetDescription` method of its wrapped `AbstractText` reference. The process is recursive:

1. The decorator class calls its wrapped text reference.
2. If the wrapped reference is also a decorator, it will further call its own wrapped text reference.
3. This continues until the base `Text` class is reached, which returns its constant string.

The final output is a combination of the wrapped text content and the additional formatting or description provided by each decorator.
##### **C#**
- **SOON!**

### **Videos**

- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**

[![Decorator Pattern – Design Patterns (ep 3)](https://img.youtube.com/vi/GCraGHx6gso/0.jpg)](https://www.youtube.com/watch?v=GCraGHx6gso "Decorator Pattern – Design Patterns (ep 3)")

### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/decorator/structure.png?id=8c95d894aecce5315cc1b12093a7ea0c




 

