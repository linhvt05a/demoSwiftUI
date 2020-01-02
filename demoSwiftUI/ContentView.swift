//
//  ContentView.swift
//  demoSwiftUI
//
//  Created by hoanglinh on 1/2/20.
//  Copyright © 2020 hoanglinh. All rights reserved.
//

import SwiftUI
struct UserList: Identifiable {
    public var id: Int
    public var Message: String
    public var UserName: String
}
struct ContentView: View {
    let user:[UserList] = [
    .init(id: 1, Message: "Say new iphone 11 pro max", UserName: "TimCook"),
    .init(id:2, Message: "Say about the chip Xeon core I9 ", UserName: "BobSwan"),
    .init(id: 3, Message: "Sing new song and album alololo", UserName: "TaylerSwift"),
    .init(id: 4, Message: "Say good bye ", UserName: "NorsonDecan")
        
    ]
    var body: some View {
        NavigationView {
            List{
                ForEach(user, id: \.id) { user in
                    HStack {
                        Image("careabout")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipped()
                        VStack (alignment: .leading){
                            
                            Text(user.UserName).font(.headline)
                            Text(user.Message).font(.headline)
                        }
                        
                        
                    }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                    
                }
                
            }.navigationBarTitle(Text("List Cell"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
