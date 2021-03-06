//
//  ProfilView.swift
//  Instagram Clone
//
//  Created by Burak Cüce on 27.06.22.
//

import SwiftUI

struct ProfilView: View {
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    let imageDimension = UIScreen.main.bounds.width / 3
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    
                    Text("maxmustermann00")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    
                    Image(systemName: "plus.app")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color.black)
                        .padding()
                    
                    Image(systemName: "list.bullet")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.black)

                    
                    
                }
                
                HStack {
                    Image("Profil-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 88, height: 88)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 27) {
                        
                        Spacer()
                        
                        VStack(spacing: 2) {
                            Text("1")
                                .font(.subheadline)
                                .foregroundColor(Color.black)
                                .fontWeight(.semibold)
                            
                            Text("Beiträge")
                                .font(.caption)
                                .foregroundColor(Color.black)
                        }
                        
                        VStack(spacing: 2) {
                            Text("20")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)

                            
                            Text("Follower")
                                .font(.caption)
                                .foregroundColor(Color.black)

                        }
                        
                        VStack(spacing: 2) {
                            Text("15")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)

                            
                            Text("Gefolgt")
                                .font(.caption)
                                .foregroundColor(Color.black)

                        }
                        
                        Spacer()
                    }
                    
                }
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Max Mustermann")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 4)
                
                HStack {
                    Text("Profil bearbeiten")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .frame(width: 330, height: 34)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray3))
                        )
                    
                    Image(systemName: "person.badge.plus")
                        .font(.footnote)
                        .frame(width: 32, height: 34)
                        .foregroundColor(Color.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray3))
                        )
                }
                
                HStack {
                    Spacer()
                    Image(systemName: "squareshape.split.3x3")
                        .font(.title)
                    
                    Spacer()
                    
                    Image(systemName: "person.crop.square")
                        .font(.title)
                    
                    Spacer()
                    
                }
                .foregroundColor(Color(.darkGray))
                .padding(.vertical, 6)
                
                LazyVGrid(columns: columns) {
                    ForEach(0 ..< 1, id: \.self) { index in
                        Image("Foto")
                            .resizable()
                            .scaledToFill()
                            .frame(width: imageDimension, height: imageDimension)
                            .border(Color.white)
                            .clipped()
                    }
                }
            }
            .padding()
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
