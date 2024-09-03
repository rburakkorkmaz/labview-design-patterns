# ADAPTER PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Adapter pattern is one of the structural design patterns. It works like real-world electric adapters, which are used to convert one electrical standard to another. This pattern creates an adapter between two incompatible codebases without adding or changing any business logic.
The adapter class wraps the incompatible class, which in this situation is the adaptee method. From this point on, when the adaptee class wants to interact with the main codebase, it uses the adapter class instance. This adapter class has a generic request method that is implemented from the ITarget interface, which calls the adaptee method but converts the codebase part to a compatible version. For example, let's say the codebase uses a float, but the new adaptee requires a string. The adapter class takes the float and converts it to a string, which is compatible with the adaptee.
Unlike other design patterns, the Adapter pattern is particularly powerful when there is already an existing codebase.
For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/adapter), which explains this pattern very well.

<div align="center">
<img src="https://refactoring.guru/images/patterns/content/adapter/adapter-en.png">

Really clever analogy for Adapter pattern [1]
</div>

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/adapter/structure-object-adapter.png">

Adapter Pattern [2]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project, I aimed to replicate a scenario where we initially created a signal generator solely to graph its output, but later decided to log its data. However, the project is already developed, and it is too late to make changes to the codebase. Additionally, let's assume that the logger package we are trying to implement in the project requires a different type of data. **Do not fear; the Adapter pattern is here!** We will implement the LoggerAdapter, whose sole purpose is to convert the Signal Data Type Definition to the Logger Data Type Definition.

<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### Data Generator Class

This class is the main signal generator class. Its sole mission is to generate a signal based on the given parameters. It represents the codebase we are trying to "ADAPT."

### ITarget Interface
 
This is a generic adapter design pattern interface. It contains a single method, Request(), which adapter classes are expected to implement.

### LoggerAdapter Class

The hero of the story is the adapter class. It has an Adaptee property that holds a reference to the adaptee class, in this case, the Logger. It also implements the Request method from the ITarget interface. The Request method takes the Signal Data type definition from the Data Generator instance, converts it to the Logger Data type definition, and then calls the New Log method in the Logger class.

### Logger Class

Basic TDMS logger class implementation. It has three main methods are:
- `Start Logging`: Creates a TDMS file and assings `TDMS File` property.
- `New Log`: Adds one instance of data to the current active TDMS File.
- `Stop Logging`: Closes TDMS File reference.

## How to use
1) Launch `Launcher.vi`

2) If there are no issues, you will see the screen below. It starts logging directly. You do not need to do anything.
<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP 1</h5>
</div>

3) Experiment with Signal Type, Amplitude, Frequency or Phase to see if graph changes.

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP 3</h5>
</div>

4) Click stop to close Launcher.vi. It also stops logging. If everything went right, you should see a log.tdms file under the Data folder in the project directoy.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP 4</h5>
</div>


##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![Adapter Pattern – Design Patterns (ep 8)](https://img.youtube.com/vi/2PKQtcJjYvc/0.jpg)](https://www.youtube.com/watch?v=2PKQtcJjYvc "Adapter Pattern – Design Patterns (ep 8)")


- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The Command Pattern Explained and Implemented in Java | Behavioral Design Patterns | Geekific](https://img.youtube.com/vi/wA3keqCeKtM/0.jpg)](https://www.youtube.com/watch?v=wA3keqCeKtM "The Command Pattern Explained and Implemented in Java | Behavioral Design Patterns | Geekific")



### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides
### **Sources**

[1] https://ajayiyengar.com/wp-content/uploads/2017/03/command_pattern.jpg




 

