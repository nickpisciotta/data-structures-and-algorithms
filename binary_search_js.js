function binarySearch (array, value) {
    var lowerBound = 0; 
    var upperBound = array.length - 1;
    
    while (lowerBound <= upperBound) {
        var median = (lowerBound + upperBound) / 2; 
        var value_at_midpoint = array[median]; 

        if (value < value_at_midpoint) {
            upperBound = median - 1; 
        } else if (value > value_at_midpoint) {
            lowerBound = median + 1;
        } else {
            return median;
        }
    }
    return false; 
}

console.log(binarySearch([1, 2, 3], 1))