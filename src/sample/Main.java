package sample;

import java.util.Arrays;

public class Main  {


    public static void main(String[] args) {

//        int[] numbers = { 1, 3, 4, 3, 3, 7, 1, 0};
//        InsertionSort insertionSort = new InsertionSort();
//
//        insertionSort.insertionSort(numbers);
//
//
//        System.out.println(Arrays.toString(numbers));

//        char[] chars = "reverse".toCharArray();
//
//        Reverse reverse = new Reverse();
//
//        reverse.reverseString(chars);
//
//        System.out.println(chars);
        int[] array = {1, 6, 4, 10, 2, 3};

        SortableArray sortableArray = new SortableArray(array);

//        int pivotPosition = sortableArray.partition(0, array.length -  1);
//        int[] sortedArray = sortableArray.quicksort(0, array.length - 1);
        int lowestValue = sortableArray.quickSelect(array.length - 1, 0, array.length - 1);
        System.out.println(lowestValue);
    }
}
