function reverse(string) {
    // convert string to arrray
    var stringArray = string.split(""); 

    //set index of most left and most right
    var leftIndex = 0;
    var rightIndex = stringArray.length - 1; 
    
    while (leftIndex < rightIndex) {;
        var temp = stringArray[leftIndex]
        stringArray[leftIndex] = stringArray[rightIndex]
        stringArray[rightIndex] = temp; 

        leftIndex++; 
        rightIndex--; 
    }

    return stringArray.join(); 
    //loop through until left index is no longer less than right index
    //increment left index, decrement right index
}

console.log(reverse("hello"))