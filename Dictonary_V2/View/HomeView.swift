//
//  ContentView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = Books()
    @State var textFieldText: String = ""
    @State var alertSQN: String = ""
    @State var alertSQNValid = false
    @State var alertQuestion = false
    @State private var showWelcomeView = false
    @AppStorage("signedIn") var currentUser: Bool = false
    
    var body: some View {
        ZStack{
            fundo
            VStack (spacing:30) {
                Spacer()
                header
            Spacer()
                texto
           Spacer()
                VStack(spacing:15){
                    botao1
                 
                    botao2}
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }.alert(isPresented: $alertSQNValid, content:getAlert)
            .alert(isPresented: $alertQuestion, content: getAlert)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{    HomeView()}
    }
}

extension HomeView {
    private var fundo: some View {
        ZStack{
            Color(.white).ignoresSafeArea()
            Image("airplane")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.7)
            
        }
    }
    private var header: some View {
        VStack(spacing:10) {
            Text("Flight Attendant")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
            Text("Dictionary")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }.padding()
    }
    private var texto: some View {
        HStack(spacing: 10){ Spacer()
            TextField("Type the SQN Code here", text: $textFieldText)
                .padding(.horizontal)
                .frame(width:270, height:55)
                .background()
                .cornerRadius(15)
                .shadow(radius: 7)
            
            Image(systemName: "questionmark.circle")
                .foregroundColor(.blue)
                .opacity(0.8)
                .font(.title3)
                .background(Circle())
                .foregroundColor(.white)
                .shadow(radius: 10, x:2, y:6)
                .onTapGesture { showAlertQuestion()}
            Spacer()
        }
        .padding()
    }
    private var botao1: some View {
        NavigationLink(destination: MenuView(),
                label: {Text("Click Here to Start")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width:300, height:65)
                .background(.green)
                .cornerRadius(10)
                .shadow(radius: 10)})
        
    }
    private var botao2: some View {
        Link(destination: URL(string:"https://www.amazon.com")!, label: {
            Text("Click Here to buy the Book")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width:300, height:65)
                .background(.primary)
                .cornerRadius(10)
                .shadow(radius: 10)
        })
    }
    
    func buttonToStart() {
            if codeRight() {
                showWelcomeView = true
                currentUser = true
            }
        }
    func codeRight () -> Bool {
            if textFieldText != "12345"
            { alertSQN = "Wrong SQN code.                         Check the back cover of your book."
                alertSQNValid.toggle()
                return false
            }
            return true }

        func getAlert()-> Alert {
            return Alert(title: Text(alertSQN))
        }
      
        func showAlertQuestion() {
            alertSQN = "Please verify the 11 digit SQN code on the back of book or click on the 'Buy the Book' button to get your copy.         For questions contact: eu2001@gmail.com"
            alertQuestion.toggle()
            
            return }
        
        }
                       
