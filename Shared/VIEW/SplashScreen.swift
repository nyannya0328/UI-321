
//
//  SplashScreen.swift
//  UI-321
//
//  Created by nyannyan0328 on 2021/10/04.
//

import SwiftUI
import SDWebImageSwiftUI

struct SplashScreen: View {
    
    @State var finishAnimation : Bool = false
    @State var startAnimation : Bool = false
    
    @State var endGif = false
    var body: some View {
    
            
          
            
        ZStack{
            
            Home()
            
            ZStack{
                
                Color("BG")
                    .ignoresSafeArea()
                
                if !endGif{
                    
                    ZStack{
                        
                        if startAnimation{
                            
                            if finishAnimation{
                                
                                
                                Image("logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                                
                            }
                            else{
                                
                                AnimatedImage(url: getLogoURL())
                                    .resizable().aspectRatio(contentMode: .fit)
                            }
                            
                            
                        }
                        else{
                            
                            Image("logoStarting")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            
                        }
                    }
                }
                
                
                
            }
            .opacity(finishAnimation ? 0 : 1)
        }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                    
                    
                    startAnimation = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        
                        
                        withAnimation(.easeInOut(duration: 1)){
                            
                            finishAnimation = true
                        }
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        
                        
                        endGif = true
                        
                    }
                    
                    
                    
                }
                
            }
     
    }
    
    func getLogoURL()->URL{
        
        let bundle = Bundle.main.path(forResource: "logo", ofType: "gif")
        
        let url = URL(fileURLWithPath: bundle ?? "")
        
        return url
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
