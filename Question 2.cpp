#include <stdio.h>

// Function for linear search in an array (call by value)
// Returns the index of the element if found, otherwise returns 0
int linear_search(int arr[], int element, int size) {
    for (int i = 0; i < size; i++) {
        if (arr[i] == element)
            return i;
    }
    return 0;
}

// Function to replace a given element with a new element in the array (call by reference)
void replace_array_element(int *arr, int element, int size, int new_ele) {
    for (int i = 0; i < size; i++) {
        if (arr[i] == element)
            arr[i] = new_ele;
    }
}

int main() {
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};

    // Calculate the size of the array
    int size = sizeof(arr) / sizeof(arr[0]);

    // Call the linear_search function (call by value)
    int found_index = linear_search(arr, 7, size);
    printf("Element found at index: %d\n\n", found_index);

    // Call the replace_array_element function (call by reference)
    replace_array_element(arr, 10, size, 90);

    // Print the modified array
    printf("Array after replacement:\n");
    for (int i = 0; i < size; i++) {
        printf("%d\n", arr[i]);
    }

    return 0;
}
