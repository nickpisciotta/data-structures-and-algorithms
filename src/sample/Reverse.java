package sample;

public class Reverse {

    public void reverseString(char[] characters) {
        int leftIndex = 0;
        int rightIndex = characters.length -1;

        while (leftIndex < rightIndex) {

            char temp = characters[leftIndex];
            characters[leftIndex] = characters[rightIndex];
            characters[rightIndex] = temp;


            leftIndex++;
            rightIndex--;
        }
    }
}
