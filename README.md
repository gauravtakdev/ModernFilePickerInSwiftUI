# ModernFilePickerInSwiftUI

FilePickerManager – Modern Swift File Picker for SwiftUI

FilePickerManager is a production-ready, reusable file picker utility for SwiftUI apps, built on top of UIDocumentPickerViewController.
It provides a clean async/await API, file validation, preview support, and built-in upload helpers for common backends.

This project is designed for real-world apps, not just demos.

✨ Key Features
✅ Async / Await API

Pick files using modern Swift Concurrency:

let files = try await picker.pickFiles()


No delegates, no callbacks, no boilerplate.

🔐 Security-Scoped File Access

Safely handles files selected from:

iCloud Drive

Files app

External providers

Ensures proper sandbox access and cleanup.

📏 File Validation

Built-in validation before processing or uploading:

Maximum file size (MB-based)

MIME / UTType validation

Automatic error handling

👁️ File Preview (QuickLook)

Instant preview support using QLPreviewController:

PDFs

Images

Text files

Office documents

Perfect for review-before-upload flows.

☁️ Upload Helpers

Ready-to-use upload utilities for:

Firebase Storage

AWS S3 (Presigned URLs)

Stripe file uploads

Easily extendable for other backends.

🧩 SwiftUI Friendly

Clean SwiftUI usage

No UIKit code in views

Works with .sheet, buttons, and async tasks

📦 Use Cases

Document upload flows

Profile / KYC file submission

Expense receipts

Cloud file imports

Enterprise & fintech apps

App Clips (lightweight file selection)

🛠 Technologies Used

Swift 5.7+

SwiftUI

UIKit interoperability

Swift Concurrency (async/await)

UniformTypeIdentifiers

QuickLook

📱 Platform Support

iOS 15+

iPadOS

SwiftUI-based apps

App Clip compatible

🎯 Why This Project?

Most file picker examples:

Are callback-based

Skip validation

Ignore security-scoped URLs

Don’t scale for production apps

FilePickerManager solves those problems with a clean, modern, and extensible design.

🚀 Future Enhancements (Planned)

Upload progress tracking

Background uploads

Chunked uploads

Combine-based API

Unit tests & CI support
