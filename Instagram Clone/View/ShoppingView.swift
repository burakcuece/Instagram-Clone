//
//  ShoppingView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 27.06.22.
//

import SwiftUI

struct ShoppingView: View {
    
    @State private var searchText = ""
    
    let images = ["Foto1", "Foto2", "Foto3", "Foto4", "Foto5", "Foto6", "Foto7", "Foto8"]
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible())]
    
    let imageDimension = UIScreen.main.bounds.width / 2

    
    var body: some View {
        NavigationView {
            ScrollView() {
            
                
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(0 ..< 8, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: imageDimension, height: imageDimension)
                            .border(Color.white)
                            .clipped()
                    }
                }

                
                    .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Suche")
                    .navigationBarTitleDisplayMode(.large)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("Shop")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
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

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}
