//
//  OnBoarding.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 11/1/25.
//

import SwiftUI

struct OnBoarding: View {
    // onboarding view states
    /*
     0 - wellcome Screen
     1 - add name
     2 - add age
     3 - add gender
     */
    
    // onboarding State
    @State var onBoardingState: Int = 0
    
    // onboarding inputs
    @State var userName: String = ""
    @State var userAge: Double = 0
    @State var userGender: String = ""
    
    // alerts
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    //AppStorage for the inputs
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    
    
    let transiton:AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    var body: some View {
        ZStack{
            //content
            ZStack{
                switch onBoardingState{
                case 0:
                    wellcomeScreen
                        .transition(transiton)
                case 1:
                    addNameSection
                        .transition(transiton)
                    
                case 2:
                    addAgeSection
                        .transition(transiton)
                    
                case 3:
                    addGenderSection
                        .transition(transiton)
                    
                default:
                    Text("cannot find")
                }
            }
            
            // buttons
            VStack{
                Spacer()
                bottomButton
                
            }.padding(30)
            
        }.alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
    
}

#Preview {
    OnBoarding()
}

// MARK: Components
extension OnBoarding{
    
    private var bottomButton: some View{
        
        Text(onBoardingState == 0 ? "SignUP" : onBoardingState == 3 ? "Finish" : "Next")
            .font(.system(.headline, design: .monospaced))
            .fontWeight(.regular)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .cornerRadius(15)
            .onTapGesture {
                nextButtonPressed()
            }
    }
    
    private var wellcomeScreen: some View{
        VStack(spacing: 40){
            Text("Hi")
                .font(.system(.headline, design: .monospaced))
                .fontWeight(.regular)
                .foregroundColor(.white)
        }
    }
    
    private var addNameSection: some View{
        VStack(spacing:40){
            Spacer()
            Text("What should we call you?")
                .font(.system(.headline, design: .monospaced))
                .fontWeight(.regular)
                .foregroundColor(.white)
            
            TextField("Enter your name", text: $userName)
                .padding()
                .font(.system(.headline, design: .monospaced))
                .fontWeight(.regular)
                .foregroundColor(.white)
                .frame(height: 60)
                .background(Color.black)
                .cornerRadius(15)
                .padding(.horizontal)
            Spacer()
            Spacer()
            
        }.padding(30)
    }
    
    private var addAgeSection: some View{
        VStack(spacing:40){
            Spacer()
            Text("How old are you?")
                .font(.system(.headline, design: .monospaced))
                .fontWeight(.regular)
                .foregroundColor(.white)
            
            Text("Age: \(String(format:"%.0f",userAge))")
                .font(.system(.headline, design: .monospaced))
                .fontWeight(.regular)
                .foregroundColor(.white)
            
            
            Slider(value: $userAge, in: 18...100, step: 1)
            
            Spacer()
            Spacer()
            
        }.padding(30)
    }
    private var addGenderSection: some View{
        VStack(spacing:40){
            Spacer()
            Text("What is your Gender?")
                .font(.system(.headline, design: .monospaced))
                .fontWeight(.regular)
                .foregroundColor(.white)
            
            Picker("Select a Gender: ",selection: $userGender,
                   content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            }).pickerStyle(WheelPickerStyle())
            
            
            Text(userGender.count > 1 ? userGender : "Select a Gender")
                .font(.system(.headline, design: .monospaced))
                .fontWeight(.regular)
                .foregroundColor(.white)
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(15)
            
            
            Spacer()
            Spacer()
            
        }.padding(30)
    }
    
}

// MARK: Functions
extension OnBoarding{
    
    func nextButtonPressed(){
        
        switch onBoardingState{
        case 1:
            guard userName.count >= 3 else{
                showAlert(title: "your name should be 3 characters long!")
                return
            }
        case 3:
            guard userGender.count>1 else{
                showAlert(title: "you must select a gender!")
                return
            }
        default:
            break
        }
        
        if onBoardingState == 3{
            //sign in
            signIn()
        }else{
            withAnimation(.spring()){
                onBoardingState += 1
                
            }
        }
        
    }
    func signIn(){
        currentUserName = userName
        currentUserAge = Int(userAge)
        currentUserGender = userGender
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String){
        alertTitle = title
        showAlert.toggle()
        
    }
    
}
