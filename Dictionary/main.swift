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
numbersDictionary[11] = "Eleven"

if let eleven = numbersDictionary[11] {
    print("The name of number is \(eleven).")
} else {
    print("The name of number isn't exist.")
}

//это выражение возвращает удаленный элемент
let removeValue = numbersDictionary.removeValue(forKey: 0)

for key in numbersDictionary.keys {
    print("\(key)")
}

print("\(numbersDictionary)")

// MARK: -- Обработка ошибок
// создание обработчика ошибок
enum validationError: Error, LocalizedError {
    case tooShort
    case tooLong
    case invalidCharacterFoond(Character)
    
    var errorDescription: String? {
        var description = ""
        
        switch self {
        case .tooShort:
            description = "Херня, переделывай! Имя короткое!"
        case .tooLong:
            description = "Ты откуда приехал с таким длинным именем!? Сокращай!"
        case .invalidCharacterFoond(let character):
            description = "Всякую хрень вроде цифр, знаков или что ты там ввел - \"\(character)\" нельзя!"
        }
        return description
    }
}

//MARK: Вызов ошибок через функцию
func validate (username: String) throws {
    guard username.count > 3 else {
        throw validationError.tooShort
    }
    
    guard username.count < 15 else {
        throw validationError.tooLong
    }
    
    for character in username {
        guard character.isLetter else {
            throw validationError.invalidCharacterFoond(character)
        }
    }
}

func onUserInputName (username: String) {
    do {
        try validate(username: username)
        // если валидация не вернула нам ошибку
        // значит юзер не мудак
    } catch {
        // если юзер мудак
        // значит в рот оно...ошибка
        print(error.localizedDescription)
    }
}

print(onUserInputName(username: "Vladislav1"))
