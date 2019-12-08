import Foundation
//создаем проверку рестарта
var startNewGame: Bool = true
//создаем цикл новой игры
while startNewGame{
  print("Компьютер загадал число от 0 до 100, вам требуется угадать его")
  //создаем генератор случайных чисел
  let randomValue = UInt8(arc4random_uniform(100))
  //создаем проверку угаданного числа
  var corectNumber: Bool = false
  //создаем цикл проверки соответствия чисел
  var myNumberValue = 0
  //создаем цикл проверки соответствия чисел
  while !corectNumber {
    print("Введите ваш вариант и нажмите Enter")
    //константа равная строке из консоли
    let myNumber = UInt8(readLine()!)
    //добавляем значение к счетчику
    myNumberValue += 1
    //проверка костанты на соответствие параметров и
    //выполнение дальнейшего цикла в зависимости от результата
     //параметров*
    if (myNumber == nil){
      print("Введите число!")
    }
    else {
      switch myNumber! {
          case randomValue:
            corectNumber = true
            //вывод поздравления с окончанием игры, с кол-вом попыток
          switch myNumberValue {
            case 1:
              print("Угадать с первого раза, это большая удача! Поздравляю!")
            case 2:
              print("Вы угадали со 2-й попытки! Поздравляю!")
            default:
              print("Вы угадали с \(myNumberValue)-й попытки! Поздравляю!")
          }
          case _ where  myNumber! > randomValue:
            print("Ваше число больше")
          case _ where myNumber! < randomValue:
            print("Ваше число меньше")
          default:
            break
      }
    }
  }
  //создаем окно для продолжения или завершения игры
  print("Хотите ли вы повторить игру? Для продолжения нажмите - Y")
  let newGame = readLine()
  if (newGame!.uppercased() != "Y") {
    startNewGame = false
    }
}


