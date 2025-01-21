//
//  ControlGroup.swift
//  SwiftUIBootcamp
//
//  Created by zheer barzan on 21/1/25.
//

import SwiftUI

struct ControlGroupBootCamp: View {
    var body: some View {
        Menu("my menu") {
            ControlGroup("Spanish numbers"){
                Button("uno"){
                }
                Button("dos"){
                }
                Button("tres"){
                }
            }
            Menu("clint estwood"){
                Button("the good"){
                }
                Button("the bad"){
                }
                Button("the ugly"){
                    
                }
            }
            Button("life is like a box of chocolates"){
            }
                
        }
    }
}

#Preview {
    ControlGroupBootCamp()
}
