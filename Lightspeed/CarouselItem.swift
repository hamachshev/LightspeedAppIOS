//
//  CarouselItem.swift
//  Lightspeed
//
//  Created by Aharon Seidman on 2/7/24.
//

import SwiftUI

struct CarouselItem: View {
    var body: some View {
        ZStack(){
            Rectangle()
                .foregroundColor(Color(uiColor: UIColor(named: "MinorCellColor")!))
                
                .shadow(color: Color(uiColor: UIColor(named: "Shadow")!), radius: 1, x: 2, y: 2)
            ZStack {
                Text("Apples")
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .font(.custom("Sugar Magic - Personal Use Only", fixedSize: 19))
                .offset(y: -40)
                .foregroundColor(Color(UIColor(named: "MainTintColor")!))
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 106)
                    .offset(y:10)
                    
            }
        }
        .cornerRadius(9)
        .frame(width: 104, height: 133)
        
            
    }
}

struct CarouselItem_Previews: PreviewProvider {
    static var previews: some View {
        CarouselItem()
    }
}
