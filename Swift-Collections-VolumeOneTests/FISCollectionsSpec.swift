import Quick
import Nimble
import Swift_Collections_VolumeOne

class FISCollectionsSpec: QuickSpec {
    override func spec() {
        
        var collections : FISCollections = FISCollections()
        var jams = [String]()
        
        beforeSuite {
            
            jams = ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]
        }
        
        //1
        describe("sortArrayAsc") {
            it ("should return an array sorted in ascending order") {
                
                var result = collections.sortArrayAsc([5,2,3])
                expect(result).to(equal([2,3,5]))
            }
        }
        
        //2
        describe("sortArrayDesc") {
            it ("should return an array sorted in descending order") {
                var result = collections.sortArrayDesc([5,2,3])
                expect(result).to(equal([5,3,2]))
            }
        }
        
        //3
        describe("swapElements") {
            it("should swap the second and third elements of an array") {
                let result = collections.swapElements(["Blake","Ashley","Scott"])
                expect(result).to(equal(["Blake","Scott","Ashley"]))
            }
        }
        
        //4
        describe("reverseArray") {
            it("should reverse the elements in the array") {
                let result = collections.reverseArray(["Blake","Ashley","Scott"])
                expect(result).to(equal(["Scott","Ashley","Blake"]))
            }
        }
        //5
        describe("keshaMaker") {
            
            it("should replace the third character of a word with the $ character") {
//                let result = collections.keshaMaker("Blake")
//                expect(result).to(equal("Bl$ke"))
            }
            
        }
        
        //6
        describe("greater than and less than 10") {
            it("should take an array as an input and create a dictionary with two keys, 'greater_than_10' and 'less_than_10' with values that are arrays of any numbers greater than 10 or less than 10")
                {
                    let result = collections.greaterAndLessThan10([100,1000,5,2,3,15,1,1,100])
                    
                    expect(result).to(equal(["greater_than_10":[100,1000,15,100],"less_than_10":[5,2,3,1,1]]))
                }
        }
        
        //7
        describe("findWinners") {
            it("find all the winners and return them in an array") {
                let result = collections.findWinners(["blake": "winner",
                    "ashley": "loser",
                    "caroline": "loser",
                    "carlos": "winner"])
                
                
                //isSuperSet needed?
                expect(result).to(equal(["blake","carlos"]))
                expect(result.count).to(equal(2))
            }
        }
        
        //8
        describe("findA") {
            it("finds all the words beginning with the letter A in an array") {
                let result = collections.findA(["Apple","Pear","Orange","Avis","Arlo","Ascot"])
                expect(result).to(equal(["Apple","Avis","Arlo","Ascot"]))
            }
        }
        
        //9
        describe("findSecondA") {
            it("finds all words in an array that have as their second letter, the letter 'a'") {
                let result = collections.findSecondA(["Apple","Aardvark","Zach","Arlo","Ascot"])
                expect(result).to(equal(["Aardvark","Zach"]))
            }
        }
        
        //10
        describe("addS") {
            it("adds the letter 's' to every string in an array except the second element") {
             let result = collections.addS(["Apple","Orange","Pear","Pineapple"])
                expect(result).to(equal(["Apples","Orange","Pears","Pineapples"]))
            }
        }
        
        //11
        describe("countWordsInStory") {
            it("should take in a string of words and return a dictionary where each word is a key and the value is the count of the number of times that word appears in the string") {
                
                let result = collections.countWordsIn("The summer of tenth grade was the best summer of my life. I went to the beach everyday and we had amazing weather. The weather didnt really vary much and was always pretty hot although sometimes at night it would rain. I didnt mind the rain because it would cool everything down and allow us to sleep peacefully. Its amazing how much the weather affects your mood. Who would have thought that I could write a whole essay just about the weather in tenth grade. Its kind of amazing right? Youd think for such an interesting person I might have more to say but you would be wrong.")
                
                let storyCount = ["The":2, "summer":2, "of":3, "tenth":2, "grade":1,
                "was":2, "the":5, "best":1, "my":1, "life.":1, "I":4,
                "went":1, "to":3, "beach":1, "everyday":1, "and":3,
                "we":1, "had":1, "amazing":3, "weather.":1, "weather":3,
                "didnt":2, "really":1, "vary":1, "much":2, "always":1,
                "pretty":1, "hot":1, "although":1, "sometimes":1, "at":1,
                "night":1, "it":2, "would":4, "rain.":1, "mind":1, "rain":1,
                "because":1, "cool":1, "everything":1, "down":1, "allow":1,
                "us":1, "sleep":1, "peacefully.":1, "Its":2, "how":1,
                "affects":1, "your":1, "mood.":1, "Who":1, "have":2,
                "thought":1, "that":1, "could":1, "write":1, "a":1,
                "whole":1, "essay":1, "just":1, "about":1, "in":1,
                "grade.":1, "kind":1, "right?":1, "Youd":1, "think":1,
                "for":1, "such":1, "an":1, "interesting":1, "person":1,
                "might":1, "more":1, "say":1, "but":1, "you":1, "be":1, "wrong.":1]
                
                expect(result).to(equal(storyCount))
            }
        }
        
        //12
        describe("organizeSongsByArtist") {
            it ("organizes songs by artist!") {
                let result = collections.organizeSongsByArtist(jams)
                 expect(result) == ["dave matthews band": ["tripping billies","#41"], "calvin harris": ["some techno song"], "avicii":["some other dance song"], "oasis":["wonderwall","champagne supernova"]]
            }
        }
        
    }
}
