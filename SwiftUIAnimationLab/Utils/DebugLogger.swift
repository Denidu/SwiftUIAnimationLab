//
//  DebugLogger.swift
//  SwiftUIAnimationLab
//
//  Created by Denidu Gamage on 2025-05-09.
//

import Foundation

struct DebugLogger {
    static func log(_ message: String) {
        #if DEBUG
        print("[DEBUG] \(message)")
        #endif
    }
}

