//
//  ContentView.swift
//  Test
//
//  Created by Aleksei Staiger on 23.10.2020.
//

import SwiftUI

var tutors: [Tutor] = []

struct ContentView: View {
    var tutors: [Tutor] = []
 
    var body: some View {
        List(tutors) { tutor in
            Image(tutor.imageName)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        //2
        ContentView(tutors: testData)
    }
}
#endif
