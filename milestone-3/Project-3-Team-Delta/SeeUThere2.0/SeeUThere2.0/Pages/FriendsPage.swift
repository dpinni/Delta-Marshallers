//
//  FriendsPage.swift
//  Event App
//
//  Created by Clare Rizzo on 3/12/24.
//

import SwiftUI

struct Friends: Identifiable {
    var id:UUID = UUID()
    var name:String
    var mutualFriends:Int
    var avatar:String
    var poster: String
    
    
}
    

struct FriendsPage: View {
    
    var friends:[Friends] = [
        Friends(name: "Svea Johnson", mutualFriends: 100, avatar: "svea", poster: "img1"),
        Friends(name: "Colby Foy", mutualFriends: 50, avatar: "colby", poster: "img2"),
        Friends(name: "Christian Nelson", mutualFriends: 20, avatar: "christian", poster: "img3"),
        Friends(name: "Jacob Colson", mutualFriends: 10, avatar: "jacob", poster: "img4"),
        Friends(name: "Jenna Grossmann", mutualFriends: 1, avatar: "jenna", poster: "img5"),
        
    ]
    
    var sugfriends:[Friends] = [
        Friends(name: "Nia Dicks", mutualFriends: 100, avatar: "nia", poster: "img1"),
        Friends(name: "Aaron Slaven", mutualFriends: 50, avatar: "aaron", poster: "img2"),
        Friends(name: "Ward Eldred III", mutualFriends: 20, avatar: "ward", poster: "img3"),
        Friends(name: "Christopher Plaue", mutualFriends: 10, avatar: "plaue", poster: "img4"),
        Friends(name: "Clare Rizzo", mutualFriends: 1, avatar: "Clare 1", poster: "img5"),
        
    ]
    
    @State private var searchText = ""
    
    var body: some View {
            NavigationStack {
                ScrollView {
                    VStack {
                        Text("My Friends")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 20)
                            .frame(maxWidth: .infinity, alignment: .leading).padding()
                        SearchBar(text: $searchText)
                        
                        ForEach(friends, id: \.id) { friends in
                            HStack {
                                Image(friends.avatar)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 80, height: 80)
                                    .padding(.horizontal)
                                
                                VStack(alignment: .leading, spacing: 2) {
                                    Text(friends.name)
                                        .font(.headline)
                                    Text("\(friends.mutualFriends) mutual friends")
                                        .font(.subheadline)
                                }
                                .padding(.leading, 10) // Adjust the padding here for alignment
                                
                                Spacer() // Add Spacer to push the buttons to the right
                                
                                Button(action: {
                                    print("remove")
                                }) {
                                    
                                    Text("remove")
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 10)
                                        .background(Color.gray)
                                        .cornerRadius(8)
                                    
                                }
                                .padding()
                            }
                        }
                        
                        Spacer()
                        
                        Text("Add Friends")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading).padding()
                        
                        SearchBar2(text: $searchText)
                        
                        Text("Suggested")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading).padding()
                        
                        Spacer()
                        
                        ForEach(sugfriends, id: \.id) { friends in
                            HStack {
                                Image(friends.avatar)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .frame(width: 80, height: 80)
                                    .padding(.horizontal)
                                
                                VStack(alignment: .leading, spacing: 2) {
                                    Text(friends.name)
                                        .font(.headline)
                                    Text("\(friends.mutualFriends) mutual friends")
                                        .font(.subheadline)
                                }
                                .padding(.leading, 10) // Adjust the padding here for alignment
                                
                                Spacer() // Add Spacer to push the buttons to the right
                                
                                Button(action: {
                                    print("add")
                                }) {
                                    Text("add")
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 10)
                                        .background(Color.green)
                                        .cornerRadius(8)
                                }
                                .padding()
                            }
                        }
                    }
                }
            }
        }
    }

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .frame(width: 330, height: 50)
                .cornerRadius(20)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

//                .cornerRadius(8)
            //.padding(.horizontal, 10)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if !text.isEmpty {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                //.padding(.top, 10)
               // .padding(.bottom, 10)
        
        }
       
            
    }
}

struct SearchBar2: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .frame(width: 250, height: 50)
                .cornerRadius(20)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

//                .cornerRadius(8)
            //.padding(.horizontal, 10)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if !text.isEmpty {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                //.padding(.top, 10)
               // .padding(.bottom, 10)
            scan_icon()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 100)
        }
       
            
    }
}

struct Friend: View {
    var body: some View {
        HStack {
            just_logo()
            //    .padding()
            Text("Friend Name")
                .foregroundStyle(.black)
                .font(.title2)
                .cornerRadius(0.5)
                .padding(45)
            //    .frame(width: 320, height: 65)
            //.background(Color("green"))
            //    .frame(maxWidth: .infinity, alignment: .leading).padding()
            
        }

        
    }
}

struct FriendsPage_Previews: PreviewProvider{
    static var previews: some View{
        FriendsPage()
            .environmentObject(SharedData())
    }
}
