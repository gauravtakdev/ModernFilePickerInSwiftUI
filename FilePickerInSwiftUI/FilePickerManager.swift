final class FilePickerManager: NSObject, ObservableObject {
    
    // Configuration
    private let allowedTypes: [UTType]
    private let maxFileSizeMB: Int
    private let allowsMultipleSelection: Bool

    // Async continuation
    private var continuation: CheckedContinuation<[URL], Error>?

    init(
        allowedTypes: [UTType] = [.item],
        maxFileSizeMB: Int = 20,
        allowsMultipleSelection: Bool = false
    ) {
        self.allowedTypes = allowedTypes
        self.maxFileSizeMB = maxFileSizeMB
        self.allowsMultipleSelection = allowsMultipleSelection
    }

    // MARK: - Async Picker API

    @MainActor
    func pickFiles() async throws -> [URL] {
        try await withCheckedThrowingContinuation { continuation in
            self.continuation = continuation
            
            let picker = UIDocumentPickerViewController(
                forOpeningContentTypes: allowedTypes,
                asCopy: true
            )
            picker.delegate = self
            picker.allowsMultipleSelection = allowsMultipleSelection
            
            UIApplication.shared
                .topMostViewController?
                .present(picker, animated: true)
        }
    }
}
