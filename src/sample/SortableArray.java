package sample;

public class SortableArray {

    private int[] array;

    public SortableArray(int[] array) {
        this.array = array;
    }

    public int partition(int leftPointer, int rightPointer) {
        int pivotPosition = rightPointer;

        int pivot = this.array[pivotPosition];

        rightPointer--;

        while (true) {

            while (this.array[leftPointer] < pivot) {
                leftPointer++;
            }

            while (this.array[rightPointer] > pivot) {
                rightPointer--;
            }

            if(leftPointer >= rightPointer) {
                break;
            } else {
                swap(leftPointer, rightPointer);
            }

        }

        swap(leftPointer, pivotPosition);

        return leftPointer;
    }

    public int[] quicksort(int leftIndex, int rightIndex) {
        if (rightIndex - leftIndex <= 0)
            return this.array;

        int pivotPosition = partition(leftIndex, rightIndex);

        quicksort(leftIndex, pivotPosition - 1);
        quicksort(pivotPosition + 1, rightIndex);
        return this.array;
    }

    public int quickSelect(int kthLowestValue, int leftIndex, int rightIndex) {
        if(rightIndex - leftIndex <= 0)
            return this.array[leftIndex];

        int pivotPosition = partition(leftIndex, rightIndex);

        if (kthLowestValue < pivotPosition) {
            quickSelect(kthLowestValue, leftIndex, pivotPosition - 1);
        }
        else if(kthLowestValue > pivotPosition) {
            quickSelect(kthLowestValue, pivotPosition + 1, rightIndex);
        }

        return this.array[pivotPosition];
    }

    private void swap(int pointerOne, int pointerTwo) {
        int tempValue = this.array[pointerOne];
        this.array[pointerOne] = this.array[pointerTwo];
        this.array[pointerTwo] = tempValue;
    }
}
