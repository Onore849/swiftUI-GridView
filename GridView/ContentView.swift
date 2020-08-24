//
//  ContentView.swift
//  GridView
//
//  Created by 野澤拓己 on 2020/08/24.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        grid()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// gridLayoutの作成
struct grid : View {
    var body: some View {
        
        GeometryReader { geo in
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    
                    ForEach(1..<6) { i in
                        
                        HStack{
                            
                            Image("flower\(i)").resizable().frame(width: geo.size.width / 2 - 20).cornerRadius(8)
                            Image("flower\(i)").resizable().frame(width: geo.size.width / 2 - 20).cornerRadius(8)

                        }.frame(height: UIDevice.current.orientation.isLandscape ? 300 : 150)
                        
                    }
                }
            }
        }
    }
}

// when screen is rotated images are streching to avoid this....
