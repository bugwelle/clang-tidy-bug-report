
struct Element {
	int* a = nullptr;
};

void fct(Element& elem) {
    if (elem.a) {
        delete elem.a;
    }
}
