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
    <h5>STEP 1</h5>
</div>

2) If there are no issues, you will see the screen below. Click on the Hamburger menu.

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP 2</h5>
</div>

3) A menu will slide into the main area. Click the `Add Song` button.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP 3</h5>
</div>

4) You will be prompted to select a directory. This directory must contain music files with a .wav extension and picture files with a .jpg extension. The names of the audio and image files should match if they are related. For example, if you have A.wav, it should be accompanied by A.jpg as the album cover. To select the current directory, click `Add`.

<div align="center">
    <img src="Related Images/How to Use Step 4.png">
    <h5>STEP 4</h5>
</div>

5) The directory you have chosen should now appear in the array list. You can click the hamburger menu again to close this area.
**Important note**: It may take a short time to load the files, so the hamburger menu may not respond immediately. Please wait patiently for the files to load before attempting to use the menu again.

<div align="center">
    <img src="Related Images/How to Use Step 5.png">
    <h5>STEP 5</h5>
</div>

6) Click Play button.

<div align="center">
    <img src="Related Images/How to Use Step 6.png">
    <h5>STEP 6</h5>
</div>

7) Once the files have finished loading, you should see your album cover art and music files.To skip the currently playing song, click on the picture on the far right.To rewind to the previous song, click on the picture on the far left.

<div align="center">
    <img src="Related Images/How to Use Step 7.png">
    <h5>STEP 7</h5>
</div>

8) If you click the Hamburger menu button in the upper right corner, you can open the detailed command history page.

<div align="center">
    <img src="Related Images/How to Use Step 8.png">
    <h5>STEP 8</h5>
</div>

8) On the command history page, you will see an `Undo` button that allows you to reverse the last command action. Please note that this feature does not apply to the `Stop` button, as it does not have a reverse command.

<div align="center">
    <img src="Related Images/How to Use Step 9.png">
    <h5>STEP 9</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![Command Pattern – Design Patterns (ep 7)](https://img.youtube.com/vi/9qA5kw8dcSU/0.jpg)](https://www.youtube.com/watch?v=9qA5kw8dcSU "Command Pattern – Design Patterns (ep 7)")

- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The Command Pattern Explained and Implemented in Java | Behavioral Design Patterns | Geekific](https://img.youtube.com/vi/UfGD60BYzPM/0.jpg)](https://www.youtube.com/watch?v=UfGD60BYzPM "The Command Pattern Explained and Implemented in Java | Behavioral Design Patterns | Geekific")



### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides
### **Sources**

[1] https://ajayiyengar.com/wp-content/uploads/2017/03/command_pattern.jpg




 

