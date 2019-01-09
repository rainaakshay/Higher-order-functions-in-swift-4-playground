import UIKit




var closureVariable : (Int,Int,Int) -> Int = { return ( $0 * $2 ) / $1    }
func closureFunction(closure: (Int,Int,Int) -> Int , Num1: Int, Num2: Int, Num3: Int ) -> Int
{
    return closure(Num1,Num2,Num3)
}
var result = closureFunction(closure: closureVariable, Num1: 5, Num2: 10, Num3: 5)






var addtoRange : (Int) -> Int = { print($0,"'s square is ", $0*$0); return $0 * $0    }

func addRanges(from: Int, to: Int, closure: (Int)->Int) -> Int{
    
    var sum = 0
    for i in from...to
    {
        sum += closure(i)
    }
    return sum
}

print("Passed closure as argument",addRanges(from: 0, to: 5, closure: addtoRange))

print("Manually entering closure",addRanges(from: 1, to: 5, closure: {$0*$0} )   )

print("Trailing Closure",addRanges(from: 0, to: 5){ return $0*$0 })



var arrayofInt = [Int](repeating: 5, count: 20)
var newArr = arrayofInt.map{$0*7}
print("Map array",newArr)


var arr = [10,4,34,66,43,223,77,65,43,56,88,76,44,689,654,32,2,3,4,5,77,44,4,90,2,123,5,6,]
print("Full array before filter",arr)

var filteredarr = arr.filter { (x) -> Bool in
    return x%2==0
}
var smallArr = [1,2,3,4,5]
var filter = arr.filter({return $0%2==0})

print("Filtered even numbers = ",filteredarr,"\nShortcut = ",filter)

let x = smallArr.reduce(0) { (a, num) in
   return a + num
}
print("Reducing array = ", x)



