import Foundation

func decodeMorse(_ morseCode: String) -> String {
    var text = morseCode
    let morseDictionary = [
        ".-": "A", "-...": "B", "-.-.": "C", "-..": "D", ".": "E",
        "..-.": "F", "--.": "G", "....": "H", "..": "I", ".---": "J",
        "-.-": "K", ".-..": "L", "--": "M", "-.": "N", "---": "O",
        ".--.": "P", "--.-": "Q", ".-.": "R", "...": "S", "-": "T",
        "..-": "U", "...-": "V", ".--": "W", "-..-": "X", "-.--": "Y",
        "--..": "Z", "-----": "0", ".----": "1", "..---": "2", "...--": "3",
        "....-": "4", ".....": "5", "-....": "6", "--...": "7", "---..": "8",
        "----.": "9", ".-.-.-": ".", "--..--": ",", "..--..": "?", "-.-.--": "!",
        "-....-": "-", "-.--.": "(", "-.--.-": ")", "...---...": "SOS"
    ]
    var encodedArray = [String]()
    var encodedPhrase = ""
    while text.starts(with: " ") {
        text.remove(at: text.startIndex)
    }
    let wordsArray = text.components(separatedBy: "   ")
    for word in wordsArray {
        var newword = ""
        let characterArray = word.components(separatedBy: " ")
        for character in characterArray {
            newword += morseDictionary[String(character)] ?? ""
        }
        encodedArray.append(newword)
    }
    encodedPhrase = encodedArray.joined(separator: " ")
    return encodedPhrase
}

decodeMorse("      ...---... -.-.--   - .... .   --.- ..- .. -.-. -.-   -... .-. --- .-- -.   ..-. --- -..-   .--- ..- -- .--. ...   --- ...- . .-.   - .... .   .-.. .- --.. -.--   -.. --- --. .-.-.-  ")
