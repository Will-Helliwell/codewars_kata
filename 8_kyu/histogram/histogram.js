
function print_word_frequencies(string) {
    frequencies = create_frequency_histogram(string)
    for (word in frequencies) {
        console.log(`${word}: ${frequencies[word]}\n`)
    }
}

function create_frequency_histogram(array) {
    word_frequency = {};
    words = array.split(" ");
    words.forEach(word => {
        if (word_frequency[word] == undefined) { word_frequency[word] = 1 }
        else { word_frequency[word] += 1 }
    })
    return word_frequency
}

print_word_frequencies("I am Will am")








