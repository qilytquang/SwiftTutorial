# SwiftTutorial
Ngôn ngữ lập trình Swift: nhanh, an toàn.

So với Objective-C thì Swift ra đời sau có cú pháp ngắn gọn hơn, dễ dàng tiếp cận hơn cho người mới học lập trình iOS.

Chương trình in ra chuỗi "Hello, world!":
```swift
print("Hello, world!")
```

## Code và biên dịch
Yêu cầu: Xcode 10.3, Swift 5.

Xcode cung cấp môi trường **Playground** giúp viết code và biên dịch trực tiếp.

Để tạo mới file Playground, khởi động Xcode, chọn menu **File -> New -> Playground**, hoặc ở màn hình **"Welcome to Xcode"** chọn **"Get started with a playground"**:

![Tạo mới file Playground 1](/images/playground1.jpg "Tạo mới file Playground")

Chọn **Blank** -> **Next**:
![Tạo mới file Playground 2](/images/playground2.jpg "Tạo mới file Playground - Chọn blank playground")

Đặt tên file, chọn location lưu file (nếu cần) -> **Create**:
![Tạo mới file Playground 3](/images/playground3.jpg "Tạo mới file Playground - Đặt tên, chọn location")

Di con trỏ chuột tới đầu dòng code mình muốn biên dịch tới, sẽ xuất hiện nút Run (Play), click chuột để biên dịch code (hoặc có thể click nút Execute/Stop ngay góc dưới bên trái để biên dịch):
![Biên dịch code](/images/playground4.jpg "Biên dịch code")

Sau khi biên dịch xong, panal bên phải sẽ hiển thị giá trị, kết quả từng dòng code (đây là điểm hay nhất của Playground). Panel phía dưới là màn hình console, tại đây hàm `print("Hello, world!")` sẽ in ra chuỗi "Hello, world".
![Xem kết quả](/images/playground5.jpg "Xem kết quả")

## 1. Các khái niệm cơ bản (The Basics)

### 1.1. Biến và hằng (Variables and Constants)
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

### 1.2. Đặt tên biến, hằng
Giống như C, Java,... Swift sử các kí tự chữ (a-zA-Z), số (0-9) và dấu gạch dưới (_) để đặt tên, tên không được bắt đầu bằng số. VD: `x`, `num1`, `_member`, `__sum`, `_` đều là tên hợp lệ.

Ngoài ra Swift còn cho phép sử dụng các kí tự Unicode để đặt tên (tuy nhiên trên thực tế ít dùng):
```swift
let π = 3.14
var 🐮 = "Con bò"
🐮 = "The cow"
```

### 1.3. In ra biến, hằng
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

### 1.4. Chú thích (Comments)
Sử dụng `//` hoặc `/*` `*/` để tạo chú thích:
```swift
// Chú thích 1 dòng
/* Chú thích nhiều dòng
Dòng 2
Dòng 3 */
```

### 1.5. Dấu chấm phẩy
Trong Swift sử dụng dấu `;` để ngăn cách 2 câu lệnh trên cùng 1 dòng (thực tế hiếm khi dùng tới dấu chấm phẩy):
```swift
let cat = "🐱"; print(cat)
```

### 1.6. Các kiểu số nguyên
Swift cung cấp các kiểu số nguyên có dấu và không dấu có kích thước 8, 16, 32, 64 bit như sau: `Int8`, `Int16`, `Int32`, `Int64`, `UInt8`, `UInt16`, `UInt32`, `UInt64`. Trong đó tiền tố `U` là viết tắt của `Unsigned` (không dấu).

Để kiểm tra miền giá trị của các kiểu dữ liệu, chúng ta gọi các thuộc tính tĩnh `min` và `max`:
```swift
let minValue = Int32.min   // -2147483648
let maxValue = Int32.max   // 2147483647
UInt32.min  // 0
UInt32.max  // 4294967295
```

#### Kiểu Int
Swift cung cấp thêm kiểu số nguyên thông dụng và thường dùng hơn là `Int`, kiểu này có kích thước phục thuộc vào nề tảng hệ điều hành thực thi là 32-bit hay 64-bit.
* Trên nền tảng 32-bit, `Int` tương đương với `Int32`
* Trên nền tảng 64-bit, `Int` tương đương với `Int64`

#### Kiểu UInt
`UInt` là kiểu số nguyên không dấu, tương tự như kiểu `Int`:
* Trên nền tảng 32-bit, `UInt` tương đương với `UInt32`
* Trên nền tảng 64-bit, `UInt` tương đương với `UInt64`

### 1.7. Các kiểu số thực (số thập phân)
Có 2 kiểu số thực là `Double` và `Float`:
* `Double` biểu diễn số thực 64-bit
* `Float` biểu diễn số thực 32-bit

### 1.8. Chỉ rõ kiểu dữ liệu
```swift
var x: Int = 10
var y: Float
y = 5.0
var welcome: String
welcome = "Xin chào"
```
`x` sẽ có kiểu dữ liệu là Int, `y` có kiểu dữ liệu Float, `welcome` có kiểu dữ liệu String.

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

### 1.9. Biểu diễn số
Các số nguyên được biểu diễn dưới các dạng:
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
Hệ thập lục phân thường được sử dụng để khởi tạo mã màu trong lập trình.

Các số thực được biểu diễn dưới dạng thập phân (decimal) hoặc thập lục phân (hexadecimal). Số thực dạng thập phân có thể biểu diễn ở dạng số mũ (exponent), sử dụng `E` hoa hoặc `e` thường. Ví dụ:
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
let soThuc =. 1_234_567.890_1
```

### 1.10. Chuyển đổi số (ép kiểu)
#### Chuyển đổi giữa các số nguyên
Để tính toán giữa các kiểu dữ liệu số khác nhau, chúng ta phải chuyển đổi về cùng 1 kiểu. Ở ví dụ dưới, ta ép kiểu của `mot` từ `UInt8` thành `UInt16` để thực hiện phép cộng:
```swift
let motNghin: UInt16 = 1_000
let mot: UInt8 = 1
let motNghinLeMot = motNghin + UInt16(mot)
```
Tất cả các kiểu dữ liệu số đều có thể chuyển đổi qua lại cho nhau. Để ép kiểu thành công thì số được ép kiểu phải thuộc miền giá trị của kiểu dữ liệu. Ở ví dụ dưới, -10 không thuộc miền giá trị của `UInt8` (từ 0 đến 255) nên ép kiểu thất bại:
```swift
let soNguyen1: Int8 = -10
let soNguyen2: UInt8 = UInt8(soNguyen1) // biên dịch báo lỗi
```

#### Chuyển đổi giữa số nguyên và số thực
Hoàn toàn tương tự như trên khi ép kiểu giữa các số thực, hoặc ép kiểu từ số nguyên sang số thực:
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

### 1.11. Type Aliases
Type aliases định nghĩa tên mới cho một kiểu dữ liệu có sẵn, sử dụng từ khoá `typealias`. Ví dụ:
```swift
typealias SoNguyen = UInt8
let soLonNhat: SoNguyen = SoNguyen.max    // 255
```
### 1.12. Kiểu Bool (Boolean)
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
