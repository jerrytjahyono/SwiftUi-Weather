//
//  ListCuacaHarian.swift
//  SwiftUi-Weather
//
//  Created by jerry tri tjahyono on 19/05/24.
//

import SwiftUI

struct ListCuacaHarian: View {
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

#Preview {
    ListCuacaHarian(hari: "Senin", namaGambar: "cloud.sun.fill" , temperatur: 30)
}
