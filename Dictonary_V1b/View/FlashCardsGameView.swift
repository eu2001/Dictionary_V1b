//
//  FlashCardGameView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct FlashCardsGameView: View {
    @EnvironmentObject var model: ContentModel
        
        var cardColor: Color {
                return Color(
                    .sRGB,
                    red: 0.2,
                    green: 0.2,
                    blue: 0.7,
                    opacity: 0.8
                )
            }
    @State var texto = "Good Morning"
        var body: some View {
                VStack{
                Text("Flashcards")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                
                Text("Emergency Vocabulary")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack(spacing:35){
                    Image("english").resizable().scaledToFill().frame(minWidth: 30, idealWidth: 70, maxWidth: 70, minHeight: 30, idealHeight: 70, maxHeight: 70, alignment: .center).cornerRadius(45)
                    Image(systemName: "arrow.right.circle").resizable().frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center)
                    Image("german").resizable().scaledToFill().frame(minWidth: 30, idealWidth: 70, maxWidth: 70, minHeight: 30, idealHeight: 70, maxHeight: 70, alignment: .center).cornerRadius(45)
                }
                TabView {
                    
                    ForEach (model.books){
                        r in
                        
                        ZStack{
                            VStack{
                                Rectangle().background(.white).foregroundColor(cardColor).frame(minWidth: 0,  maxWidth: 300, minHeight: 0, maxHeight: 200,  alignment: .center).cornerRadius(25).shadow(color: .gray, radius: 7, x: 7, y: 7).onTapGesture { texto = r.nameGer}
                            }
                            VStack{
                                Text(texto)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                }
                        }
                    } }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                Spacer()
                HStack{
                    Spacer()
                    Button {} label: {
                        VStack(spacing:0){ Image(systemName: "star").foregroundColor(.yellow)
                            Text("Favorites")
                                .font(.caption2)
                            .foregroundColor(Color.black)}.frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center)
                    }
                    
                   
                    Spacer()
                    Button {} label: {
                        Image(systemName: "speaker.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 60, maxWidth: 60, minHeight: 30, idealHeight: 60, maxHeight: 60, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)
                    }
                    
                    
                    Spacer()
                    Button {} label: {
                        Image(systemName: "tortoise.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)}
                    Spacer()
                    
                }
                Spacer()
                
            }
          
            
        }    }

struct FlashCardsGameView_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardsGameView().environmentObject(ContentModel())
    }
}
