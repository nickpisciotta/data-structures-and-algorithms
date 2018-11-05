function hasDuplicates(array) {
    var set = {};

    for(var number of array) {
        if (set[number] == undefined) {
            set[number] = 1
        } else 
        return true;
    }
    return false; 
}


console.log(hasDuplicates([1, 2, 3, 6, 5, 9])); 