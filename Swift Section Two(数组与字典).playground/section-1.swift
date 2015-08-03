// Playground - noun: a place where people can play

import UIKit

//swift 第二课 数组与字典

//1.数组的声明

var shoppingList = ["catfish","water","tulips","blue paint"]

shoppingList[1] = "bottle of water"

print(shoppingList)

//2.字典的声明

var occupations = ["Malcolm":"Captain","Kaylee":"Mechanic"]

occupations["Jayne"] = "Public Relations"

print(occupations)

//3.空数组和空字典的声明

let emptyArray = [String]()

let emptyDictionary = [String : Float]()

//甚至你可以这样清空数组

shoppingList = []

occupations = [:]








