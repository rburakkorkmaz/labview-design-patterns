# PROXY PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Proxy design pattern is one of the structural design patterns. It involves creating a proxy class that acts as a substitute for the real class and adds behaviors related to controlling access to the main class without modifying its code.
Its working principle is similar to the Decorator pattern, where a decorator class implements the same interface as the real class and holds a reference to the real class in its properties. Although these two patterns are similar, the Decorator pattern is mainly used to extend or alter the behavior or result of the real class, whereas the Proxy pattern is focused on controlling or managing access to the real class. For instance, a common use case for the Proxy pattern is restricting certain users from accessing the real class, such as implementing security checks or logging. In this scenario, the Proxy doesn't modify the behavior of the main class itself (users still interact with the same methods if they are granted access); it only changes the behavior around how or when the class is accessed.
For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/proxy), which explains this pattern very well.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/proxy/structure.png?id=f2478a82a84e1a1e512a8414bf1abd1c">

Adapter Pattern [1]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project, my objective was to create a `UIManager` class that displays user interfaces based on provided input. The challenge was that each user interface required a different user access level. There are three distinct user levels:
- **`Operator`**: The default user level. It is only authorized to open the `MainPage` window.
- **`Admin`**: The second level of access. It has permission to open both the `MainPage` and `SettingsPage`.
- **`System Manager`**: The highest level. In addition to having the same permissions as the other two levels, it can also request access to the `DebuggingPage`.

The security implementation is handled by the UIManagerProxy class, which acts as the proxy for the UIManager. Its sole purpose is to control the flow of requests to the UIManager and block access to certain pages based on the user's access level.

<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### IManager Interface

Main interface that both the real and proxy class implements. Both of these classes **are a IManager**, therefore client is not able to see difference between proxy one and the real one.

### UI Manager Class
 
The real class that implements showing user interfaces logic. It can not block users. It is only goal to open a new page according to given input.

### UIManager Proxy Class

The core of this design pattern is that the `UIManager Proxy` **is an** implementation of the `IManager` interface. However, it does not contain any business logic itself. Instead, it holds a reference to the real `UI Manager` class (which is instantiated in the proxy constructor) and delegates the actual work to it through the `Show UI` method. This method call is directed to the real `UI Manager` based on the user's access level. If the user's level is sufficient to access the requested page, the proxy class invokes the `Show UI` method in the `UI Manager`. However, if the user's level is insufficient, the proxy simply displays a dialog with a single button instead of granting access to the page.

## How to use
1) Launch `Launcher.vi`

2) If there are no issues, you will see the screen below. Page selection and button part is disabled because it is waiting for you to choose an User Level
<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP 1</h5>
</div>

3) After choosing the user level, the page part should be enabled

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP 3</h5>
</div>

4) If you try to click Show Page button with an user level that is not enough to see the choosen page. You should see and error message like the picture below.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP 4</h5>
</div>

5) If you choose an correct page according to your user level, you should be able to open a new page.

<div align="center">
    <img src="Related Images/How to Use Step 4.png">
    <h5>STEP 4</h5>
</div>


##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![Proxy Pattern – Design Patterns (ep 10)](https://img.youtube.com/vi/NwaabHqPHeM/0.jpg)](https://www.youtube.com/watch?v=NwaabHqPHeM "Proxy Pattern – Design Patterns (ep 10)")


- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The Proxy Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific](https://img.youtube.com/vi/TS5i-uPXLs8/0.jpg)](https://www.youtube.com/watch?v=TS5i-uPXLs8 "The Proxy Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific")



### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides
### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/proxy/structure.png?id=f2478a82a84e1a1e512a8414bf1abd1c




 

