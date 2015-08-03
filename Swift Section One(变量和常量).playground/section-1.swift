// Playground - noun: a place where people can play

import UIKit

//swift 学习第一课 变量与常量

//1.变量声明

var myVar = 5

myVar = 14

let myConstant = 3

//myConstant = 5 常量不可以改变

//2.变量的类型确定

//myVar = 23.5 swift中的类型虽然是自动判断的，不用明确给出，但是一旦给出第一次值类型就确定了

let implicitInteger = 100 //不明确的整型声明方式

let implicitDouble = 100.0 //不明确的双精度类型声明方式

let expliciDouble: Double = 100.0 //确定类型的双精度类型声明方式

//3.变量类型转换

let label = "The width is "

let witdh = 100

let labelWitdh = label + String(witdh)

//变量从第一次赋值开始类型就明确了，转换必须强转

//4.字符串中快速插入数值

let apples = 3

let oranges = 5

let appleSummary = "I have \(apples) apples."

let fruitsSummary = "I have \(apples + oranges) pieces of fruit."










