//
//  CharacterPreview.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 11/2/23.
//

import SwiftUI

struct CharacterPreview: View {
    var body: some View {
        
        ZStack{
            
            
            CustomRoundedRectangle(cornerRadius: 5)
                //.stroke(.red, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                //.frame(width: 100, height: 200)
                .frame(width: UIScreen.main.bounds.width / 9, height: UIScreen.main.bounds.width / 3.6)
                //The top two corners are only getting rounded because the points are in the corners of the rectangles. The other corners do not lie in the corners
                //.clipShape(Capsule(cornerRadius: 5, style: .continuous))
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .foregroundColor(Color(red: 56/255, green: 58/255, blue: 64/255))
                .overlay(
                    Text("h")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .offset(x: 0.0, y: -25.0)
                )
                .offset(x: 0, y: -30)
            
            
//            ZStack{
//                
//                Text("h")
//                    .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
//                    .background(Color.white)
//                    .cornerRadius(5)
//                    .foregroundColor(.white)
//                    
//                
//            }
        }
        
    }
}

struct OctagonalShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Define the points for the octagon.
        let width = rect.size.width
        let height = rect.size.height
        
//        let topLeft = CGPoint(x: rect.minX + max(cornerRadii.width, cornerRadius), y: rect.minY + max(cornerRadii.height, cornerRadius))
//        let topRight = CGPoint(x: rect.maxX - max(cornerRadii.width, cornerRadius), y: rect.minY + max(cornerRadii.height, cornerRadius))
//        let bottomRight = CGPoint(x: rect.maxX - 5 - max(cornerRadii.width, cornerRadius), y: rect.maxY - max(cornerRadii.height, cornerRadius))
//        let bottomLeft = CGPoint(x: rect.minX + 5 + max(cornerRadii.width, cornerRadius), y: rect.maxY - max(cornerRadii.height, cornerRadius))
        
        // Move to the top left corner of the octagon.
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        //Leftside inner corner
        path.addLine(to: CGPoint(x: rect.minX+5, y: rect.midY+5))
//        path.addCurve(to: CGPoint(x: rect.minX+5, y: rect.maxY),
//                      control1: CGPoint(x: rect.minX-5, y: rect.maxY+5),
//                      control2: CGPoint(x: rect.minX+5, y: rect.maxY))
        
        //Bottom left corner
        path.addLine(to: CGPoint(x: rect.minX+5, y: rect.maxY))
        //path.addArc(tangent1End: CGPoint(x: rect.minX+5, y: rect.maxY), tangent2End: CGPoint(x: rect.width, y: 0), radius: cornerRadius)
        //Bottom right corner
        path.addLine(to: CGPoint(x: rect.maxX-5, y: rect.maxY))
        //Rightside inner corner
        path.addLine(to: CGPoint(x: rect.maxX-5, y: rect.midY+5))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.closeSubpath()
        
        return path
    }
}


struct CustomRoundedRectangle: Shape {
    let cornerRadius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Move to the starting point of the top-left corner
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        // Add an arc to the top-left corner
        path.addArc(center: CGPoint(x: rect.minX - cornerRadius, y: rect.minY - cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false)
        
        // Add an arc to the top-right corner
        path.addArc(center: CGPoint(x: rect.maxX + cornerRadius, y: rect.minY + cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(270),
                    endAngle: .degrees(0),
                    clockwise: false)
        
        // Continue to the bottom-right corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        
        // Path from right side center to -5 inside of rect and down 5
        path.addLine(to: CGPoint(x: rect.maxX-5, y: rect.midY+5))
        
        // Add an arc to the bottom-right corner
        path.addArc(center: CGPoint(x: rect.maxX - 5 - cornerRadius, y: rect.maxY - cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(0),
                    endAngle: .degrees(90),
                    clockwise: false)
        
        // Add an arc to the bottom-left corner
        path.addArc(center: CGPoint(x: rect.minX + 5 + cornerRadius, y: rect.maxY - cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(90),
                    endAngle: .degrees(180),
                    clockwise: false)
        
        
        // Path from right side center to -5 inside of rect and down 5
        path.addLine(to: CGPoint(x: rect.minX+5, y: rect.midY+5))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        
        path.closeSubpath()
        
        return path
    }
}


//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView(isVisible: .constant(false), xPosition: .constant(0.0), defaultIndex: 4)
//    }
//}
#Preview {
    CharacterPreview()
}
