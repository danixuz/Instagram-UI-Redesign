//
//  Home.swift
//  Instagram-UI-Redesign
//
//  Created by Daniel Spalek on 01/08/2022.
//

import SwiftUI

struct Home: View {
    
    let IGgray: Color = Color(red: 60/255, green: 60/255, blue: 60/255)
    var body: some View {
        ZStack{
            // MARK: Background color
            Color(.systemGray5)
                .ignoresSafeArea()
            
            VStack{
                // MARK: Logo and some icons
                HStack{
                    Image(systemName: "camera.aperture")
                    Spacer()
                    Image("instagramLogoBlack")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 50)
//                        .background(.red)
                    Spacer()
                    Image(systemName: "ellipsis.message")
                        .foregroundStyle(.black, .black)
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 10)
                .font(.title2)
//                .background(.green)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        // MARK: Stories section
                        StoriesSection()
                        
                        // MARK: Search section
                        HStack{
                            Text("Search")
                                .font(.title.bold())
                                .foregroundColor(IGgray)
                            Spacer()
                            
                            
                        }
                        .padding(.horizontal)
                        
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    func StoriesSection() -> some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .top ,spacing: 16){
                VStack{
                    Image("pfpDaniel")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .overlay{
                            LinearGradient(colors: [
                                .purple,
                                .purple,
                                .pink
                            ], startPoint: .bottom, endPoint: .top) // Plus gradient
                            .frame(width: 24, height: 24)
                            .clipShape(Circle())
                            .overlay{
                                Image(systemName: "plus")
                                    .resizable()
                                    .foregroundColor(Color(.systemGray5))
                                    .frame(width: 11, height: 11)
                            } // Plus
                            .background{
                                Circle()
                                    .foregroundColor(Color(.systemGray5))
                                    .frame(width: 28, height: 28)
                            } // White ring
                            .offset(y: 35) // offset to below pfp
                        } // Plus icon
                } // Add story button
                ForEach(sampleUsers){ user in
                    VStack{
                        Image(user.image)
                            .resizable()
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                            .background{
                                LinearGradient(colors: [
                                    .purple,
                                    .pink
                                ], startPoint: .bottom, endPoint: .top)
                                .frame(width: 76, height: 76)
                                .clipShape(Circle())
                            }
                        Text(user.username)
                            .font(.caption)
                            .foregroundColor(IGgray)
                    }
                } // Other users' stories
            }
            .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
