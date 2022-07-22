//
//  ContentView.swift
//  Word Play
//
//  Created by Lina Bhatia on 7/21/22.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView{
            VStack{
                Text("Please enter words for a cool story: ")
                    .padding()
                HStack{
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective)
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "Type of Bird", variable: $words.typeOfBird)
                }
                HStack{
                    CustomTextField(placeholder: "Room", variable: $words.roomInHouse)
                    CustomTextField(placeholder: "Verb(past tense)", variable: $words.verbPT)

                }
                HStack{
                    CustomTextField(placeholder: "Relative Name", variable: $words.relativeName)
                    CustomTextField(placeholder: "Plural Noun", variable: $words.pluralNoun)
                    CustomTextField(placeholder: "Liquid", variable: $words.liquid)
                }
                HStack{
                    CustomTextField(placeholder: "Verb ending in (ing)", variable: $words.verbING)
                    CustomTextField(placeholder: "Part of Body", variable: $words.partOfBody)
                    
                }
                HStack{
                    CustomTextField(placeholder: "Noun", variable: $words.noun)
                    CustomTextField(placeholder: "Verb", variable: $words.verbING2)
                    CustomTextField(placeholder: "Noun", variable: $words.noun2)
                    CustomTextField(placeholder: "Verb", variable: $words.verb)
                }
                Spacer()
                Image("WordPic")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
               
            }
            
        }
        
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct Words {
    var adjective = ""
    var adjective2 = ""
    
    var typeOfBird = ""
    var roomInHouse = ""
    
    var verbPT = ""
    var verb = ""
    var relativeName = ""
    
    var noun = ""
    var liquid = ""
    
    var verbING = ""
    var partOfBody = ""
    var pluralNoun = ""
    
    var verbING2 = ""
    var noun2 = ""
    
    
}

struct CustomTextField: View{
    let placeholder: String
    let variable : Binding<String>
    var body: some View{
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
    
    
    
}
