//
//  ContentView.swift
//  colorsetter
//
//  Created by Isaac Raval on 5/11/20.
//  Copyright © 2020 Isaac Raval. All rights reserved.
//

import SwiftUI

let EnableHexViewPosHighlight = true

extension Color {
    init(hex: Int, alpha: Double = 1) {
        let components = (
            R: Double((hex >> 16) & 0xff) / 255,
            G: Double((hex >> 08) & 0xff) / 255,
            B: Double((hex >> 00) & 0xff) / 255
        )
        self.init(
            .sRGB,
            red: components.R,
            green: components.G,
            blue: components.B,
            opacity: alpha
        )
    }
}

struct ContentView: View {
    @State var colorSelected: Color = .clear
    var body: some View {
        VStack {
            //colors: [.green, .gray, .purple, .orange, .pink, .yellow, .blue, .black, .red]
            //            ScrollView {
            ColorPallets(colorSelected: self.$colorSelected)
            
            Group {
                PillGroup(colorSelected: self.$colorSelected)
                PillGroup(colorSelected: self.$colorSelected)
            }.offset(y: -130)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .offset(y: -100)
    }
}

struct ColorPallets: View {
    @Binding var colorSelected: Color
    var body: some View {
        VStack {
            ColorPallet(colors: [
                Color(hex: 0xE0FFFF),
                Color(hex: 0x00FFFF),
                Color(hex: 0x7FFFD4),
                Color(hex: 0x66CDAA),
                Color(hex: 0xAFEEEE),
                Color(hex: 0x40E0D0),
                Color(hex: 0x48D1CC),
                Color(hex: 0x00CED1),
                Color(hex: 0x20B2AA),
                Color(hex: 0x5F9EA0),
                Color(hex: 0x008B8B),
                Color(hex: 0x008080)
                
            ], colorSelected: self.$colorSelected)
            Text("Cyan colors ^").bold().blur(radius: 1)
            
            ColorPallet(colors: [
                Color(hex: 0x7CFC00),
                Color(hex: 0x32CD32),
                Color(hex: 0x00FF00),
                Color(hex: 0x228B22),
                Color(hex: 0x008000),
                Color(hex: 0x006400),
                Color(hex: 0x006400),
                Color(hex: 0x9ACD32),
                Color(hex: 0x00FF7F),
                Color(hex: 0x00FA9A),
                Color(hex: 0x90EE90),
                Color(hex: 0x98FB98),
                Color(hex: 0x8FBC8F),
                Color(hex: 0x3CB371),
                Color(hex: 0x2E8B57),
                Color(hex: 0x808000),
                Color(hex: 0x556B2F),
                Color(hex: 0x6B8E23)
            ], colorSelected: self.$colorSelected)
            Text("Green colors ^").bold().blur(radius: 1)
            
            ColorPallet(colors: [
                Color(hex: 0xFFA07A),
                Color(hex: 0xFA8072),
                Color(hex: 0xE9967A),
                Color(hex: 0xF08080),
                Color(hex: 0xCD5C5C),
                Color(hex: 0xDC143C),
                Color(hex: 0xB22222),
                Color(hex: 0xFF0000),
                Color(hex: 0x8B0000),
                Color(hex: 0xFF7F50),
                Color(hex: 0xFF7F50),
                Color(hex: 0xFF4500),
                Color(hex: 0xFFD700),
                Color(hex: 0xFFA500),
                Color(hex: 0xFF8C00)
            ], colorSelected: self.$colorSelected)
            Text("Red and Orange colors ^").bold().blur(radius: 1)
            
            ColorPallet(colors: [
                Color(hex: 0xFFFFE0),
                Color(hex: 0xFFFACD),
                Color(hex: 0xFAFAD2),
                Color(hex: 0xFFEFD5),
                Color(hex: 0xFFE4B5),
                Color(hex: 0xFFDAB9),
                Color(hex: 0xEEE8AA),
                Color(hex: 0xF0E68C),
                Color(hex: 0xBDB76B),
                Color(hex: 0xFFFF00)
            ], colorSelected: self.$colorSelected)
            Text("Yellow colors ^").bold().blur(radius: 1)
            
            VStack {
                ColorPallet(colors: [
                    Color(hex: 0xB0E0E6),
                    Color(hex: 0xADD8E6),
                    Color(hex: 0x87CEFA),
                    Color(hex: 0x87CEEB),
                    Color(hex: 0x00BFFF),
                    Color(hex: 0xB0C4DE),
                    Color(hex: 0x1E90FF),
                    Color(hex: 0x6495ED),
                    Color(hex: 0x4682B4),
                    Color(hex: 0x4169E1),
                    Color(hex: 0x0000FF),
                    Color(hex: 0x0000CD),
                    Color(hex: 0x00008B),
                    Color(hex: 0x000080),
                    Color(hex: 0x191970),
                    Color(hex: 0x7B68EE),
                    Color(hex: 0x6A5ACD),
                    Color(hex: 0x483D8B)
                ], colorSelected: self.$colorSelected)
                Text("Blue colors ^").bold().blur(radius: 1)
                
                ColorPallet(colors: [
                    Color(hex: 0xE6E6FA),
                    Color(hex: 0xD8BFD8),
                    Color(hex: 0xDDA0DD),
                    Color(hex: 0xEE82EE),
                    Color(hex: 0xDA70D6),
                    Color(hex: 0xFF00FF),
                    Color(hex: 0xBA55D3),
                    Color(hex: 0x9370DB),
                    Color(hex: 0x8A2BE2),
                    Color(hex: 0x9400D3),
                    Color(hex: 0x9932CC),
                    Color(hex: 0x8B008B),
                    Color(hex: 0x800080),
                    Color(hex: 0x4B0082)
                ], colorSelected: self.$colorSelected)
                Text("Purple colors ^").bold().blur(radius: 1)
            }
        }.scaleEffect(0.5)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PillGroup: View {
    @Binding var colorSelected: Color
    //    @State var permanentColors:[Color] = [.green, .gray, .purple, .orange, .pink, .yellow, .blue, .black, .red,.green, .gray, .purple, .orange, .pink, .yellow, .blue, .black, .red,.green, .gray, .purple, .orange, .pink, .yellow, .blue, .black, .red,.green, .gray, .purple, .orange, .pink, .yellow, .blue, .black, .red,.green, .gray, .purple, .orange, .pink, .yellow, .blue, .black, .red,.green, .gray, .purple, .orange, .pink, .yellow, .blue, .black, .red,.green, .gray, .purple, .orange, .pink, .yellow, .blue, .black, .red]
    @State var permanentColors:[Color] = [Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF)]
    @State var clickedBkgd:Bool = false
    @State var doHighlightHexViewCellAt:Int = -1
    var body: some View {
        HStack {
            HStack {
                Pill(colorSelected: self.$colorSelected, permanentColors: self.$permanentColors, numberSections: 9, doHighlightHexViewCellAt: self.$doHighlightHexViewCellAt)
            }
            .padding(.all, 20)
            .background(self.clickedBkgd ? Color.gray.opacity(0.1) : Color.gray.opacity(0.2))
            .cornerRadius(25)
            .onTapGesture {
                self.clickedBkgd.toggle()
            }
            
            
            VStack {
                VStack(spacing: -10) {
                    ForEach(0..<9) { i in
                        VStack {
                            HStack {
                                Text("")
                                Circle()
                                    .fill(self.permanentColors[i])
                                    //                                .padding()
                                    .frame(width: 10, height: 20)
                                //                                .background(self.permanentColors[i])
                                Text("\(self.permanentColors[i].description.lowercased())")
                            }.frame(width: self.clickedBkgd ? 0 : 150, alignment: .leading)
                                .background(EnableHexViewPosHighlight ? (self.doHighlightHexViewCellAt == i) ? Color.yellow.opacity(0.3).cornerRadius(4) : Color.clear.opacity(0).cornerRadius(0) : Color.clear.opacity(0).cornerRadius(0))
                            Spacer()
                        }
                    }.opacity(self.clickedBkgd ? 0 : 1)
                }
                
            }
            
            HStack {
                Group {
                    //                    Text("");Text("");Text("")
                    
                    Text("Clear")
                        .padding(.all, 10)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .onTapGesture {
                            self.permanentColors = [Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF), Color(hex: 0xFFFFFF)]
                    }
                    
                }
            }
            
        }
        .offset(x: self.clickedBkgd ? 60 : 120)
        
        //        .onHover() { hover in
        //            if(hover) {
        //                self.hoveringOverBkgd = true
        //            }
        //            else {
        //                self.hoveringOverBkgd = false
        //            }
        //        }
    }
}

//struct PillShape: View {
//    var numberSections: Int
//    @Binding var colorSelected: Color
//    var body: some View {
//        HStack {
//            ForEach(0..<numberSections) {_ in
//                Pill(colorSelected: self.$colorSelected)
//            }
//        }
//    }
//}


struct Pill: View {
    @Binding var colorSelected: Color
    @Binding var permanentColors:[Color]
    var numberSections: Int
    @Binding var doHighlightHexViewCellAt: Int
    var body: some View {
        HStack(spacing: -1) {
            ForEach(0..<numberSections) { i in
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(self.permanentColors[i])
                    .padding()
                    .frame(width: 30, height: 70)
                    .background(self.permanentColors[i])
                    
                    
                    //            .fill(Color.clear)
                    //                .padding(10).background(self.permanentColors[i])
                    //            .frame(width: 50, height: 70)
                    .border(Color.gray)
                    .onTapGesture {
                        if(self.colorSelected != .clear) {self.permanentColors[i] = self.colorSelected}
                        print(self.colorSelected)
                }
                .onHover() {hover in
                    if(hover) {
                        self.doHighlightHexViewCellAt = i
                    }
                }
            }
            //            Group {
            //                RoundedRectangle(cornerRadius: 25, style: .continuous)
            //                .fill(Color.clear)
            //                .padding()
            //                .frame(width: 40, height: 70)
            //                    .background(Image("add").resizable().frame(width: 40, height: 70))
            //                .border(Color.black)
            //                .offset(x: 0)
            //                    .onTapGesture {
            ////                        numberSections += 1
            //                }
            //
            //            }
        }
    }
}

struct ColorPallet:View {
    var colors:[Color]
    @Binding var colorSelected: Color
    @State var clicked:Bool = false
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<colors.count) { index in
                ColorPalletItem(colors: self.colors, i: index, colorSelected: self.$colorSelected)
            }
        }
        
    }
}

struct ColorPalletItem:View {
    @State var colors:[Color]
    @State var i:Int
    @State var hovered: Int = 0
    @Binding var colorSelected: Color
    @State var hovering:Bool = false
    var body: some View {
        RoundedRectangle(cornerRadius: 1, style: .continuous)
            .fill(self.colors[i])
            .padding()
            .frame(width: 40, height: 70)
            .background(self.colors[i])
            .blur(radius: self.hovered == i ? 3.0 : 1.0)
            //                                    .rotation3DEffect(.degrees(self.hovering ? -2 : 0), axis: (x: 1, y: 1, z: 1))
            .border(self.hovered == i ? Color.black : Color.clear)
            .scaleEffect(self.hovered == i ? 1.02 : 1.0)
            .animation(.default)
            .onHover { hover in
                print("Mouse hover: \(hover)")
                if hover {
                    self.hovering = true
                    self.hovered = self.i    // << here !!
                } else {
                    self.hovered = -1  // reset
                    self.hovering = false
                }
        }
        .onTapGesture {
            self.colorSelected = self.colors[self.i]
            //            self.clicked.toggle()
        }
    }
}
