//
//  LanguageView.swift
//  Dictonary_V2
//
//  Created by Eric Sousa on 3/6/23.
//

import SwiftUI


struct LanguageView:  View {
    
    @EnvironmentObject var model: Books
    
    var body: some View {
        ZStack{
            Dictonary_V2.fundo()
            VStack(alignment: .center, spacing: 20){
                Text("Languages")
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                
                
                ZStack{
                    Dictonary_V2.fundo2()
                        
        VStack(alignment: .leading){
            
                
                english1
                asl1
                spanish1
                french1
                german1
                italian1
                portuguese1
                hebrew1
                
                Spacer()
            }.padding(.horizontal, 55).padding(.vertical, 30)}
                }}}
    }
struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView().environmentObject(Books())
    }
}


extension LanguageView {
    
    
    private var fundo2: some View
    {
        Rectangle()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .cornerRadius(25)
            .padding(.horizontal, 25.0)
        .shadow(color: .gray, radius: 4, x: 7, y: 7)}
    
    private var english1: some View
    { HStack( spacing:10) {
        Image("english")
            .resizable()
            .frame(width: 60, height: 40)
            .scaledToFit()
            .cornerRadius(5)
        
        Text("English")
            .foregroundColor(.black)
            .font(.title3)
        Spacer()} }
    
    private var spanish1: some View {
        HStack(spacing:10) {
            Toggle(isOn:$model.showSpa){
                HStack{
                    Image("spanish")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 40, alignment: .center)
                        .cornerRadius(5)
                    
                    Text("Spanish")
                        .font(.title3)
                        .foregroundColor(.black)
                }}}}
    
    private var french1: some View {
        HStack(spacing:10) {
            Toggle(isOn:$model.showFre){
                HStack{
                    Image("french")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 40, alignment: .center)
                        .cornerRadius(5)
                    
                    Text("French")
                        .foregroundColor(.black)
                    .font(.title3)}}}}
    
    private var german1: some View {
        HStack(spacing:10) {
            Toggle(isOn:$model.showGer){
                HStack{
                    Image("german")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 40, alignment: .center)
                        .cornerRadius(5)
                    
                    Text("German")
                        .foregroundColor(.black)
                    .font(.title3)}}}}
    
    private var italian1: some View {
        HStack(spacing:10) {
            Toggle(isOn:$model.showIta){
                HStack{
                    Image("italian")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 40, alignment: .center)
                        .cornerRadius(5)
                    
                    Text("Italian")
                        .foregroundColor(.black)
                    .font(.title3)}}}}
    
    private var portuguese1: some View {
        HStack(spacing:10) {
            Toggle(isOn:$model.showPor){
                HStack{
                    Image("portuguese")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 40, alignment: .center)
                        .cornerRadius(5)
                    
                    Text("Portuguese")
                        .foregroundColor(.black)
                    .font(.title3)}}}}
    
    private var hebrew1: some View {
        HStack(spacing:10) {
            Toggle(isOn:$model.showHeb){
                HStack{
                    Image("hebrew")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 40, alignment: .center)
                        .cornerRadius(5)
                    
                    Text("Hebrew")
                        .foregroundColor(.black)
                    .font(.title3)}}}}}
    
    private var asl1: some View {
         HStack( spacing:10) {
    Image("asl")
    .resizable()
    .scaledToFill()
    .frame(width: 60, height: 40, alignment: .center)
    .cornerRadius(5)

        Text("American Sign Language")
            .foregroundColor(.black)
            .font(.title3)
        Spacer()} }



