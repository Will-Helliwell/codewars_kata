const reverse_words = require('./reverse_words.js');

describe("reverse_words function tests" , () => {

    test("an empty string returns the same", () => {
        expect(reverse_words("")).toBe("");
    });

    test("an only spaces returns the same", () => {
        expect(reverse_words(" ")).toBe(" ");
        expect(reverse_words("  ")).toBe("  ");
    });
});
