# STRATEGY PATTERN
*Written by Ramazan Burak Korkmaz*
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

### Definition
The Strategy Pattern is one of[the Gang of Four (GoF)](https://www.geeksforgeeks.org/gang-of-four-gof-design-patterns/) [1] design patterns in object-oriented programming. Its primary purpose is to allow the user to inject an algorithm at runtime without needing to change the subject (class) itself. This pattern achieves this by decoupling behaviors from the class, resulting in code that is much more flexible and scalable.
<center>
<img src="https://refactoring.guru/images/patterns/diagrams/strategy/solution.png?id=0813a174b29a2ed5902d321aba28e5fc">
</center>
<center>Strategy Pattern [2]</center>

### Use Case Scenario
Let's say you and your colleges come up with a neat architecture and code base to implement an automation line code. Also let's say your code benefits from use of inheritance. Everything is good until some day, your boss comes to you says "you know what how about we add your code this completely different approach of automation line". You and your colleges begin to implement new automation approach, and quickly realize that new automation line shares nothing similar to previous ones. In this situation, you either change your whole structure to adapt new system, or try to come up with work around solutions which is usually not a way to go. The strategy pattern shines here. What strategy patttern does is to store each behaviours as composition. Therefore it isolates algorithms and your clients (class). Once isolated, no change affects main class.


### How to implement & Example
##### LABVIEW
- **Understanding the Strategy Pattern**
In the Strategy Pattern, the main class is typically referred to as the Context, while the behaviors that have been decoupled from this main class are called Strategies. Although I have not named my classes and interfaces according to this convention, the underlying principles remain the same.
- **Example Overview**
In this example, we have a Person class that includes Learn() and Speak() methods. These methods invoke their corresponding strategy implementations. The strategies are defined by the interfaces ILearnBehaviour and ISpeakBehaviour, along with their concrete implementations.
UML Diagram

<center><img src="Related Images/UML Diagram.png"></center>

- **Behavior Invocation in the Person Class**
One of the key aspects of the Strategy Pattern is how the Person class determines which behavior to execute. This is achieved by storing references to strategy interfaces as attributes within the Person class.
These references do not point directly to concrete behavior classes; instead, they reference interfaces. For instance, the Speak() behavior is represented by the ISpeakBehaviour interface, which is implemented by concrete classes such as SpeakEnglish and SpeakTurkish. This design allows the Person class to utilize either implementation interchangeably, as they both adhere to the common Speak() method defined by the interface.
- **Conclusion**
By utilizing interfaces for behavior references, the Strategy Pattern promotes flexibility and decoupling within the code. This allows the Person class to dynamically change its behavior at runtime, enhancing the overall design and maintainability of the application. 

##### C#
- **SOON!**

### Videos
- Strategy Pattern – Design Patterns (ep 1) by [Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi)
[![Strategy Pattern – Design Patterns (ep 1)](https://img.youtube.com/vi/v9ejT8FO-7I/0.jpg)](https://www.youtube.com/watch?v=v9ejT8FO-7I "Strategy Pattern – Design Patterns (ep 1)")

### Sources
- [1] https://www.geeksforgeeks.org/gang-of-four-gof-design-patterns
- [2] https://stackoverflow.com/questions/19331362/using-an-image-caption-in-markdown-jekyll




 

