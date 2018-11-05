package search;

public class Search {


    public static void main(String[] args) {
        int target = 10;
        int[] searchArray = {1, 3, 4, 5, 10};

        System.out.println(binarySearch(target, searchArray));

    }

    public static boolean binarySearch(int target, int[] array) {
        int leftIndex = 0;
        int rightIndex = array.length - 1;


        while (leftIndex <= rightIndex) {
            int midpoint = (rightIndex + leftIndex)/2;
            int guess = array[midpoint];

            if (guess == target) {
                return true;
            }

            if (guess < target) {
                leftIndex = midpoint + 1;
            }

            if (guess > target) {
                rightIndex = midpoint - 1;
            }
        }
        return false;
    }

}
