import UIKit

// Question One

// Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.

// Your function here
func applyKTimes(_ K: Int, closure: (()->()) ) {
    //    return(applyKTimes())
}
var applyKTimesClosure = {() -> () in
    
}

applyKTimes(3, closure: applyKTimesClosure)

// Uncomment out the following lines to check your solution

var myVal = 0
applyKTimes(5) {
    myVal += 1
}


assert(myVal == 5, "Expected myVal to be five, but was \(myVal)")


// Question Two

// Write a function called multiples(of:in) that takes in an array of Ints and returns all of the Ints that are a multiple of a given number n.  Use filter in your function.

// Your function here
//var n = multiples
func multiples(of n: Int, in numbers:Array<Int>) -> Array<Int>  {
    return numbers.filter{$0 % n == 0}
}
//Uncomment out the following lines to check your solution

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
let expectedOutputTwo = [3, 6, 9, 3, 12]
let outputTwo = multiples(of: [3], in: numbers)
assert(outputTwo == expectedOutputTwo, "Expected output to be \(expectedOutputTwo), but found \(outputTwo)")


// Question Three

// Write a function called largestValue(in:) that finds the largest Int in an array of Ints. Use reduce to solve this exercise.

// Your function here

func largestValue(in num:Array<Int>) -> (Int) {
    return num.reduce(0) {$0 > $1 ? $0 : $1 }
}
// Uncomment out the following lines to check your solution

let moreNumbers = [4, 7, 1, 9, 6, 5, 6, 9]
let expectedOutputThree = 9
let outputThree = largestValue(in: moreNumbers)
assert(outputThree == expectedOutputThree, "Expected output to be \(expectedOutputThree), but found \(outputThree)")


// Question Four

// Write a function called sortedNamesByLastName(in:) that takes in an array of tuples of type (String, String) and returns an array of tuples sorted by last name.

// Your function here
func sortedNamesByLastName(in name:[(String,String)]) -> [(String, String)] {
    return name.sorted ( by: {$0.1 < $1.1} )
}
// Uncomment out the following lines to check your solution

let firstAndLastTuples = [
    ("Johann S.", "Bach"),
    ("Claudio", "Monteverdi"),
    ("Duke", "Ellington"),
    ("W. A.", "Mozart"),
    ("Nicolai","Rimsky-Korsakov"),
    ("Scott","Joplin"),
    ("Josquin","Des Prez")
]
let expectedOutputFour = [
    ("Johann S.", "Bach"),
    ("Josquin","Des Prez"),
    ("Duke", "Ellington"),
    ("Scott","Joplin"),
    ("Claudio", "Monteverdi"),
    ("W. A.", "Mozart"),
    ("Nicolai","Rimsky-Korsakov")
]
let outputFour = sortedNamesByLastName(in: firstAndLastTuples)
assert(outputFour.elementsEqual(expectedOutputFour, by: { $0 == $1 }), "Expected output to be \(expectedOutputFour), but found \(outputFour)")


// Question Five
// Write a function called sumOfSquaresOfOddNumbers(in:) that returns the sum of the squares of all the odd numbers from an array of Ints.  Use filter, map and reduce in your function.

func sumOfSquaresOfOddNumbers(in arr: Array<Int>) -> Int {
    return arr.filter({$0 % 2 == 1}).map{$0 * $0}.reduce(0, +)
}

let evenMoreNumbers = [1, 2, 3, 4, 5, 6]
let expectedOutputFive = 35 // Explanation: 1 + 9 + 25 -> 35
let outputFive = sumOfSquaresOfOddNumbers(in: evenMoreNumbers)
assert(outputFive == expectedOutputFive, "Expected output to be \(expectedOutputFive), but found \(outputFive)")
