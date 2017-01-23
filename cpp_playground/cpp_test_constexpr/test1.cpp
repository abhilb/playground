#include <iostream>

using namespace std;

constexpr int factorial1 (int n) {
	return n == 1 ? 1 : n * factorial1(n-1);
}
int main() {
	int result = factorial1(5);
	return 0;
}

