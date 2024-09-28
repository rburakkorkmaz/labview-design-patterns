# STATE PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The State pattern is a behavioral design pattern that facilitates the management of an object's state by allowing it to change its behavior when its internal state changes. Instead of modifying the class itself for specific states, the State pattern enables the use of different state classes that encapsulate the behaviors associated with each state. This approach is indeed similar to the Strategy pattern, as both patterns involve changing behavior through composition rather than inheritance.

To comprehend the State pattern fully, it is essential to first understand the concept of a Finite-State Machine (FSM). An FSM is a computational model consisting of a finite number of states, transitions between those states, and inputs that trigger these transitions. In a graphical representation, each state is depicted as a circle, while arrows between states indicate events or methods that cause transitions. By mapping out all possible states and their transitions, we can visualize the system's behavior under various conditions.

The State pattern serves as an object-oriented implementation of a finite-state machine. While it is possible to use conditional statements to manage states, this leads to tightly coupled code that is difficult to maintain and extend. Instead, by employing object-oriented principles, we create a more modular and flexible design.

The implementation of the State pattern involves several key components:
- **Context Class**: This class represents the system that contains various states. It maintains a reference to a State interface, which defines common methods for all states.
- **State Interface**: This interface declares the methods that concrete state classes must implement. Each method corresponds to actions that can be performed in that particular state.
- **Concrete State Classes**: Each concrete class implements the State interface and provides specific behavior relevant to its state. For instance, if the context represents a traffic light system, states could include "Red", "Yellow", and "Green", each with its own logic for handling transitions.

When an event occurs that triggers a state change, the Context class invokes methods on its current state object. This allows the Context to execute behavior without needing to know about the underlying business logic of each state.

Overall, the State pattern is widely used due to its ease of implementation and adaptability. It promotes cleaner code by adhering to object-oriented principles and effectively managing complex state-dependent behavior in systems.

For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/bridge), which explains this pattern very well.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/state/problem1.png?id=503968745461a0970d1fbb4362dc186f">

Finite-State Machine. [1]
</div>

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/state/structure-en.png?id=38c5cc3a610a201e5bc26a441c63d327">

Bridge Pattern [2]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project I tried to implement a basic Traffic Lamp system. The lamp has three states. These are `Red`,`Yellow` and `Green`. The light changing mechanism is implemented inside states rather than in `TrafficLight` class


<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### TrafficLight Class

The Context class in the State pattern. It stores `State` reference to current state. `ChangeLight` method trigger a change in the current state.

### State Interface
 
It has two methods. `ChangeLight` method is where child classes implement their own state changing logic. `GetTrafficLightRef` is an common method where it returns the modified `TrafficLight` object reference

### RedState Class

Represents Red light state. `ChangeLight` method creates a new `YellowState` object and returns it as state output of the method.

### YellowState Class

Represents Yellow light state. `ChangeLight` method creates a new `GreenState` object and returns it as state output of the method.

### GreenState Class

Represents Green light state. `ChangeLight` method creates a new `RedState` object and returns it as state output of the method.

## How to use
1) Launch `Launcher.vi`

2) If there are no issues, you will see the screen below. You can select File Type and File Method from above.
<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP 1</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![State Pattern – Design Patterns (ep 17)](https://img.youtube.com/vi/N12L5D78MAA/0.jpg)](https://www.youtube.com/watch?v=N12L5D78MAA "State Pattern – Design Patterns (ep 17)")


- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The State Pattern Explained and Implemented in Java | Behavioral Design Patterns | Geekific](https://img.youtube.com/vi/abX4xzaAsoc/0.jpg)](https://www.youtube.com/watch?v=abX4xzaAsoc "The State Pattern Explained and Implemented in Java | Behavioral Design Patterns | Geekific")

### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides

### **Sources**
[1] https://refactoring.guru/images/patterns/diagrams/state/problem1.png?id=503968745461a0970d1fbb4362dc186f
[2] https://refactoring.guru/images/patterns/diagrams/state/structure-en.png?id=38c5cc3a610a201e5bc26a441c63d327




 

