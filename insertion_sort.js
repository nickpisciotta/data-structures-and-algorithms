function insertionSort(array) {
    var range = Array.from({length: array.length}, (x, i) => i ); 
    range.forEach((index) => {
        position = index 
        tempValue = array[index]

        while (position > 0 && array[position - 1] > tempValue) {
            array[position] = array[position -1]
            position = position - 1
        }
        array[position] = tempValue
    })
    return array; 
}

console.log(insertionSort([7, 3, 4, 3, 2, 5, 4, 1]))