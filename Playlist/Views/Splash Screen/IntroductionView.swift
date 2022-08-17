//
//  IntroductionView.swift
//  Playlist
//
//  Created by Andrew Almasi on 7/13/22.
//

import SwiftUI

struct IntroductionView: View {
    @AppStorage("welcomeScreenShown") // UserDefaults
    var welcomeScreenShown: Bool = false
    
    var body: some View {
            ScrollView {
                VStack(alignment: .center) {

                    Spacer(minLength: 20)

                    TitleView()

                    InformationContainerView()

                    Spacer(minLength: 70)

                    Button{
                        welcomeScreenShown = true
                    } label: {
                        Text("Continue")
                    }.customButton()
                }
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
            .preferredColorScheme(.dark)
    }
}
