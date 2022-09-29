//
//  main.swift
//  Dictionary
//
//  Created by Владислав on 29.09.2022.
//

import Foundation

//MARK: -- Доступ к элементам словаря
var numbersDictionary = [0:"Zero", 1:"One", 2:"Two"]
print("The numbers dictionary contains \(numbersDictionary.count) items.")

print("isProperty equals \(numbersDictionary.isEmpty)")

numbersDictionary[5] = "Five"

if let eleven = numbersDictionary[11] {
    print("The name of number is \(eleven).")
} else {
    print("The name of number isn't exist.")
}

//это выражение возвращает удаленный элемент
let removeValue = numbersDictionary.removeValue(forKey: 0)

for (key, value) in numbersDictionary {
    print("\(key): \(value)")
}
