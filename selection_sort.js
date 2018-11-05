function selectionSort(array) {
    for (var i = 0; i < array.length; i++) {
        var lowestNumberIndex = i; 
        for (var j = i + 1; j < array.length; j++) {
            if (array[j] < array[lowestNumberIndex]) {
                lowestNumberIndex = j; 
            }
        }

        if(lowestNumberIndex != i) {
            var temp = array[i]; 
            array[i] = array[lowestNumberIndex]; 
            array[lowestNumberIndex] = temp; 

        }
    }
    return array; 
}


function findSmallest(array) {
    var smallest = array[0]; 
    var smallestIndex = 0; 
    
    for(var i=0; i < array.length - 1; i++) {
        if (array[i] < smallest) {
            smallest = array[i];
            smallestIndex = i;
        }
    }
    return smallestIndex;
}


function sort(array) {
    var sortedArray = []; 
    for (var i = 0; i < array.length; i++) {
        var smallestIndex = findSmallest(array); 
        sortedArray.push(array[smallestIndex]);
    }
    return sortedArray;
}

// console.log(selectionSort([3, 1, 7, 2, 4, 17]));

console.log(sort([3, 3, 4, 2, 1, 7]))

// [3, 3, 4, 2, 1, 7] => 4
// [3, 3, 4, 2, 7] => 3
// [3, 3, 4, 7] => 0 
// [3, 4, 7] => 0 
// [4, 7] => 0 
// [7] => 0 