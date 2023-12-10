//
//  LongPressToDragView.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 10/11/23.
//

import SwiftUI

struct LongPressToDragView: View {
    @State private var isLongPressing = false
    @State private var offset: CGSize = .zero

    var body: some View {
        let longPressGesture = LongPressGesture(minimumDuration: 0.5)
            .onChanged { _ in
                isLongPressing = true
            }
            .onEnded { _ in
                isLongPressing = false
            }

        let dragGesture = DragGesture()
            .onChanged { value in
                if isLongPressing {
                    offset = value.translation
                    print("Dragged")
                }
            }
            .onEnded { _ in
                offset = .zero
            }

        let combinedGesture = longPressGesture.sequenced(before: dragGesture)

        return Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(isLongPressing ? .red : .blue)
            .offset(offset)
            .gesture(combinedGesture)
    }
}
#Preview {
    LongPressToDragView()
}
