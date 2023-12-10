//
//  LongPressDragSquareView.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 10/12/23.
//
import SwiftUI

struct LongPressDragSquareView: View {
    @State private var offset1: CGFloat = .zero
    @State private var offset2: CGFloat = .zero

    var body: some View {
        VStack {
            Circle()
                .frame(width: 100, height: 100)
                .background(Color.blue)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            offset1 = value.location.x
                            print(offset1)
                        }
                        .onEnded { _ in
                            offset1 = .zero
                        }
                )

            Circle()
                .frame(width: 100, height: 100)
                .background(Color.red)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            offset2 = offset1
                        print(offset2)
                        }
                        .onEnded { _ in
                            offset2 = .zero
                        }
                )
        }
    }

}


#Preview {
    LongPressDragSquareView()
}
