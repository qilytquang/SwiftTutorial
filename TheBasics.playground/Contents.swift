
//print("Hello, world!")

let myConstant = 3.14
var myVariable = 2
myVariable = 5

let a = 1, b = 2

var x: Int = 10
var y: Float
y = 5.0
var welcome: String
welcome = "Xin chào"

let PI = 3.14   // let PI: Double = 3.14
var count = 3   // var count: Int = 3

let π = 3.14
var 🐮 = "Con bò"
🐮 = "The cow"

print(2)
print("Xin chào")
print(count)
print(welcome)
var name = "Quang"
var age = 27
print(name, age)    // In ra nhiều tham số, cách nhau dấu phẩy
print("Tên:", name) //
print("Tuổi:", age) //
print("Xin chào \(name)! Bạn \(age) tuổi rồi à?")   // Truyền vào 2 tham số

// Chú thích 1 dòng
/* Chú thích nhiều dòng
 Dòng 2
 Dòng 3 */

let cat = "🐱"; print(cat)

let minValue = Int32.min   // -2147483648
let maxValue = Int32.max   // 2147483647
UInt32.min  // 0
UInt32.max  // 4294967295

let decimalInteger = 17
let binaryInteger = 0b10001       // số 17 ở hệ nhị phân
let octalInteger = 0o21           // số 17 ở hệ bát phân
let hexadecimalInteger = 0x11     // số 17 ở hệ hexa

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let soNguyen = 1_234_567
let soThuc = 1_234_567.890_1

let motNghin: UInt16 = 1_000
let mot: UInt8 = 1
let motNghinLeMot = motNghin + UInt16(mot)

let soNguyen1: Int8 = -10
//let soNguyen2: UInt8 = UInt8(soNguyen1) // biên dịch báo lỗi

let phanNguyen = 3
let phanThuc = 0.14
let soPI = Double(phanNguyen) + phanThuc

let soThuc1 = Float(Int8.max) + Float(0.9)  // 127.9
let layPhanNguyen = Int8(soThuc1)   // 127

typealias SoNguyen = UInt8
let soLonNhat: SoNguyen = SoNguyen.max    // 255

var completed = true
if completed {
    print("Đã hoàn thành")
} else {
    print("Chưa hoàn thành")
}

/*
let i = 1
if i { // báo lỗi không thể ép kiểu Int thành Bool
    
}
*/
