#include <iostream>
#include <string>
using namespace std;

int main(){
    int valor1 = 0;
    string ct;
    while (true) {
        valor1 += 2;
        cout << valor1 << " almacenado en " << &valor1 << '\n';
        cin >> ct;
    }
    return EXIT_SUCCESS;
}
