//
//  ShoppingView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 27.06.22.
//

import SwiftUI

struct ShoppingView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<6) {
                        Text("Shops \($0)")
                        
                    }
                }
                
                ScrollView {
                    Text("123")
                        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Suche")
                        .navigationBarTitleDisplayMode(.large)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Text("Shop")
                                    .font(.title)
                                    .fontWeight(.semibold)
                            }
                            
                            ToolbarItem(placement: .navigationBarTrailing) {
                                HStack {
                                    
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "bookmark")
                                            .resizable()
                                            .renderingMode(.template)
                                            .foregroundColor(Color.black)
                                    }
                                    
                                    
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "list.bullet")
                                            .resizable()
                                            .renderingMode(.template)
                                            .foregroundColor(Color.black)
                                    }
                                }
                            }
                        }
                }
            }
            
        }
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}
