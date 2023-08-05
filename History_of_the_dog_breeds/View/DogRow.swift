//
//  DogRow.swift
//  History_of_the_dog_breeds
//
//  Created by Dat, Tran Xuan Hoang on 04/08/2023.
//

import SwiftUI

struct DogRow: View {
    var dog: Dog
    var body: some View {
        HStack{
        dog.image
                .resizable()
                .frame(width: 100, height: 50)
            Text(dog.title)
        }
    }
}

struct DogRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DogRow(dog: dogs[0])
            DogRow(dog: dogs[1])
            DogRow(dog: dogs[3])

            

        }
        .previewLayout(.sizeThatFits)

    }
}
