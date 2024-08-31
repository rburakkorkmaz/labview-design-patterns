# COMMAND PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Command pattern is a behavioral design pattern that creates a layer between business logic and the client using encapsulated request objects, known as Commands. Each Command interacts with the business logic for its specific case, ensuring that only the Commands know the receiver and the business logic layer. This minimizes coupling between the receiver and the business layer.
All Commands implement a Command interface, which includes two methods: Execute and Undo. The Execute method is responsible for executing the related method in the business layer, while the Undo method reverts the action performed by the command. For example, in a Play Music Command, the Execute method calls the Play Music method in the MediaPlayer class, and the Undo method executes the Pause Music method, since Pause is the reverse of Play. This relationship can vary depending on the context.
Another useful application of the Command pattern is when executing commands in a series. In this case, you can easily create a command list and execute it using a loop.
For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/command), which explains this pattern very well.

<div align="center">
<img src="https://ajayiyengar.com/wp-content/uploads/2017/03/command_pattern.jpg">

Command Pattern [1]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project, I tried to implement a basic music player. You can choose a music directory, and it searches for files with the .wav extension, grabs them, and creates a list for you to play, pause, skip, rewind, and stop.
I used Command Pattern principles to implement this project. There is a RemoteControl class that represents button actions, a MediaPlayer class for business logic where I use real .wav files, commands, and Client to connect all of these.

<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### RemoteControl Class

This is the Invoker class of the Command Design Pattern. Its purpose is to execute a command. It stores an IPlayerCommand interface as a property. By changing this property according to the current command requirement, we do not need to hold all of the commands. For example, let's say we want to execute the PlayMusicCommand. The RemoteControl runs the Set Command method and changes the current Command property to the PlayMusicCommand class. After that, we apply the Execute method from the IPlayCommand interface to execute the new command.

### MediaPlayer Class
 
This class is the business logic of the whole code. Its job is to play, pause, clear .wav files, and determine the current song to play. **Important note**: this class uses the native sound API of LabVIEW, which is, in my opinion, far from optimized. Therefore, this application uses a lot of memory.

### IPlayCommand Interface

This is the core of the Command design pattern. It serves as the baseline Command interface with Execute and Undo methods. All commands in the application implement this interface. The Command classes are:
- **`PlayMusicCommand`**: This command plays music by calling the `PlayMusic` method from the `MediaPlayer`. It also serves as the undo command for `PauseMusicCommand`.
- **`PauseMusicCommand`**: This command pauses the current music by calling the `PauseMusic` method from the `MediaPlayer`. It also serves as the undo command for `PlayMusicCommand`.
- **`StopMusicCommand`**: This command stops the current music completely by calling the `StopMusic` method from the `MediaPlayer`. It has no undo command because it completely stops the current song.
- **`SkipMusicCommand`**: This command skips the current music to the next track by calling the `SkipMusic` method from the `MediaPlayer`. It also serves as the undo command for `RewindMusicCommand`.
- **`RewindMusicCommand`**: This command rewinds the current music to the previous track by calling the `RewindMusic` method from the `MediaPlayer`. It also serves as the undo command for `SkipMusicCommand`.
- **`GetCurrentInfoCommand`**: This command updates the current music-related information in the `MediaPlayer`. While it is not the most appropriate use of the Command pattern, it calls the GetCurrentInfo method from the MediaPlayer and does not have an undo command.

### Client Class

It is the class that Uı side initilize and uses. It makes connection between main application and user interface. It has all related button and information methods to start `RemoteControl` command execution.

## How to use
1) Launch `Launcher.vi`
<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP1</h5>
</div>

2) If there is no problem you will the screen below. Click to the Hamburger menu.

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP2</h5>
</div>

3) A menu should slide to the main area. Click `Add Song` button.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP3</h5>
</div>

4) It will prompt you to choose directory. This directory must include .wav extension music files and .jpg extension picture files. These two files must be same name if they are related. For example, A.wav has a A.jpg album cover. To choose current directory click `Add`.

<div align="center">
    <img src="Related Images/How to Use Step 4.png">
    <h5>STEP4</h5>
</div>

5) The directory you have choosen should be in the array list. You can click to hamburger menu again and close this area. **Important note** it takes a little bit time to laod files, therefore the hamburger menu would be not responding. You should calmly wait.

<div align="center">
    <img src="Related Images/How to Use Step 5.png">
    <h5>STEP5</h5>
</div>

6) Click Play button.

<div align="center">
    <img src="Related Images/How to Use Step 6.png">
    <h5>STEP6</h5>
</div>

7) Finally you should see your cover arts and musics. You can click on the far right picture and skip current song. Also same thing for the far left picture to rewind to song before.

<div align="center">
    <img src="Related Images/How to Use Step 7.png">
    <h5>STEP7</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**

- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**

### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides

[![Abstract Factory Pattern – Design Patterns (ep 5)](https://img.youtube.com/vi/v-GiuMmsXj4/0.jpg)](https://www.youtube.com/watch?v=v-GiuMmsXj4 "Abstract Factory Pattern – Design Patterns (ep 5)")

### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/abstract-factory/structure-indexed.png




 

