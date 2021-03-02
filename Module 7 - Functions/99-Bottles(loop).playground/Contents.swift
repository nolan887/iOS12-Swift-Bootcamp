import UIKit

func beerSong(beerNumber : Int) -> String {
    var lyrics : String = ""
    
    for number in (1...beerNumber).reversed() {
        let newLine : String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down, pass it around, \(number-1) bottles of beer on the wall!\n"
        lyrics += newLine
    }
    
    lyrics += "\nNo more bottles of beer on the wall, no bottles of beer. \nGo to the store and buy some more,  \(beerNumber) bottles of beer on the wall!\n"
    
    return lyrics
}

print(beerSong(beerNumber: 4))
