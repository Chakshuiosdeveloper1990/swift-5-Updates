//: [Previous](@previous)

import Foundation

let stringValue = #"Lorem Ipsum is "simply" dummy "text" of the printing and typesetting "#
let intValue = 22

let wrongValue = #"Lorem Ipsum is "simply" dummy \(intValue) "text" of the printing and typesetting "#


let rightValue = #"Lorem Ipsum is "simply" dummy \#(intValue) "text" of the printing and typesetting "#
//let wrongValue1 = #"Lorem Ipsum is "simply" "dummy"#text of the printing and typesetting "#
let rightValue1 = ##"Lorem Ipsum is "simply" "dummy"#text of the printing and typesettingc"##


let multipleLine = #"""hdhdhd
ddd
ddd
ddd

ddd


dd
d
d
d
d"""#


let regex = "\\\\[A-Z]+[A-Za-z]+\\.[a-z]+"

let regex = #"\\[A-Z]+[A-Za-z]+\.[a-z]+"#



//: [Next](@next)
