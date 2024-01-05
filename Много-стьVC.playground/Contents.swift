import UIKit
import Foundation
import PlaygroundSupport

// MARK: - В Swift существуют serial и concurrent очереди.
// Создание serial и concurrent очереди
class QueueTest1 {
    private let ExampleSerialQueue = DispatchQueue(label: "serial") // просто добавляем лейбл
    
    private let ExampleConcurrentQueue = DispatchQueue(label: "concurrent", attributes: .concurrent) // добавляем атрибут
}

// MARK: - В Swift существуют три типа очередей.
// Основная очередь (Main Queue). Выполняется в основном потоке и используется для обновления пользовательского интерфейса. Это последовательная очередь.

let mainQueue = DispatchQueue.main

// Глобальная очередь (Global Queue). Это системная предоставленная очередь, которая выполняется в фоновом режиме. Это параллельная очередь, и она бывает разных уровней приоритета.
// Глобальная очередь предоставляется из пула очередей, нужно лишь обратиться к методу .global

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

DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { // asyncAfter эквивалентен sleep(3)
    // Код здесь будет выполнен через 3 секунды
    print("Выполнено с задержкой 3 секунды")
}

// MARK: - AVITO
class AsyncVsSyncTest {
    private let SerialQueue = DispatchQueue(label: "SerialTest")
    
    func testSerial() {
        SerialQueue.async {
            print("1")
        }
        
        SerialQueue.async {
            DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
                print("2")
            }
        }
        
        SerialQueue.sync {
            print("3")
        }
        
        SerialQueue.sync {
            print("4")
        }
    }
}

let test = AsyncVsSyncTest()
test.testSerial()


//* Вывод:
//1
//3
//4
//2


class AsyncSyncTest {
    private let concurrentQueue = DispatchQueue.global()
    
    func testConcurrent() {
        concurrentQueue.async {
            print("11")
        }
        
        concurrentQueue.async {
            DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
                print("22")
            }
        }
        
        concurrentQueue.sync {
            print("33")
        }
        
        concurrentQueue.sync {
            print("44")
        }
    }
}

let test1 = AsyncSyncTest()
test1.testConcurrent()

//* Вывод:
//11
//33
//44
//22

// Задачи

let serialQueue1 = DispatchQueue(label: "serialQueue1")
serialQueue1.async {
    print("test1")
}
print("test2")
    
// Вывод:
// Может быть как test1, test2 так и test2, test1

let concurrentQueue1 = DispatchQueue(label: "concurrentQueue1", attributes: .concurrent)
concurrentQueue1.sync {
    print("test11")
}
print("test22")
// Вывод:
// Только test11, test22

// MARK: - AVITO. Concurrent Perform

// Concurrent Perform -- Позволяет эффективно использовать свободные ресурсы системы
// Concurrent Perform -- Эффективен при большом количестве итераций

class ConcurrentPerformTest {
    func test() {
        DispatchQueue.concurrentPerform(iterations: 3, execute: { i in
            print(i)
        })
    }
}

// Вывод:
// 0
// 1
// 2

// MARK: - AVITO. DispatchWorkItem

// Задача 1
let item = DispatchWorkItem {
    print("DispatchWorkItem test")
}
let serialQueueDispatchWorkItem = DispatchQueue(label: "serialQueue-DispatchWorkItem")
serialQueueDispatchWorkItem.async(execute: item)
sleep(1)
item.cancel()

// Вывод:
// DispatchWorkItem test


// Задача 2
let serialQueue_DispatchWorkItem = DispatchQueue(label: "serialQueue_DispatchWorkItem")
let myItem = DispatchWorkItem {
    print("hello world")
}
myItem.notify(queue: serialQueue_DispatchWorkItem) {
    print("finish")
}
serialQueue_DispatchWorkItem.async {
    sleep(1)
}
serialQueue_DispatchWorkItem.async(execute: myItem)
myItem.cancel()

// Вывод:
// finish


// Задача 3
class DispatchWorkItemTest1 {
    private let queue = DispatchQueue(label: "DispatchWorkItemTest1", attributes: .concurrent)
    func testNotify() {
        let item = DispatchWorkItem {
            print("test!!!")
        }
        item.notify (queue: DispatchQueue.main, execute: {
            print("finish!!!")
        })
        queue.async(execute: item)
    }
}

// Вывод:
// test !!!
// finish !!!

// MARK: - AVITO. Semaphore

// Задача 1
class SemaphoreTest {
    private let semaphore = DispatchSemaphore(value: 0)
    private func test() { // метод test будет ожидать, пока наша асинхронная задача не выполнится и не вызовется метод .signal
        DispatchQueue.global().async {
            sleep(3)
            print("1111")
            self.semaphore.signal() // !!!
        }
        semaphore.wait() // метод .wait означает, что вызывающий поток будет блокироваться, пока мы не вызовем метод .signal
        print("2222")
    }
}
// Вывод:
// 1111
// 2222


// Задача 2
class SemaphoreTest2 {
    private let semaphore = DispatchSemaphore(value: 2) // количество потоков, которые одновременно могут обращаться к ресурсу
    
    private func doWork() {
        semaphore.wait()
        print("boba")
        sleep(3) //Do something
        semaphore.signal()
    }
    
    private func test() {
        DispatchQueue.global().async {
            self.doWork()
        }
        DispatchQueue.global().async {
            self.doWork()
        }
        DispatchQueue.global().async {
            self.doWork()
        }
    }
}
// Вывод:
// boba
// boba
// * проходит 3 сек *
// boba


// Задача 3
class SemaphoreTest3 {
    private let semaphore = DispatchSemaphore(value: 1)
    
    private func doWork() {
        semaphore.wait( )
        print("Biba")
        sleep(2) //Do something
        semaphore.signal()
    }
    
    private func test() {
        DispatchQueue.global().async {
            self.doWork()
        }
        DispatchQueue.global().async {
            self.doWork()
        }
        DispatchQueue.global().async {
            self.doWork()
        }
    }
}
// Вывод:
// Biba
// * проходит 2 сек *
// Biba
// * проходит 2 сек *
// Biba
