
import SwiftUI

struct DogHeaderView: View {
    var dog:Dog
    
    var body: some View {
        ZStack{
            Image(dog.imageName)
                .resizable()
                .padding(15)
            
        }
        .frame(height: 350)
    }
}

struct BattleHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DogHeaderView(dog: dogs[5])
            .previewLayout(.sizeThatFits)
    }
}
