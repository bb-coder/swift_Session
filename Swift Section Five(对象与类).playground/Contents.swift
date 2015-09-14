//: Playground - noun: a place where people can play

import UIKit

//swift 第五课 对象与类

//1.类的创建方法

class Shape {
    
    var numberOfSides = 0//属性的声明与变量常量的声明方式一致
    
    let numberOfBadges = 1
    
    var id: Int?
    
    func simpleDescription() ->String {//方法同样一致
        
        return "A shape with \(numberOfSides) sides."
        
    }
    
    func setupShapeId(id: Int) {
        
        self.id = id
        
    }
    
}

var shape = Shape()

shape.numberOfSides = 7

var description = shape.simpleDescription()

shape.setupShapeId(1993)

//2.类的初始化方法

class NamedShape {
    
    var numberOfSides: Int = 0//直接初始化
    
    var name: String//所有的属性必须进行初始化，可以延迟到构造方法
    
    init(name: String){//在类构造函数中初始化
        
        self.name = name
        
    }
    
    func simpleDescription() ->String {
        
        return "A shape with \(numberOfSides) sides."
        
    }

}

//3.类的继承和方法的重载

class Square:NamedShape {
    
    var sideLength: Double
    
    init(sideLength: Double, name: String){
        
        self.sideLength = sideLength //self用来区分方法的参数和类的属性同名
        super.init(name: name)//初始化父类
        numberOfSides = 4//继承过来的属性可以改变其值
        
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    //override关键字重载方法
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
}

let test = Square(sideLength: 4, name: "my square")

test.simpleDescription()

//4.属性的set get

class EquilateralTriangle: NamedShape {
    
    var sideLength: Double = 0.0
    
    init(sideLength:Double , name: String){
        
        self.sideLength = sideLength
        
        super.init(name: name)
        
        numberOfSides = 3
        
    }
    
    var perimeter: Double {
        
        get {
            return sideLength * 3.0
        }
        
        set {
            sideLength = newValue / 3.0 //set方法中newValue为赋予的新值
        }
        
    }
    
    override func simpleDescription() -> String {
        
        return "An equilateral triangle with sides of length \(sideLength)"
        
    }
    
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")

print(triangle.perimeter)

triangle.perimeter = 9.9

print(triangle.sideLength)


//5.属性的setting方法的监听

class TriangleAndSquare {
    var triangle:EquilateralTriangle {
        
        willSet{//调用setting方法之前
            square.sideLength = newValue.sideLength
        }
        
        didSet{//调用setting方法之后
            
        }
    }
    
    var square:Square {
    
        willSet{
            triangle.sideLength = newValue.sideLength
        }
        
        didSet{
            
        }
        
    }
    
    init(size: Double , name: String){
        
        triangle = EquilateralTriangle(sideLength: size, name: name)
        
        square = Square(sideLength: size, name: name)
        
        
    }
    
}

var triangleAndSquare = TriangleAndSquare(size: 20, name: "another test shape")

print(triangleAndSquare.square.sideLength)

print(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLength: 100, name: "lager square")

print(triangleAndSquare.triangle.sideLength)












