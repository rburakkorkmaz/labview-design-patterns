# TEMPLATE METHOD PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Template Method Design Pattern is one of the behavioral design patterns. It shares similarities with the Strategy Pattern, but it relies on inheritance rather than composition, as seen in the Strategy Pattern. The core idea behind this pattern is straightforward: it defines a sequence of methods within a class, while allowing child classes to implement the specific logic for those methods. This means that while the overall sequence of methods remains consistent, individual methods can vary as needed.\
In the Template Method pattern, there is an abstract class, referred to as the Template Class. This class contains a fixed method (often named templateMethod(), although naming may vary) that implements the sequence of calls to other methods. The power of this pattern lies in its use of inheritance; since templateMethod() calls each of the other methods, all child classes must inherit these methods from the template class. Furthermore, because child classes inherit templateMethod(), they will utilize their overridden versions of the sequence methods. This behavior allows for the creation of new concrete classes for each variation needed, with only the necessary methods being modified.\
Despite its utility and power, the Template Method pattern can also be risky. It is crucial that each concrete class correctly implements all required methods from the parent template class due to inheritance. If not designed carefully, this can complicate the addition of new concrete classes and lead to maintenance challenges in the overall system.\
Overall, while the Template Method Design Pattern promotes code reuse and consistency in algorithm structure across subclasses, it requires careful design to avoid pitfalls associated with inheritance and method implementation.\
For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/template-method), which explains this pattern very well.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/template-method/structure.png?id=924692f994bff6578d8408d90f6fc459">

Template Method Pattern [1]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project, I tried to implement a engine tester system. Since I do not have proper equiments and time to simulate things, I only implemented string texts. There are three types of test modes in this system. These are:
- `Position Position Test`: We set throttle position of the engine and torque value of the dynamometer.
- `Position Speed Test`: We set throttle position of the engine, but this time a PID controller tries to adjust speed of the engine by applying torque from dynomometer.
- `Speed Torque Test`: We set throttle position to catch desired speed and torque value of the dynamometer.

Each of these test types are represented as concrete classes that inherits from Abstract Test class.

<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### Abstract Test Class

Base abstract template class of the template method design pattern. It implements methods below:

- `RunTest()`: The `templateMethod()` method where all the sequence is happening. Child classes MUST NOT override it.
- `DoBeforeTest()`: It is the first method in the sequence. General things such as creating a log file, setting alarms, etc should be made in this method. It is also implemented like RunTest() method, but if required child classes can override it.
- `CheckEquiments()`: The method to check real world equiments such as PLC communication, engine, dynamometer and its parameters, etc. and decide to start or cancel. It is also implemented like RunTest() method, but if required child classes can override it.
- `ApplyModeValues()`: The method to apply set values to engine and dynamometer. This method is abstract, so child classes must override it. The reason of being an abstract method is that this method what makes concrete classes vary. 
- `AfterTest()`: The method to do required procedures after a test is done. It is also implemented like RunTest() method, but if required child classes can override it. 

### PositionPositionTest Class
 
Represents Position Position test mode. Overrides `ApplyModeValues()` method according to test scenario

### PositionSpeedTest Class

Represents Position Speed test mode. Overrides `ApplyModeValues()` method according to test scenario

### SpeedTorqueTest Class
Represents Speed Torque test mode. Overrides `ApplyModeValues()` method according to test scenario

## How to use
1) Launch `Launcher.vi`

2) If there are no issues, you will see the screen below.
<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP 1</h5>
</div>

3) The checkboxes represents the equiment status for `CheckEquiments()`method. Therefore if you want a test with success, make sure select both of them. On the right side of checkboxes, there is a numeric control which you can control number of repeat this test mode must make. After that lastly you choose your desired test mode from the `Test Type` enum and click `Start Test`.

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP 3</h5>
</div>

4) After starting test, you will get some psedo test status information.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP 4</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![Template Method Pattern – Design Patterns (ep 13)](https://img.youtube.com/vi/7ocpwK9uesw/0.jpg)](https://www.youtube.com/watch?v=7ocpwK9uesw "Template Method Pattern – Design Patterns (ep 13)")



- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The Bridge Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific](https://img.youtube.com/vi/cGoVDzHvD4A/0.jpg)](https://www.youtube.com/watch?v=cGoVDzHvD4A "The Bridge Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific")

### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides
### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/template-method/structure.png?id=924692f994bff6578d8408d90f6fc459




 

