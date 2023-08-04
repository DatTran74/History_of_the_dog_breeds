//
//  DogDescriptionCard.swift
//  History_of_the_dog_breeds
//
//  Created by Dat, Tran Xuan Hoang on 04/08/2023.
//

import SwiftUI

struct DogDescriptionCard: View {
    var dog: Dog
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true, content: {
                VStack(alignment: .center, spacing: 10, content: {
                    
                    //Header
                    DogHeaderView(dog: dog)
                    
                    VStack(alignment: .leading, spacing: 15, content:{
                        //Title
                        Group{
                            Text(dog.title)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                            Text(dog.dogEra)
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .foregroundColor(.brown)
                        }
                        
                 
                        //Summary bar
                        SummaryView(dog: dog)
                        
                        
                        //Description
                        DescriptionView(text: dog.description)
                        
                        //Did you know ?
                        FactView(text: dog.fact)
                        

                        //Map View
                        Text("Dog origin")
                            .font(.system(size: 25))
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        MapView(coordinate: dog.locationCoordinate)
                            .edgesIgnoringSafeArea(.top)
                            .frame(height: 350)
                        //Link
                        
                    })
                    .padding(.horizontal,10)
                    .frame(maxWidth: 700, alignment: .center)
                
                })

            })
                .edgesIgnoringSafeArea(.top)

        }
        .navigationTitle(dog.title)
        .navigationBarTitleDisplayMode(.inline)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
struct DogDescriptionCard_Previews: PreviewProvider {
    static var previews: some View {
        DogDescriptionCard(dog: dogs[0])
    }
}
