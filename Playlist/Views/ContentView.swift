//
//  ContentView.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/11/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @AppStorage("welcomeScreenShown") // User Defaults
    var welcomeScreenShown: Bool = false
        
    init() {
        UITableView.appearance().backgroundColor = UIColor(red: 1.00, green: 0.98, blue: 0.88, alpha: 1.00) // Uses UIColor
            let navBarAppearance = UINavigationBar.appearance()

        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color.rectColor)]
    }
    
    @State private var GridOn = false

    var body: some View {
        if welcomeScreenShown{
        NavigationView{
            Group{
            if GridOn {
                GridView()
                    .transition(AnyTransition.scale.animation(.easeInOut(duration: 1)))
            } else {
                ListView()
                    .transition(AnyTransition.scale.animation(.easeInOut(duration: 1)))
            }
            }.toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                            GridOn.toggle()
                    } label: {
                        Image(systemName: !GridOn ? "square.grid.2x2" : "list.bullet.below.rectangle")
                            .foregroundColor(.gray)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            UIApplication.shared.open(URL(string: "https://open.spotify.com/playlist/5bUiZvdzIB6oMesF35hYud?si=e7d3b7b3477546e4")!)
                        } label: {
                            Text("🎧")
                        .font(.system(size: 35))
                }
            }
        }
        }} else {
            IntroductionView()
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

