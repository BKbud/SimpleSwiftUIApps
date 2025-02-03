//
//  ContentView.swift
//  SimpleSettingApp
//
//  Created by 정보경 on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        Text("Screen Person")
                    } label: {
                        HStack {
                            Image(systemName: "person")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .padding(5)
                                .background(.black)
                                .foregroundStyle(.white)
                                .clipShape(.circle)
                                .padding(.all, 5)
                            VStack(alignment: .leading, spacing: 3) {
                                Text("Name")
                                    .font(.system(size: 24))
                                    .fontWeight(.regular)
                                Text("description")
                                    .font(.system(size: 14))
                            }
                            .padding(.leading, 5)
                        }
                        .padding(.vertical, 5)
                    }
                }
                Section {
                    NavigationLink(destination: Text("Screen A")) {
                        HStack {
                            Image(systemName: "folder")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(5)
                                .background(.indigo)
                                .foregroundStyle(.white)
                                .cornerRadius(5)
                            Text("A")
                        }
                    }
                    NavigationLink(destination: Text("Screen B")) {
                        HStack {
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(5)
                                .background(.green)
                                .foregroundStyle(.white)
                                .cornerRadius(5)
                            Text("B")
                        }
                    }
                }
                NavigationLink(destination: Text("Screen C")) {
                    HStack {
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(5)
                            .background(.blue)
                            .foregroundStyle(.white)
                            .cornerRadius(5)
                        Text("C")
                    }
                }
                NavigationLink(destination: Text("Screen D")) {
                    HStack {
                        Image(systemName: "airplane")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(5)
                            .background(.purple)
                            .foregroundStyle(.white)
                            .cornerRadius(5)
                        Text("D")
                    }
                }
            }
            .navigationTitle("Setting")
        }
    }
}

#Preview {
    ContentView()
}
