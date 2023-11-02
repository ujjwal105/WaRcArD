import SwiftUI

struct ContentView: View {
    
    @State   var playercards = "card14"
    @State   var cpuCards = "card14"
       
    @State  var playerScore = 0
    @State  var cpuScore = 0
       
    
    var body: some View {
        
    
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                HStack{
                    Image(playercards)
                    Spacer()
                    Image(cpuCards)
                }.padding(50)
                
                Button {
                    Deal()
                } label: {
                    Image("button")
                }
                HStack{
                    Spacer()
                    VStack{
                        
                        Text("Player").font(.headline)
                            .padding()
                        Text(String(playerScore)).font(.largeTitle)
                        
                    }
                    Spacer()
                    
                    VStack{
                       
                        Text("CPU").font(.headline)
                            .padding()
                        Text(String(cpuScore)).font(.largeTitle)
                        
                    }
                    Spacer()
                }.font(.title).foregroundColor(.white).padding()
            }
        }
    }
    
     func Deal() {
        // Randomize the players card
       var playerCardValue = Int.random(in: 2...14)
        
        playercards = "card" + String(playerCardValue)
        
        // Randomize the cpus
        var cpuCardValue  = Int.random(in: 2...14)
        cpuCards = "card" + String(cpuCardValue)
        
        // Update The Score
        
        
        if(playerCardValue > cpuCardValue){
            playerScore += 1
        }
        else if(cpuCardValue > playerCardValue){
            cpuScore += 1
        }
        
    }
}
#Preview {
    ContentView()
}
