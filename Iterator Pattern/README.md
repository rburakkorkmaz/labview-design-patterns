# ITERATOR PATTERN

*Written by Ramazan Burak Korkmaz*\
**Warning**: I do not guarantee the accuracy of the information provided here and accept no responsibility for it. Much of what I express is based on my own interpretations. Please conduct your own research.

## **Definition**
The Iterator pattern is one of the behavioral design patterns commonly used with collections. The main idea behind the Iterator pattern is to separate the iteration logic from the collection class, allowing the collection to delegate this responsibility to its own iterator class. This separate Iterator class implements its own iteration logic. For example, a list iterator may traverse elements one by one, while a graph iterator may iterate using vertex references.
The Iterator pattern can be viewed as a strategy pattern without explicit reference to the strategies. The collection we are trying to iterate implements an IterableCollection interface, which typically includes a single method: createIterator(). This method is responsible for returning an appropriate iterator based on the situation. The Iterator itself is also an interface and may have different methods depending on the context, but generally includes First, IsDone, CurrentItem, and Next methods. A ConcreteIterator implements the Iterator interface and provides its own logic for these methods. The constructor of the ConcreteIterator takes an instance of the IterableCollection it will iterate over. Once the ConcreteIterator has access to the collection, the IterableCollection does not need to track or check the status of the Iterator. Clients use the interface methods to iterate through an IterableCollection via the ConcreteIterator.
By implementing this pattern, we ensure that we can change the Iterator without modifying any specific part of the Collection. Additionally, we gain the ability to switch between different types of Iterators at runtime. Overall, this pattern is powerful and widely used in software design.
For a deeper understanding, I highly recommend checking out [Refactoring Guru](https://refactoring.guru/design-patterns/iterator), which explains this pattern very well.

<div align="center">
<img src="https://refactoring.guru/images/patterns/diagrams/iterator/structure.png?id=35ea851f8f6bbe51d79eb91e6e6519d0">

Iterator Pattern [1]
</div>

## **Use Case Scenario & LabVIEW Implementation**
In this project, I tried to implement a Binary Tree data structure and its BFS (Breadth-first search) and DFS (Depth-first search) type iterators.

<div align="center">
    <img src="Related Images/UML Diagram.png">
    <h5>UML DIAGRAM</h5>
</div>

### Iterator Interface

One of the base interfaces of the pattern. It has four methods to be implemented. These methods are:
- `CurrentItem`: Returns current node in the traversing.
- `First`: Returns root of the collection
- `IsDone`: Return whether traversing is finished and we are at the end of the collection.
- `Next`: Return next item in the order and calculate for next ones.

### BFSIterator Class
 
Implements Iterator interface. This iterator overrides Iterator interface's four methods according to the Breath-first search algorithm logic.

### DFSIterator Class
 
Implements Iterator interface. This iterator overrides Iterator interface's four methods according to the Depth-first search algorithm logic.

### IterableCollection Interface

Another base interface of the pattern. It has only one method to implemented. The method is
- `CreateIterator`: Returns an iterator according to given Enum. 

### Element Interface

Since Labview does not allow a class to reference itself in its properties, I had to implement an interface for `Node` class to reference itself by an `Element`. This is required because I use recursion in my traversing algorithms.

### Node Class

The real element of the `Tree` class. It has:
- `Value`: Double interger.
- `Left Child`: A left child/subtree
- `Right Child`: A right child/subtree.

### Tree Class

The Tree class is the collection type I choose to traverse in this example. It is spesifically a `Binary Tree`. There is no balancing operations or things like that. 

## How to use
1) Launch `Launcher.vi`
2) If there are no issues, you will see the screen below. Everything below `Tree Values` text is currently disabled. You need to add a new value to the tree. To add a new value, write a value to `Value` section and click `Add` button. After adding all the values you want, you should choose `Traversal Type` and click `Save`. 
<div align="center">
    <img src="Related Images/How to Use Step 1.png">
    <h5>STEP 2</h5>
</div>

3) After clicking to the save button, you should see that `Go Next` and an array are enabled. You can traverse in your tree via clicking `Go Next` button. Each click will bring next value in the order.

<div align="center">
    <img src="Related Images/How to Use Step 2.png">
    <h5>STEP 3</h5>
</div>

4) If you want to create a new tree or change traversal type, you can write a value and click `Add` button. This will delete current tree and start to build a new one. After writing all values and choosing traversal type, you can again click to save and enable `Go Next` and the traverse array.

<div align="center">
    <img src="Related Images/How to Use Step 3.png">
    <h5>STEP 4</h5>
</div>

##### **C#**
- **SOON!**

### **Videos**
- **[Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi) - Design Patterns**
[![Iterator Pattern – Design Patterns (ep 16)](https://img.youtube.com/vi/uNTNEfwYXhI/0.jpg)](https://www.youtube.com/watch?v=uNTNEfwYXhI "Iterator Pattern – Design Patterns (ep 16)")

- **[Geekific](https://www.youtube.com/@geekific) - Design Patterns**
[![The Iterator Pattern Explained and Implemented in Java | Behavioral Design Patterns | Geekific](https://img.youtube.com/vi/QCWJWfuAfJc/0.jpg)](https://www.youtube.com/watch?v=QCWJWfuAfJc "The Iterator Pattern Explained and Implemented in Java | Behavioral Design Patterns | Geekific")



### **BOOKS**
- Design Patterns - Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides
### **Sources**

[1] https://refactoring.guru/images/patterns/diagrams/iterator/structure.png?id=35ea851f8f6bbe51d79eb91e6e6519d0




 

