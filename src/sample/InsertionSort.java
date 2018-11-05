package sample;

class InsertionSort {

    public void insertionSort(int[] array) {
        for (int i = 0; i < array.length; i++) {
            int position = i;
            int tempValue = array[position];

            while (position > 0 && array[position - 1] > tempValue) {
                array[position] = array[position - 1];
                position = position - 1;
            }
            array[position] = tempValue;
        }
    }
}

