# Các khái niệm cơ bản (The Basics)

## 1. Biến và hằng (Variables and Constants)
Sử dụng từ khoá `let` để khai báo hằng, và `var` để khai báo biến:
```swift
let myConstant = 3.14
var myVariable = 2
myVariable = 5
```
Có thể khai báo nhiều biến, hằng trong cùng một dòng:
```swift
let a = 1, b = 2
```

## 2. Đặt tên biến, hằng
Giống như C, Java,... Swift sử dụng các kí tự chữ (a-zA-Z), số (0-9) và dấu gạch dưới (_) để đặt tên, tên không được bắt đầu bằng số. VD: `x`, `num1`, `_member`, `__sum`, `_` đều là tên hợp lệ.

Ngoài ra Swift còn cho phép sử dụng các kí tự Unicode để đặt tên (tuy nhiên trên thực tế ít dùng):
```swift
let π = 3.14
var 🐮 = "Con bò"
🐮 = "The cow"
```

## 3. In ra biến, hằng
Sử dụng hàm `print()` để in:
```swift
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
```

## 4. Chú thích (Comments)
Sử dụng `//` hoặc `/*` `*/` để tạo chú thích:
```swift
// Chú thích 1 dòng
/* Chú thích nhiều dòng
Dòng 2
Dòng 3 */
```

## 5. Dấu chấm phẩy
Trong Swift sử dụng dấu `;` để ngăn cách 2 câu lệnh trên cùng 1 dòng (thực tế hiếm khi dùng tới dấu chấm phẩy):
```swift
let cat = "🐱"; print(cat)
```

## 6. Các kiểu số nguyên
Swift cung cấp các kiểu số nguyên có dấu và không dấu có kích thước 8, 16, 32, 64 bit như sau: `Int8`, `Int16`, `Int32`, `Int64`, `UInt8`, `UInt16`, `UInt32`, `UInt64`. Trong đó tiền tố `U` là viết tắt của `Unsigned` (không dấu).

Để kiểm tra miền giá trị của các kiểu dữ liệu, chúng ta gọi các thuộc tính tĩnh `min` và `max`:
```swift
let minValue = Int32.min   // -2147483648
let maxValue = Int32.max   // 2147483647
UInt32.min  // 0
UInt32.max  // 4294967295
```

### Kiểu Int
Swift cung cấp thêm kiểu số nguyên thông dụng hơn - kiểu `Int`, kiểu này có kích thước phục thuộc vào nề tảng hệ điều hành thực thi là 32-bit hay 64-bit.
* Trên nền tảng 32-bit, `Int` tương đương với `Int32`
* Trên nền tảng 64-bit, `Int` tương đương với `Int64`

### Kiểu UInt
`UInt` là kiểu số nguyên không dấu, tương tự như kiểu `Int`:
* Trên nền tảng 32-bit, `UInt` tương đương với `UInt32`
* Trên nền tảng 64-bit, `UInt` tương đương với `UInt64`

## 7. Các kiểu số thực (số thập phân)
Có 2 kiểu số thực là `Double` và `Float`:
* `Double` biểu diễn số thực 64-bit
* `Float` biểu diễn số thực 32-bit

## 8. Chỉ rõ kiểu dữ liệu
```swift
var x: Int = 10
var y: Float
y = 5.0
var welcome: String
welcome = "Xin chào"
```
`x` sẽ có kiểu dữ liệu là `Int`, `y` có kiểu dữ liệu `Float`, `welcome` có kiểu dữ liệu `String`.

Nếu không chỉ rõ kiểu dữ liệu, trình biên dịch sẽ ngầm định kiểu dữ liệu:
```swift
let PI = 3.14   // PI có kiểu Double
var count = 3   // count có kiểu dữ liệu Int
```
Hai câu lệnh trên tương đương với:
```swift
let PI: Double = 3.14
var count: Int = 3
```

## 9. Biểu diễn số
**Các số nguyên** được biểu diễn dưới các dạng:
* Hệ cơ số 10 - thập phân (decimal), không có tiền tố (prefix)
* Hệ cơ số 2 - nhị phân (binary), bắt đầu bằng `0b`
* Hệ cơ số 8 - bát phân (octal), bắt đầu bằng `0o`
* Hệ cơ số 16 - thập lục phân (hexadecimal), bắt đầu bằng `0x`

Ví dụ biểu diễn số 17:
```swift
let decimalInteger = 17
let binaryInteger = 0b10001       // số 17 ở hệ nhị phân
let octalInteger = 0o21           // số 17 ở hệ bát phân
let hexadecimalInteger = 0x11     // số 17 ở hệ thập lục phân
```
Số nguyên hệ thập lục phân thường được sử dụng để khởi tạo mã màu trong lập trình.

**Các số thực** được biểu diễn dưới dạng thập phân (decimal) hoặc thập lục phân (hexadecimal). Số thực dạng thập phân có thể biểu diễn ở dạng số mũ (exponent), sử dụng `E` hoa hoặc `e` thường. Ví dụ:
* 1.25e2 (nghĩa là 1.25 x 10 ^ 2 = 125.0)
* 1.25e-2 (nghĩa là 1.25 x 10 ^ -2 = 0.0125)

Số thực dạng thập lục phân bắt buộc biểu diễn ở dạng số mũ, sử dụng `P` hoa hoặc `p` thường. Ví dụ:
* 0xFp2 (nghĩa là 15 x 2 ^ 2 = 60.0)
* 0xFp-2 (nghĩa là 15 x 2 ^ -2 = 3.75)

Như vậy, số 12.1875 có tất cả các dạng biểu diễn sau:
```swift
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
```

Khi biểu diễn những con số quá dài, chúng ta có thể sử dụng dấu gạch dưới (`_`) để ngăn cách các hàng đơn vị cho dễ nhìn:
```swift
let soNguyen = 1_234_567
let soThuc = 1_234_567.890_1
```

## 10. Chuyển đổi số (ép kiểu)
### Chuyển đổi giữa các số nguyên
Để tính toán giữa các kiểu dữ liệu số khác nhau, chúng ta phải chuyển đổi về cùng 1 kiểu.
```swift
let motNghin: UInt16 = 1_000
let mot: UInt8 = 1
let motNghinLeMot = motNghin + UInt16(mot)
```
Ở ví dụ trên, ta ép kiểu của `mot` từ `UInt8` thành `UInt16` để thực hiện phép cộng.

Tất cả các kiểu dữ liệu số đều có thể chuyển đổi qua lại với nhau. Tuy nhiên để ép kiểu thành công thì số được ép kiểu phải thuộc miền giá trị của kiểu dữ liệu.
```swift
let soNguyen1: Int8 = -10
let soNguyen2: UInt8 = UInt8(soNguyen1) // biên dịch báo lỗi
```
Ở ví dụ trên, -10 không thuộc miền giá trị của `UInt8` (từ 0 đến 255) nên ép kiểu thất bại.

### Chuyển đổi giữa số nguyên và số thực
Khi ép kiểu từ số thực -> số thực, hoặc từ số nguyên -> số thực thì hoàn toàn tương tự như trên:
```swift
let phanNguyen = 3
let phanThuc = 0.14
let soPI = Double(phanNguyen) + phanThuc
```
Khi ép kiểu từ số thực về số nguyên, chỉ cần phần nguyên của số thực không vượt quá miền giá trị của kiểu số nguyên thì ép kiểu thành công:
```swift
let soThuc1 = Float(Int8.max) + Float(0.9)  // 127.9
let layPhanNguyen = Int8(soThuc1)   // 127
```

## 11. Type Aliases
Type aliases định nghĩa tên mới cho một kiểu dữ liệu có sẵn, sử dụng từ khoá `typealias`. Ví dụ:
```swift
typealias SoNguyen = UInt8
let soLonNhat: SoNguyen = SoNguyen.max    // 255
```
## 12. Kiểu Bool (Boolean)
Swift cung cấp kiểu `Bool` với 2 giá trị `true` và `false`. Giống như các ngôn ngữ khác, kiểu `Bool` thường được dùng trong các câu lệnh rẽ nhánh (if...else...):
```swift
var completed = true
if completed {
    print("Đã hoàn thành")
} else {
    print("Chưa hoàn thành")
}
```
Không giống với `C` hay `Java`, giá trị `true` và `false` không tương đương với 1 và 0. Đoạn lệnh sau sẽ báo lỗi:
```swift
let i = 1
if i { // báo lỗi không thể ép kiểu Int thành Bool

}
```

## 13. Tuple
Tuple nhóm nhiều giá trị (có thể khác kiểu dữ liệu) thành một.

Ví dụ, `(404, "Not Found")` là 1 tuple mô tả mã trạng thái HTTP.
```swift
let http404Error = (404, "Not Found")
```
`http404Error` là 1 tuple, có kiểu dữ liệu là `(Int, String)`. Câu lệnh trên tương đương với:
```swift
let http404Error: (Int, String) = (404, "Not Found")
```
Ta có các kiểu tuple khác như `(Int, Int, Int)`, hoặc `(Bool, String)`, hoặc bất cứ cách nhóm kiểu dữ liệu nào...

Để truy cập các giá trị của tuple:
```swift
let (code, message) = http404Error
print("code: \(code)")
print("message: \(message)")
```
Nếu chỉ muốn lấy ra một giá trị:
```swift
let (onlyCode, _) = http404Error
print("code: \(onlyCode)")
```
Có thể lấy trực tiếp giá trị của tuple thông qua index tương ứng bắt đầu từ 0:
```swift
print("code: \(http404Error.0)")
print("message: \(http404Error.1)")
```

Ta cũng có thể đặt tên các thành phần của tuple:
```swift
let http200Status = (statusCode: 200, description: "OK")
//let http200Status: (statusCode: Int, description: String) = (statusCode: 200, description: "OK")
//let http200Status: (statusCode: Int, description: String) = (200, "OK")
```
Khi đó ta sẽ có thêm cách truy cập giá trị của tuple như sau:
```swift
print("code: \(http200Status.statusCode)")
print("message: \(http200Status.description)")
```
Tuple là một khái niệm mới so với các ngôn ngữ khác, được dùng thường xuyên trong lập trình Swift.

## 14. Optional
Optional là 1 khái niệm quan trọng và được dùng thường xuyên trong Swift. Kiểu optional sẽ có 2 khả năng, một là chứa giá trị, hai là không có gì. Bằng cách thêm dấu `?` theo sau kiểu dữ liệu thông thường, ta sẽ được kiểu optional.

Ví dụ, khi ép kiểu từ `String` sang `Int`:
```swift
let numberString = "123"
let convertedNumber = Int(numberString)
print(convertedNumber)  // Optional(123)
```
Lúc này `convertedNumber` sẽ có kiểu dữ liệu là `Int?`, có giá trị là 123. Nếu `numberString` = `"123a"`, ép kiểu thất bại, `convertedNumber` sẽ có giá trị là `nil` (hay không gì cả).

### 14.1. Nil
Để đặt 1 biến optional về trạng thái không có giá trị, ta gán cho nó giá trị đặc biệt `nil`.
```swift
var serverCode: Int? = 404
// serverCode chứa giá trị kiểu Int là 404
serverCode = nil
// serverCode bây giờ không chứa gì cả
```
Nếu khai báo 1 biến kiểu optional mà không gán giá trị mặc định, thì tự động gán giá trị `nil` cho biến đó:
```swift
var answer: String?
// answer được tự động đặt giá trị nil
```

### 14.2. Câu lệnh `If` và Forced-Unwrapping
Dùng `if` để kiểm tra xem biến, hằng optional có chứa giá trị không:
```swift
if convertedNumber != nil {
    print("convertedNumber có chứa giá trị kiểu Int")
}
```
Khi biết chắc chắn biến, hằng kiểu optional đã có giá trị (khác `nil`), chúng ta có thể truy cập vào giá trị đó bằng cách thêm dấu `!` vào ngay sau biến, hằng đó:
```swift
if convertedNumber != nil {
    print("giá trị của convertedNumber là: \(convertedNumber!)")
}
```
Ta nói `convertedNumber!` là `Unwrapped` của `convertedNumber`. Lưu ý ở đây `convertedNumber` có kiểu dữ liệu là `Int?`, còn `convertedNumber!` có kiểu dữ liệu là `Int`.

### 14.3. Optional Binding
```swift
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
```
Cú pháp `if let...` này được sử dụng thường xuyên khi xử lý với kiểu optional. Lưu ý rằng hằng `number` có kiểu dữ liệu `Int`, và chỉ sử dụng được trong phạm vi dấu ngoặc `{` `}` ngay sau nó. Ngoài ra, có thể thay từ khoá `let` bằng `var`, khi đó `number` trở thành biến.

Các optional binding lồng nhau:
```swift
if let num1 = Int("4") {
    if let num2 = Int("20") {
        if num1 < num2 {
            print("\(num1) < \(num2)")
        }
    }
}
```
có thể gộp lại trong 1 câu lệnh `if`:
```swift
if let num1 = Int("4"), let num2 = Int("20"), num1 < num2 {
    print("\(num1) < \(num2)")
}
```

### 14.4. Implicitly Unwrapped Optionals
Bằng cách thêm dấu `!` theo sau kiểu dữ liệu thông thường, ta sẽ được kiểu *Implicitly Unwrapped Optional*.
```swift
let possibleString: String? = "optional"
let forcedString: String = possibleString! // Bắt buộc phải có dấu chấm than (!)

let assumedString: String! = "unwrapped optional"
let implicitString: String = assumedString // Không cần dấu chấm than (!)
```

Trong trường hợp gán `assumedString` (một *Implicitly Unwrapped Optional*) cho một biến, hằng không chỉ định kiểu dữ liệu, thì biến, hằng đó sẽ có kiểu optional:
```swift
let optionalString = assumedString
```
Hằng `optionalString` có kiểu `String?`.

Chúng ta có thể kiểm tra giá trị của *Implicitly Unwrapped Optional* bằng cách tương tự như kiểu *Optional*.
```swift
if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}
```
Lưu ý không nên dùng kiểu này cho một biến, hằng nào đó mà nó có thể bằng `nil`.