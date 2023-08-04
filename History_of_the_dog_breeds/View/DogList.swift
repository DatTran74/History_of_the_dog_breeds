//
//  DogList.swift
//  History_of_the_dog_breeds
//
//  Created by Dat, Tran Xuan Hoang on 04/08/2023.
//

import SwiftUI

struct DogList: View {
    var body: some View {
        
        NavigationView{
            List(dog) { dog in
                
                NavigationLink{
                    DogDescriptionCard(dog: dog)
                } label: {
                DogRow(dog: dog)
                }
                .navigationTitle(" Dog Breeds   ")
            }
        }
    }
}

struct BattleList_Previews: PreviewProvider {
    static var previews: some View {
        BattleList()
    }
}
