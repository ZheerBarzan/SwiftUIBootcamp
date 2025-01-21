//
//  GridView.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 21/1/25.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid{
            ForEach(0..<4){ rowIndex in
                GridRow{
                    ForEach(0..<4){ columnIndex in
                        let cellNumber = rowIndex * 4 + columnIndex + 1
                        cell(int: cellNumber)
                    }
                }
            }
            Divider()
                .padding(5)
                .background(Color.black)
                .padding()
                
            GridRow{
                cell(int: 1)
                cell(int: 2)
                cell(int: 3)
                
            }
            GridRow{
                cell(int: 4)
                cell(int: 5)
                cell(int: 6)
            }
        }
    }
    
    func cell(int: Int) -> some View{
        Text("\(int)")
            .font(.title)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
    }
}

#Preview {
    GridView()
}
