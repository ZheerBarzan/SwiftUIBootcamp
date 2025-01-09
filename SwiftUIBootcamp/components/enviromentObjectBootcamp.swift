//
//  enviromentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 9/1/25.
//

import SwiftUI

class enviromentObject: ObservableObject{
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iphone", "macbook", "ipad"])
    }
    
}

struct enviromentObjectBootcamp: View {
    
    @StateObject var enviromentViewModel: enviromentObject  = enviromentObject()
    var body: some View {
        NavigationView{
            List{
                ForEach(enviromentViewModel.dataArray, id: \.self){ data in
                    NavigationLink(destination: DeviceInfo(selectedDevice: data),
                        label: {
                        Text(data)
                    })
                }
                
            }.navigationTitle("Apple Devices")
        }.environmentObject(enviromentViewModel)
    }
}

struct DeviceInfo: View{
    let selectedDevice: String
    
    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea()
            
            NavigationLink(destination: demoView(),
                           label: {
                Text(selectedDevice)
                               .font(.system(size: 30, weight: .regular, design: .monospaced))
                               .foregroundColor(.black)
                               .padding()
                               .background(Color.white)
                               .cornerRadius(15)
            })
           
            
        }
    }
    
}

struct demoView: View{
    @EnvironmentObject var enviromentViewModel: enviromentObject
    
    var body: some View{
        ZStack{
            LinearGradient(colors: [Color.black,Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20){
                    ForEach(enviromentViewModel.dataArray, id: \.self){ data in
                        NavigationLink(destination: DeviceInfo(selectedDevice: data),
                                       label: {
                            Text(data)
                        })
                    }
                }
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .regular, design: .monospaced))
                
                
            }
            
        }
    }
}

#Preview {
    Group {
        enviromentObjectBootcamp()
    }
}
