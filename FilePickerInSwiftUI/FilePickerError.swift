//
//  FilePickerError.swift
//  FilePickerInSwiftUI
//
//  Created by Gaurav Tak on 16/12/25.
//


import SwiftUI
import UniformTypeIdentifiers
import UIKit
import QuickLook

// MARK: - Errors

enum FilePickerError: Error, LocalizedError {
    case cancelled
    case invalidFileType
    case fileTooLarge(maxSizeMB: Int)
    case unableToAccessFile

    var errorDescription: String? {
        switch self {
        case .cancelled:
            return "File selection was cancelled."
        case .invalidFileType:
            return "Invalid file type selected."
        case .fileTooLarge(let maxSizeMB):
            return "File exceeds maximum allowed size of \(maxSizeMB) MB."
        case .unableToAccessFile:
            return "Unable to access the selected file."
        }
    }
}
