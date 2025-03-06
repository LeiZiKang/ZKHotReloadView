//
//  File.swift
//  ZKHotReloadView
//
//  Created by Lei Levi on 6/3/2025.
//
import Inject
import SwiftUI

@available(iOS 13.0, *)
public struct BasicInjectView<Content: View>: View {
    
    @ObserveInjection var inject
    let content: () -> Content
    
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        content()
            .enableInjection()
    }
}
