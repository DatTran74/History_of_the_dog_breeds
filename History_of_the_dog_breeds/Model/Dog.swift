//
//  Dog.swift
//  History_of_the_dog_breeds
//
//  Created by Dat, Tran Xuan Hoang on 04/08/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Dog: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var dogEra: String
    var summary:[String]
    var description: String
    var fact: String
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
    var locationCoordinate: CLLocationCoordinate2D

}
