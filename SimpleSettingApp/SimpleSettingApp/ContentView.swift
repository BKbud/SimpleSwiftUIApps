//
//  ContentView.swift
//  SimpleSettingApp
//
//  Created by 정보경 on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var airplaneSettingOn: Bool = false
    
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
                                .aspectRatio(contentMode: .fit)
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
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(5)
                                .background(.green)
                                .foregroundStyle(.white)
                                .cornerRadius(5)
                            Text("B")
                        }
                    }
                }
                Section {
                    NavigationLink(destination: Text("Screen C")) {
                        HStack {
                            Image(systemName: "calendar")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(5)
                                .background(.blue)
                                .foregroundStyle(.white)
                                .cornerRadius(5)
                            Text("C")
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "airplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(5)
                            .background(.purple)
                            .foregroundStyle(.white)
                            .cornerRadius(5)
                        Text("Airplane mode")
                        Spacer()
                        Toggle(isOn: $airplaneSettingOn) {
                            
                        }
                    }
                    NavigationLink(destination: Text("Screen wifi")) {
                        HStack {
                            Image(systemName: "wifi")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(5)
                                .background(.blue)
                                .foregroundStyle(.white)
                                .cornerRadius(5)
                            Text("Wi-Fi")
                            Spacer()
                            Text("Wi-Fi Description")
                                .foregroundStyle(.gray)
                        }
                    }
                    NavigationLink(destination: Text("Screen E")) {
                        HStack {
                            Image(systemName: "figure.wave.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(5)
                                .background(.orange)
                                .foregroundStyle(.white)
                                .cornerRadius(5)
                            Text("E")
                        }
                    }
                    NavigationLink(destination: Text("Screen Setting")) {
                        HStack {
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(5)
                                .background(.gray)
                                .foregroundStyle(.white)
                                .cornerRadius(5)
                            Text("Setting")
                        }
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
