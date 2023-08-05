//
//  WelcomeCard.swift
//  History_of_the_dog_breeds
//
//  Created by Dat, Tran Xuan Hoang on 04/08/2023.
//


import SwiftUI

struct WelcomeCard: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack {
                    Text("Welcome !")
                      .font(.system(size: 60))
                      .fontWeight(.heavy)
                      .foregroundColor(.black)
                    Text("""
                    Here is the list of major conflicts that has the most casualties in human history
                    """)
                      .font(.title3)
                      .fontWeight(.medium)
                      .foregroundColor(.black)
                      .multilineTextAlignment(.center)
                      .padding(.horizontal, 10)
                }
                
               
                
                Button(action: {
                    active = false
                }, label:{
                    Capsule()
                        .fill(Color.black.opacity(1))
                        .padding(8)
                        .frame(height:80)
                        .overlay(Text("⚔️ START ⚔️"))
                        .foregroundColor(.red)
                        
                })
            }
        }.background(.tertiary)
    }
}

struct WelcomeCard_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeCard(active: .constant(true))
    }
}
