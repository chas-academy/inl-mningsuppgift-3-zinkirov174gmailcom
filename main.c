#include <stdio.h>
#include <math.h>



// Funktion som beräknar hypotenusan i en rätvinklig triangel
float calculate_hypotenuse(float a, float b) {
    return sqrt(pow(a, 2) + pow(b, 2));
}

int main() {
    float a = 3.0;
    float b = 4.0;

    printf("%.2f\n", calculate_hypotenuse(a, b));  // Expected output: 5.00

    //Changing the values
    a = 5.0;
    b = 12.0;

    printf("%.2f\n", calculate_hypotenuse(a, b));  // Expected output: 13.00

    return 0;
}