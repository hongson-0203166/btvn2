//
//  main.swift
//  btvn2
//
//  Created by Phạm Hồng Sơn on 03/11/2023.
//

import Foundation

// Hàm kiểm tra n là số nguyên dương hay không
func isPositive(_ n: Int) -> Bool {
    return n > 0
}

// Hàm kiểm tra n là số chẵn hay không
func isEven(_ n: Int) -> Bool {
    return n % 2 == 0
}

// Hàm kiểm tra n có chia hết cho 5 hay không
func isDivisibleBy5(_ n: Int) -> Bool {
    return n % 5 == 0
}

// Hàm kiểm tra n là số nguyên tố hay không
func isPrime(_ n: Int) -> Bool {
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
    if isPositive(n) {
        print("n là số nguyên dương.")
    } else {
        print("n không là số nguyên dương.")
    }
    
    if isEven(n) {
        print("n là số chẵn.")
    } else {
        print("n không là số chẵn.")
    }
    
    if isDivisibleBy5(n) {
        print("n chia hết cho 5.")
    } else {
        print("n không chia hết cho 5.")
    }
    
    if isPrime(n) {
        print("n là số nguyên tố.")
    } else {
        print("n không là số nguyên tố.")
    }
}c else {
    print("Không phải số nguyên.")
}


