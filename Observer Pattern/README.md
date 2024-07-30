# OBSERVER PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

### **Definition**
The Observer pattern is an object-oriented design pattern that solves the problem of keeping multiple objects up-to-date with the state of a single object. It is particularly useful when dealing with the polling problem, where subscribers to a topic need to continuously check if anything has changed to stay current.\
The Observer pattern achieves this by creating a list of observers in the observable (subject) class. When a new update or change occurs that requires notifying the observers, the observable iterates through the observer list or collection and calls their respective update method, which is a common ancestor method named Update.\
Each child of the Observer interface is required to implement its own business logic in their own update method override. The data from the Observable is obtained by reference, which is passed along with the update method to the Observers. Observers use this Observable reference to retrieve related data from the Observable.
<div align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Observer_w_update.svg/1920px-Observer_w_update.svg.png">
Observer Pattern [1]</div>

### **Use Case Scenario & LabVIEW Implementation**
In the provided code, the author has implemented a Communication mock class, which represents a part of a larger system where data is generated or read from various elements. Additionally, there are Logger and Controller classes that require data from the Communication module to function properly.
The Logger class aims to create logs or reports based on the data received from the Communication module, such as speed, temperature, and other relevant information. On the other hand, the Controller class solely needs this data to drive certain engines, motors, or other components according to the speed or other related data.\
Both the Logger and Controller classes should be updated whenever new data is represented in the application from the Communication module. Therefore, it is the responsibility of the Communication module to notify each one of the observers (i.e., Logger and Controller) whenever a change occurs.
To achieve this, the author has likely implemented the Observer pattern, which is a behavioral design pattern that allows objects to be notified when the state of another object changes. The Observer pattern consists of the following key components:
1. **Subject (Observable)**
The Communication class acts as the subject or observable in this case.
It maintains a list of observers (e.g., Logger and Controller) and provides methods to attach, detach, and notify them.
2. **Observer**
The Logger and Controller classes are the observers in this implementation.
They define their own update methods to handle the data received from the Communication module.
3. **Update Mechanism**
Whenever new data is available in the Communication module, it notifies the registered observers by calling their update methods.
The observers then process the data according to their specific requirements (e.g., creating logs or driving engines).
By using the Observer pattern, the author has decoupled the Communication module from the Logger and Controller classes, making the code more flexible and maintainable. The Communication module does not need to know the specific implementation details of the observers, and new observers can be added or removed without affecting the Communication module.

<div align="center">
    <img src="Related Images/UML Diagram.png">
</div>

##### **C#**
- **SOON!**

### **Videos**

- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**

[![Observer Pattern - Design Patterns (ep 2)](https://img.youtube.com/vi/_BpmfnqjgzQ/0.jpg)](https://www.youtube.com/watch?v=_BpmfnqjgzQ "Observer Pattern - Design Patterns (ep 2)")

### **Sources**

[1] https://en.wikipedia.org/wiki/Observer_pattern




 

