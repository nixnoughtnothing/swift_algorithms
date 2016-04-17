// Insertion Sort

import UIKit

func insertionSort(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }

    var a = array
    for x in 1..<a.count {
        var y = x
        while (y > 0) && (a[y] < a[y-1]) { // 配列のindexが0より大きい かつ 値が一つ前のindexの値よりも小さいとき
            swap(&a[y-1], &a[y]) // 値を入れ替える
            y -= 1 // indexを-1、条件が合えば再度ループ処理に入る
        }
    }
    return a
}

let list = [10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26]
insertionSort(list)


// swap 関数を使わないやり方(a bit faster)
func insertionSort2(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }

    var a = array
    for x in 1..<a.count {
        var y = x
        let temp = a[y] // 一時的にindex y の値をtempに保持
        while (y > 0) && temp < a[y - 1] { // 配列のindexが0より大きい かつ 値が一つ前のindexの値よりも小さいとき
            a[y] = a[y-1] // a[y-1]の値をa[y]に代入
            y -= 1 // 左側に自分よりも小さい値がなくなるまで続ける
        }
        a[y] = temp // 元の値を適切なのindex yで代入する
    }
    return a
}

insertionSort2(list)


// Int以外もsortに対応する => 引数にgenericsを使えるように
func insertionSort3<T>(array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
    guard array.count > 1 else { return array }
    
    var a = array
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && isOrderedBefore(temp, a[y - 1]) {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}

insertionSort3(list, >)
