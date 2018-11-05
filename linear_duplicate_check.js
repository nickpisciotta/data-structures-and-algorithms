//Linear solution O(N) to determining if a value has duplicates

function hasDuplicates(array) {
    var existingNumbers = [];
    var hasDuplicates = false; 
    array.forEach((index) => {
        if (existingNumbers[index] == undefined) {
            existingNumbers[index] = 1; 
        } else {
            hasDuplicates = true;
        }
    })
    return hasDuplicates; 
}

console.log(hasDuplicates([3, 5, 8]))