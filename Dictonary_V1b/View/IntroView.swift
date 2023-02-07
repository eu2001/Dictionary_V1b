//
//  ContentView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct IntroView: View {
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        
       
    List(model.books) { r in
            VStack{  Text(r.nameEng)
                Text("oi")
         }
                
            }
        }
    }


struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
