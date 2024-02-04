import Foundation

func processStrings() {
    print("Combining lines")
    print("Enter the first line:", terminator: " ")
    guard let firstLine = readLine() else {
        print("Unable to read the first line!")
        return
    }
    print("Enter the second line:", terminator: " ")
    guard let secondLine = readLine() else {
        print("Unable to read the second line!")
        return
    }
    
    let combinedLine = firstLine + secondLine
    print("Combined line: \(combinedLine)")
    
    print("Flip a line")
    print("Enter a line:", terminator: " ")
    guard let inputLine = readLine() else {
        print("Unable to read the line!")
        return
    }
    
    let flippedLine = String(inputLine.reversed())
    print("Flipped line: \(flippedLine)")
    
    print("Counting characters")
    print("Enter a line:", terminator: " ")
    guard let countLine = readLine() else {
        print("Unable to read the line!")
        return
    }
    
    let characterCount = countLine.replacingOccurrences(of: " ", with: "").count
    print("Number of characters: \(characterCount)")
    
    print("Search for a substring")
    print("Enter the main string:", terminator: " ")
    guard let mainString = readLine() else {
        print("Unable to read the main string!")
        return
    }
    
    print("Enter the substring to search for:", terminator: " ")
    guard let substring = readLine() else {
        print("Unable to read the substring!")
        return
    }
    
    if let range = mainString.range(of: substring) {
        let startIndex = mainString.distance(from: mainString.startIndex, to: range.lowerBound)
        print("Substring found at index \(startIndex)")
    } else {
        print("Substring not found!")
    }
}
processStrings()
