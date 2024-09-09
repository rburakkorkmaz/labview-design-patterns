# FACADE PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Facade design pattern is one of the structural patterns. It is sole intent is to create a giant wrapper around a complex system and makes interacting with the system easier. That's all there is to it. It is one of the easiest design patterns are there. There is no certain rule to create a facade class. The facade is usually one that has all references to all classes and subsystem in the complex system. Client (not the end-user) accesses the facade class to execute certain situations rather going one-by-one to each subsystem in the complex system. One possible issue with the facade pattern approach might be that the facade class itself becomes so powerful that it has all the references, therefore has so much dependency going on. Solution to this problem is rather simple, you just create additional facade classes and reference these additional ones to original one. By dividing the facade class, we balance the power levels of the each facade
For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/facade), which explains this pattern very well.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/facade/structure.png?id=258401362234ac77a2aaf1cde62339e7">

Facade Pattern [1]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project, I tried to simulate a house with various different rooms with
- Lighting System
- Heating System
- Security System
- Music System
These systems control their respected area of experties e.g Lighting system control Home's lamp states. The general house structure is like;
1. A House has
    1. Lighting System which has
        1. Rooms with each has different number of
            1. Lamps
    2. Heating System which has
        1. Rooms with each has different number of
            1. Air Conditioners
    3. Security System which has
        1. Rooms with each has different number of
            1. Security Devices
    4. Music System which has
        1. Rooms with each has different number of
            1. Music Devices
The Client class creates an `Home` object and passes that to the Facade class. The facade class controls the system from this Home object.


<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### Light Class

Represents lamp of a room. It has state property

### Air Conditioner Class

Represents heating system of a room. It has state property.

### Music Device Class

Represents speakers of a room. It has state property

### Security Class

Represents camera and defence mechanisms of a room. It has state property

### Room Class

Represents a room of a house. It has `Lights`, `Air Conditioners`, `Music Devices` and `Securities`. Holds these classes as seperate arrays.

### House Class

Represents a house. It has `LightSystem`, `HeatingSystem`, `MusicSystem` and `SecuritySystem`.

### System Interface

An interface to represent all systems. It has two method.
- `ToggleAllRooms`: Toggles states of all devices that system responsible from in all of the rooms.
- `ToggleByRoomName`:Toggles state of all devices inside a desired room.

### Lighting System Class

Manages all the `Lights` the house has. It implements `System` interface. It has three methods:
- `ToggleAllRooms`: Toggles states of all `Lights` in all of the rooms.
- `ToggleByRoomName`:Toggles state of all `Lights` inside a desired room.
- `SetScene`: Changes all `Lights` according to a predetermined scene plan (some of the lights are off, some are on).

### Heating System Class

Manages all the `Air Conditioners` the house has. It implements `System` interface. It has three methods:
- `ToggleAllRooms`: Toggles states of all `Air Conditioners` in all of the rooms.
- `ToggleByRoomName`:Toggles state of all `Air Conditioners` inside a desired room.
- `SetTemperature`: Sets desired temperature value to all `Air Conditioners` inside the desired room.

### Music System Class

Manages all the `Music Devices` the house has. It implements `System` interface. It has three methods:
- `ToggleAllRooms`: Toggles states of all `Music Devices` in all of the rooms.
- `ToggleByRoomName`:Toggles state of all `Music Devices` inside a desired room.
- `SetVolume`: Sets desired volume value to all `Music Devices` inside the desired room.

### Security System Class

Manages all the `Securities` the house has. It implements `System` interface. It has three methods:
- `ToggleAllRooms`: Toggles states of all `Securities` in all of the rooms.
- `ToggleByRoomName`:Toggles state of all `Securities` inside a desired room.
- `ChangeMode`: Changes security mode of all `Securities` inside the desired room.

### Facade Class

The main class of the Facade design pattern. It has a `House` property to control systems. Also it has two methods:
- `ToggleAllSystems`: Toggle all devices in all of the rooms.
- `ChangeHomeMode`: Sets all subsystems according to predetermined mode plans. 
<br />

##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![Facade Pattern – Design Patterns (ep 9)](https://img.youtube.com/vi/K4FkHVO5iac/0.jpg)](https://www.youtube.com/watch?v=K4FkHVO5iac "Facade Pattern – Design Patterns (ep 9)")

<br />

- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The Facade Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific](https://img.youtube.com/vi/xWk6jvqyhAQ/0.jpg)](https://www.youtube.com/watch?v=xWk6jvqyhAQ "The Facade Pattern Explained and Implemented in Java | Structural Design Patterns | Geekific")



### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides
### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/facade/structure.png?id=258401362234ac77a2aaf1cde62339e7




 

