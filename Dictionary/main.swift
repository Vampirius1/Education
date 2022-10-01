//
//  main.swift
//  Dictionary
//
//  Created by Владислав on 29.09.2022.
//

import Foundation

// MARK: - Перечисления
enum compasPoint {
    case north
    case south
// если указать "case east = 5" то
// при типе переменных Int в консоли будет значение 5
    case east(String, Int)
    case west
    
    func getDescription() -> String{
        switch self {
        case let .east(name, index):
            return "\(name) - \(index)"
        case .north:
            return "North"
        case .south:
            return "South"
        case .west:
            return "West"
        }
    }
}

let compassPoint = compasPoint.west

print(compassPoint.getDescription())

// MARK: так можно вывести "сырое" значение. Тоесть наименование кейса(case)
//print(directionToHead.rawValue)

// MARK: - либо так, не указывая тип данных в enum
/*
 switch directionToHead {
case .east:
    print("East")
case .north:
    print("North")
case .south:
    print("South")
case .west:
    print("West")
}
*/

// MARK: - Ассоциативные параметры переменных
/*
enum compasPoint {
    case north
    case south(String, Int)
    case east
    case west
}

let directionToHead: compasPoint = .east("east", 1)

 switch directionToHead {
case let .east(name, index):
    print("\(name) - \(index)")
case .north:
    print("North")
case .south:
    print("South")
case .west:
    print("West")
}
*/
