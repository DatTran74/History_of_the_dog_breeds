//
//  DescriptionView.swift
//  History_of_the_dog_breeds
//
//  Created by Dat, Tran Xuan Hoang on 04/08/2023.
//

import SwiftUI

struct DescriptionView: View {
    let text:String


    
    var body: some View {
        
        //Using Zstack to cover the description background with color
        ZStack{
            Color(.cyan)
            VStack{
            
                Text(text)
                    .foregroundColor(.black)
                    .padding(20)


            }
        }

    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(text: """
Dog breeds are a diverse group of animals, each with its own unique appearance, temperament, and needs. Some breeds are known for their intelligence, while others are known for their loyalty or their athleticism. There is a dog breed out there for everyone, so it is important to do your research before you choose one.
When choosing a dog breed, it is important to consider your lifestyle and your needs. If you are active and like to go on long walks or hikes, you will need a breed that is also active. If you have children, you will need a breed that is good with children. And if you live in a small apartment, you will need a breed that is not too big. While purebred dogs are popular, there are millions of mixed breeds and hybrid breeds that need love and forever homes.

""" )
        
    }
}
