# COMPOSITE PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Composite design pattern is one of the structural design patterns that allows you to build a tree of objects that are related to each other through aggregation. Similar to the Decorator pattern, the Composite pattern is also recursive, meaning the entire tree can be managed from a single root recursively.
There are three core components of this pattern:
- **Component Interface:** This interface defines the methods that both Leaf and Composite classes must implement. It provides a common interface for all objects in the composition.
- **Leaf Class:** This class represents the individual objects in the composition. A Leaf has no children and performs specific operations or tasks. It implements the methods defined in the Component interface directly.
- **Composite Class:** In contrast to the Leaf, a Composite can contain one or more Component objects as its children, which can be either other composites or leaves. The Composite class typically does not implement any logic in its own methods; instead, it forwards requests to its child components. For example, when calling an Execute method on a composite, it will invoke the same method on all its children, creating a recursive chain.

The power of this pattern lies in its ability to treat both individual objects and compositions uniformly, simplifying client code and enhancing scalability. However, it requires careful generalization of the system to fit a tree-like structure effectively.

The Composite design pattern is particularly useful in scenarios involving hierarchical structures, such as graphical user interfaces, file systems, or organizational structures, where it is necessary to manage both individual elements and groups of elements consistently.\
For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/composite), which explains this pattern very well.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/composite/structure-en.png?id=b7f114558b594dfb220d225398b2b744">

Composite Pattern [1]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project, I tried to implement an inventory system. In the class diagram, I represented two different types of objects in the inventory system. These are:

- `Item`: A real world item. I used `Screw`, `Nail`, `Nut` and `Cable` to represent this class. NOTE: I did not create these items as children of the `Item` class. I simply filled `Name` property of the item.
- `Box`: A box that can hold items. It has no ability other than storing items. Therefore `GetNumberOfItems` method calls for child components `GetNumberOfItems` method and adds total number.

<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### Component Interface

Base representation of the tree objects. Each one of the objects in the tree structure is actually acts like a component (I did not say "is a" because we use an interface but the meaning is almost same). Since each one of the elements in tree is a component, all we have to do is to execute `GetNumberOfItems` method and get total number of real items in the inventory. This is the implementation of core idea of Composite pattern in my inventory system.

### Item Class
 
Represents real world objects. They do not have a child component. Therefore they implement real bussiness logic for their job in `GetNumberOfItems` method. 

### Box Class

Represents a box object. It stores not only `Items` but components. This small detail lets us build a box that holds another box and items. Since the inner box also has ability to store components, this exact same scenario can be repeated until there is no box but only items inside.


## How to use
1) open `Launcher.vi` file. In the VI file, you shoudl see a part like picture below. This part is where we create tree. You can change numbers of items initilized to the tree, add new boxes and change structure.

<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP 1</h5>
</div>

2) Run `Launcher.vi`. If there is no issue with changed structure you should see total number of items inside the inventory.
<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP 2</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![Composite Pattern – Design Patterns (ep 14)](https://img.youtube.com/vi/EWDmWbJ4wRA/0.jpg)](https://www.youtube.com/watch?v=EWDmWbJ4wRA "Composite Pattern – Design Patterns (ep 14)")

- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The Composite Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific](https://img.youtube.com/vi/oo9AsGqnisk/0.jpg)](https://www.youtube.com/watch?v=oo9AsGqnisk "The Composite Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific")

### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides
### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/composite/structure-en.png?id=b7f114558b594dfb220d225398b2b744




 

