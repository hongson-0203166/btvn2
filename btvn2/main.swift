//
//  main.swift
//  btvn2
//
//  Created by Phạm Hồng Sơn on 03/11/2023.
//

import Foundation

// Hàm kiểm tra n là số nguyên dương hay không
func songuyenduong(_ n: Int) -> Bool {
    return n > 0
}

// Hàm kiểm tra n là số chẵn hay không
func soChanhayLe(_ n: Int) -> Bool {
    return n % 2 == 0
}

// Hàm kiểm tra n có chia hết cho 5 hay không
func coChiaHet5(_ n: Int) -> Bool {
    return n % 5 == 0
}

// Hàm kiểm tra n là số nguyên tố hay không
func soNguyenTo(_ n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    if n <= 3 {
        return true
    }
    if n % 2 == 0 || n % 3 == 0 {
        return false
    }
    var i = 5
    while i * i <= n {
        if n % i == 0 || n % (i + 2) == 0 {
            return false
        }
        i += 6
    }
    return true
}

// Nhập số nguyên n từ người dùng
print("Nhập số nguyên n: ")
if let n = Int(readLine() ?? "") {
    if songuyenduong(n) {
        print("n là số nguyên dương.")
    } else {
        print("n không là số nguyên dương.")
    }
    
    if soChanhayLe(n) {
        print("n là số chẵn.")
    } else {
        print("n không là số chẵn.")
    }
    
    if coChiaHet5(n) {
        print("n chia hết cho 5.")
    } else {
        print("n không chia hết cho 5.")
    }
    
    if soNguyenTo(n) {
        print("n là số nguyên tố.")
    } else {
        print("n không là số nguyên tố.")
    }
} else {
    print("Không phải số nguyên.")
}

// Hàm kiểm tra a, b, c có phải là 3 cạnh của tam giác
func laTamGiac(_ a: Int, _ b: Int, _ c: Int) -> Bool {
    return (a + b > c) && (a + c > b) && (b + c > a)
}

// Hàm tính diện tích tam giác bằng công thức Heron
func DienTich(_ a: Int, _ b: Int, _ c: Int) -> Double {
    let s = Double(a + b + c) / 2.0
    return sqrt(s * (s - Double(a)) * (s - Double(b)) * (s - Double(c)))
}

// Hàm kiểm tra năm có phải là năm nhuận hay không
func namNhuan(_ year: Int) -> Bool {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
}

print("Nhập ba giá trị nguyên dương a, b, c: ")
if let input = readLine(), let a = Int(input),
   let input2 = readLine(), let b = Int(input2),
   let input3 = readLine(), let c = Int(input3) {
    
    if laTamGiac(a, b, c) {
        let area = DienTich(a, b, c)
        print("a, b, c là 3 cạnh của tam giác, diện tích tam giác là \(area)")
    } else {
        print("a, b, c không phải là 3 cạnh của tam giác.")
    }
} else {
    print("nhập giá trị nguyên dương.")
}

print("Nhập một năm: ")
if let input = readLine(), let year = Int(input) {
    if namNhuan(year) {
        print("\(year) là năm nhuận")
    } else {
        print("\(year) không là năm nhuận")
    }
} else {
    print("Vui lòng nhập một năm khác")
}

