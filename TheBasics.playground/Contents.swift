
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

let http404Error = (404, "Not Found")
//let http404Error: (Int, String) = (404, "Not Found")
let (code, message) = http404Error
print("code: \(code)")
print("message: \(message)")

let (onlyCode, _) = http404Error
print("code: \(onlyCode)")

print("code: \(http404Error.0)")
print("message: \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
//let http200Status: (statusCode: Int, description: String) = (statusCode: 200, description: "OK")
//let http200Status: (statusCode: Int, description: String) = (200, "OK")

print("code: \(http200Status.statusCode)")
print("message: \(http200Status.description)")

let numberString = "123"
let convertedNumber = Int(numberString)
print(convertedNumber)  // Optional(123)

var serverCode: Int? = 404
// serverCode chứa giá trị kiểu Int là 404
serverCode = nil
// serverCode bây giờ không chứa gì cả

var answer: String?
// answer được tự động đặt giá trị nil

if convertedNumber != nil {
    print("convertedNumber có chứa giá trị kiểu Int")
}

if convertedNumber != nil {
    print("giá trị của convertedNumber là: \(convertedNumber!)")
}

if let number = convertedNumber {
    print("convertedNumber có chứa giá trị kiểu Int: \(number)")
} else {
    print("convertedNumber không chứa giá trị")
}
if let number = Int(numberString) {
    print("numberString có thể chuyển đổi thành số: \(number)")
} else {
    print("numberString không thể chuyển đổi thành số")
}

if let num1 = Int("4") {
    if let num2 = Int("20") {
        if num1 < num2 {
            print("\(num1) < \(num2)")
        }
    }
}
if let num1 = Int("4"), let num2 = Int("20"), num1 < num2 {
    print("\(num1) < \(num2)")
}
