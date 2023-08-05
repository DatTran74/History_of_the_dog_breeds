//
//  DogIntroCard.swift
//  History_of_the_dog_breeds
//
//  Created by Dat, Tran Xuan Hoang on 05/08/2023.
//

import SwiftUI

struct DogIntroCard: View {
    @State private var isAnimation = false
    var dog: Dog
    
    var body: some View {
        ZStack{
            VStack(spacing: 15){
                //Image of Battle
                Image(dog.imageName)
                    .resizable()
                    .scaledToFit()
                
                
                //Title of Battle
                Text(dog.title)
                    .foregroundColor(.yellow)
                    .fontWeight(.heavy)
                    .font(.title2)
                    .offset(x:-10)
                    .multilineTextAlignment(.center)

                
                //Battle Headline
                Text(dog.headline)
                    .fontWeight(.light)
                    .font(.system(size: 15))
                    .offset(y:-10)


                
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .padding(25)
        .background(.cyan)
    }
}

struct DogIntroCard_Previews: PreviewProvider {
    static var previews: some View {
     DogIntroCard(dog: dogs[2])
    }
}

