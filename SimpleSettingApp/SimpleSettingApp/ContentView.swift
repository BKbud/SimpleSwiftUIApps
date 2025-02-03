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
                        profileCell()
                    }
                }
                Section {
                    
                    plainCell(imageName: "folder",
                              imageColor: .indigo,
                              cellTitle: "Folder",
                              destination: {
                        Text("Folder Screen")
                    })
                    plainCell(imageName: "person",
                              imageColor: .green,
                              cellTitle: "Contact",
                              destination: {
                        Text("Contact Screen")
                    })
                }
                Section {
                    plainCell(imageName: "calendar",
                              imageColor: .blue,
                              cellTitle: "Calendar",
                              destination: {
                        Text("Calendar Screen")
                    })
                }
                Section {
                    toggleCell(imageName: "airplane",
                               imageColor: .blue,
                               cellTitle: "Airplane mode",
                               isOn: $airplaneSettingOn)
                    
                    plainCell(imageName: "wifi",
                              imageColor: .blue,
                              cellTitle: "Wi-Fi",
                              subTitle: "Wi-Fi Description") {
                        Text("Wi-Fi Screen")
                    }
                    
                    plainCell(imageName: "bolt", imageColor: .blue, cellTitle: "Bluetooth", subTitle: "myBluetooth") {
                        Text("Bluetooth Screen")
                    }
                    
                    plainCell(imageName: "figure.wave.circle",
                              imageColor: .orange,
                              cellTitle: "Shortcut",
                              destination: {
                        Text("Shortcut Screen")
                    })
                    plainCell(imageName: "gearshape.fill",
                              imageColor: .gray,
                              cellTitle: "Setting",
                              destination: {
                        Text("Setting Screen")
                    })
                }
            }
            .navigationTitle("Setting")
        }
    }
    
    private func profileCell() -> some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(8)
                .background(Color.teal)
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
    
    private func imageView(imageName: String, imageColor: Color) -> some View {
        Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(5)
            .background(imageColor)
            .foregroundStyle(.white)
            .cornerRadius(5)
    }

    private func toggleCell(imageName: String, imageColor: Color, cellTitle: String, isOn: Binding<Bool>) -> some View {
        HStack {
            imageView(imageName: imageName, imageColor: imageColor)
            Text(cellTitle)
            Spacer()
            Toggle(isOn: isOn) {
                // toggle action
            }
        }
    }

    //@ViewBuilder // 사용자가 클로저에 복수의 View를 선언할 수 있도록 지원
    private func plainCell<V: View>(imageName: String, imageColor: Color, cellTitle: String, subTitle: String? = nil, destination: @escaping () -> V) -> some View {
        NavigationLink(destination: destination()) {
            HStack {
                imageView(imageName: imageName, imageColor: imageColor)
                Text(cellTitle)
                
                if let subTitle = subTitle {
                    Spacer()
                    Text(subTitle)
                        .foregroundStyle(.gray)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
