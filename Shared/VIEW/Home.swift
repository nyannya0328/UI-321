//
//  Home.swift
//  UI-321
//
//  Created by nyannyan0328 on 2021/10/04.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            
            
            HStack{
                
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                
                
                Spacer()
                
                Button("Sigin in"){}
                
                Button("Private"){}
            }
            .font(.system(size: 23, weight: .thin))
            .foregroundColor(.primary)
            
           
            
                
                Image("onboard")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .padding(.top,30)
                
                
                Text("Watch any Divice")
                    .foregroundColor(.white)
                    .padding(.top,20)
                
                Text("Streame on your phone,tablet,\nlaptop,TV")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .padding(.top,35)
            
            
            Spacer()
            
            
            Button {
                
            } label: {
                
                Text("Sign In")
                    .font(.largeTitle.weight(.thin))
                    .foregroundColor(.white)
                    .padding(.vertical,10)
                    .frame(maxWidth: .infinity)
                    .background(Color("Red"),in: Capsule())
                  
                    
                
                
            }

            
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .preferredColorScheme(.dark)
    }
}
