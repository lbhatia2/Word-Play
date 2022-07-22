//
//  StoryView.swift
//  Word Play
//
//  Created by Lina Bhatia on 7/21/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        VStack{
            Image("CoolStory")
                .resizable()
                .frame(width: 250, height: 220, alignment: .center)
                .padding(50)
            
        
        Text(writeStory())
    }
    
  
    }
    

    
    func writeStory() -> String{
        return "It was a \(words.adjective) cold November day. " + "I woke up to the \(words.adjective2) smell of \(words.typeOfBird) roasting in the  \(words.roomInHouse). " + "I \(words.verbPT) downstairs to see if I could help \(words.verb) the dinner. " + "My mom said see if \(words.relativeName) needs a fresh \(words.pluralNoun). " + " So I carried a glass full of \(words.liquid) into the \(words.verbING) room. " + "When I got there i could not believe my \(words.partOfBody)! " + "There were \(words.pluralNoun) \(words.verbING2) on the \(words.noun2)"
           
    
        
    }
   

}



struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
