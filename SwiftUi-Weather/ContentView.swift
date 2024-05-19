//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by jerry tri tjahyono on 19/05/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        ZStack{
            warnaLatarTampilanCuaca(topColor: .blue, 
                                    bottomColor: Color("lightBlue"))
            
            VStack{ 
                namaKotaUntukCuaca(namakota: "Surabaya, IND")
                
                cuacaHariIni(namaGambar: "cloud.sun.fill", 
                             temperatur: 80)
                
                HStack(spacing:20){
                    kumpulanCuacaHarian(hari: "Senin",
                                  namaGambar: "cloud.sun.fill",
                                  temperatur: 80)
                    
                    kumpulanCuacaHarian(hari: "Selasa",
                                  namaGambar: "sun.max.fill",
                                  temperatur: 72)
                    
                    kumpulanCuacaHarian(hari: "Rabu",
                                  namaGambar: "wind",
                                  temperatur: 65)
                    
                    kumpulanCuacaHarian(hari: "Kamis",
                                  namaGambar: "sunset.fill",
                                  temperatur: 59)
                    
                    kumpulanCuacaHarian(hari: "Jumat",
                                  namaGambar: "moon.stars.fill",
                                  temperatur: 54)
                
                }
                
                Spacer()
                
                Button {
                    print("Tapped")
                } label: {
                    tombol(namaTombol: "Ganti Hari", warnaLatarBelakang: .white, warnaTulisan: .blue)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

struct kumpulanCuacaHarian: View {
    
    var hari: String
    var namaGambar: String
    var temperatur: Int
    
    var body: some View {
        VStack{
            Text(hari)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: namaGambar)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperatur)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct warnaLatarTampilanCuaca: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .top,
            endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
    }
}

struct namaKotaUntukCuaca: View {
    var namakota: String
    
    var body: some View {
        Text(namakota)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct cuacaHariIni:View {
    var namaGambar: String
    var temperatur: Int
    
    var body: some View {
        VStack(spacing:10){
            Image(systemName: namaGambar)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            Text("\(temperatur)°")
                .font(.system(size: 75, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

struct tombol: View {
    
    var namaTombol: String
    var warnaLatarBelakang: Color
    var warnaTulisan: Color
    
    var body: some View {
        Text("Ganti Hari")
            .frame(width: 280, height: 50)
            .font(.system(size: 20, weight: .bold))
            .background(warnaLatarBelakang)
            .foregroundColor(warnaTulisan)
            .cornerRadius(10)
    }
}
