//
//  FactView.swift
//  History_of_the_dog_breeds
//
//  Created by Dat, Tran Xuan Hoang on 04/08/2023.
//

import SwiftUI

struct FactView: View {
    let text:String
    var body: some View {
        
        GroupBox{
            DisclosureGroup(" 🔎  Did you know ? ")
            {
                Text(text)
                    .foregroundColor(.black)
                    .font(Font.system(.body).italic())
                    .padding(5)
            }
        }
        .foregroundColor(.green)
            .font(.system(size: 28))

        
    }
}

struct FactView_Previews: PreviewProvider {
    static var previews: some View {
        FactView(text: "This amazing dog fact might answer a long-standing question that dog owners have. Why are dogs noses wet? Vetstreet says that the answer is that dog’s noses are wet to help them absorb scent chemicals! Their nose secretes a special mucus that helps to absorb these chemicals, and then they lick their noses to sample them, helping them understand what the smell is.")
        
    }
}
