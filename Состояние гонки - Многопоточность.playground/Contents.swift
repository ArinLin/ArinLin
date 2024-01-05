import UIKit
import Foundation

// MARK: - В Swift существуют три типа очередей.
// Основная очередь (Main Queue). Выполняется в основном потоке и используется для обновления пользовательского интерфейса. Это последовательная очередь.

let mainQueue = DispatchQueue.main

// Глобальная очередь (Global Queue). Это системная предоставленная очередь, которая выполняется в фоновом режиме. Это параллельная очередь, и она бывает разных уровней приоритета.

let globalQueue = DispatchQueue.global()

// Пользовательская очередь (Custom Queue). Программист может создавать собственные очереди. Эти очереди могут быть последовательными или параллельными.

let customQueue = DispatchQueue(label: "com.example.queue")

// MARK: - Асинхронные и синхронные задачи

// Асинхронные задачи возвращают управление на текущую очередь немедленно, не дожидаясь их завершения.

globalQueue.async {
    print("Выполняем асинхронную задачу")
}

// Синхронные задачи не возвращают управление, пока задача не завершена.

globalQueue.sync {
    print("Выполняем синхронную задачу")
}

// MARK: - Выполнение задачи после задержки
// GCD позволяет запланировать выполнение задачи с задержкой.

DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
    // Код здесь будет выполнен через 3 секунды
    print("Выполнено с задержкой 3 секунды")
}

// MARK: - Состояние гонки (race condition)
// Пример 1: Состояние гонки (race condition)

let mySerialQueue = DispatchQueue.global()
var value = "Hello"

func changeValue(variant: Int) {
    sleep(2)
    value = value + "World"
    
    print("\(value) - \(variant)")
}

// variant: 1
mySerialQueue.async { // !убрать race condition можно поменяв async на sync
    changeValue(variant: 1)
}

value

// variant: 2
value = "Bye"

mySerialQueue.sync {
    changeValue(variant: 2)
}

value

// Пример 2: Состояние гонки (race condition)

let queue = DispatchQueue(label: "Queue")
var myValue = 1
func changeMyValue() {
    sleep(1)
    myValue += 1
}
// 1. Изменим свойство в async
print(myValue)
queue.async {
    changeMyValue()
}
print(myValue)
// 2. Изменим свойство в sync
queue.sync {
    changeMyValue()
}
print(myValue)

