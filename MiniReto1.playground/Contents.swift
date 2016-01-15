//: Playground - noun: a place where people can play

import UIKit


let rango = 30...40

for num in 0...100{
    if num%5 == 0 {
        print("#\(num) Bingo!!!")
    }
    if num%2 == 0 {
        print("#\(num) Par!!!")
    }
    else{
        print("#\(num) Impar!!!")
    }
    
   switch num{
    case 30...40:
        print("#\(num) Viva Swift!!!")
    default : break
    }
}



if false == false {
    print("yes")
}

