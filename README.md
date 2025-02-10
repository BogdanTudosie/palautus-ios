# Palautus.ai iOS client

## Overview
Palautus.ai streamlines the process of tracking and filing income-related tax deductions for Finnish taxpayers. The application leverages OCR technology, machine learning, and direct integration with VERO's API to automate expense tracking and tax return preparation.

Key Features:
- Smart receipt scanning and data extraction
- Automatic expense categorization
- Real-time deduction eligibility verification
- Secure document storage
- Direct VERO API integration for tax filing
- Bank authentication integration

Target Platform: iOS 16.0+
Current Version: 1.0.0

## Architecture
The project implements Clean Architecture with MVVM, focusing on:
- Clear separation of concerns
- Business logic independence
- Comprehensive testing coverage
- Maintainable and scalable codebase

### Technical Stack
- **UI Layer**: SwiftUI
- **Reactive Programming**: Combine framework
- **Concurrency**: Swift Concurrency (async/await)
- **Dependency Management**: Swift Package Manager
- **Architecture Patterns**: 
  - Clean Architecture
  - MVVM
  - Dependency Injection
  - Protocol-oriented programming

### Project Structure
```
Palautus/
├── App/
│   ├── AppDelegate.swift        # Application lifecycle
│   ├── SceneDelegate.swift      # UI lifecycle
│   └── DIContainer.swift        # Dependency injection setup
├── Features/
│   ├── Authentication/          # Bank & VERO authentication
│   ├── ExpenseTracking/         # Core expense management
│   ├── ReceiptScanning/         # OCR and image processing
│   └── TaxReporting/            # Tax report generation
├── Core/
│   ├── Domain/
│   │   ├── Entities/            # Core business models
│   │   ├── Interfaces/          # Protocol definitions
│   │   └── UseCases/            # Business logic
│   ├── Data/
│   │   ├── Repositories/        # Data access implementation
│   │   ├── DataSources/         # Local & remote data sources
│   │   └── Network/             # API communication
│   └── Presentation/
│       ├── ViewModels/          # UI business logic
│       └── Views/               # SwiftUI views
└── Common/
    ├── Extensions/              # Swift extensions
    ├── Utils/                   # Shared utilities
    └── UI/                      # Reusable UI components
```

### External Dependencies
The project uses the following third-party libraries:

- **Networking**
  - Alamofire: HTTP networking
  - TrustKit: SSL pinning

- **Image Processing**
  - Vision framework (native)
  - CoreML (native)

## Development Setup

### Prerequisites
- Xcode 15.0 or later
- iOS 16.0+ deployment target
- Development team with Apple Developer Program membership
- Access to company's:
  - VERO API credentials
  - Bank authentication test credentials
  - Code signing certificates
  - Private repository access

### Project Setup
1. **Repository Access**
   ```bash
   # Clone using SSH
   git clone git@github.com:HGB-FI/palautus-ios.git
   cd palautus-ios
   ```

2. **Dependencies Installation**
   - Open Xcode project
   - Wait for SPM to resolve dependencies
   - Build the project (⌘B)

### Development Guidelines

#### Code Style
- Strict adherence to [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)
- SwiftLint configuration provided in `.swiftlint.yml`
- SwiftFormat for consistent code formatting
- Required code coverage: 80% minimum

#### Git Workflow
- Main branch: `main`
- Development branch: `develop`
- Feature branches: `feature/ABC-123-feature-description`
- Bug fixes: `fix/ABC-123-bug-description`
- Release branches: `release/1.0.0`

#### Testing Strategy
- Unit tests for all business logic
- UI tests for critical user flows
- Snapshot tests for UI components

```bash
# Run all tests
xcodebuild test -scheme Palautus-iOS -destination 'platform=iOS Simulator,name=iPhone 15'

# Run specific test suite
xcodebuild test -scheme Palautus-iOS -only-testing:PalautusTests/ReceiptScanningTests
```

## Core Features

### Receipt Scanning
- Vision framework for OCR
- Real-time image processing
- Receipt data extraction:
  - Amount
  - Date
  - Vendor
  - VAT information
  - Category prediction

### VERO Integration
- OAuth 2.0 authentication
- Rate limiting compliance
- Automatic retry mechanism
- Error handling according to VERO API specifications

### Security Implementation
- Bank-grade security requirements:
  - Keychain for credentials
  - Certificate pinning for API calls
  - File encryption for stored documents
  - Biometric authentication
  - PSD2 compliance for banking features
  - GDPR compliance for data handling
  - Automatic session termination
  - Jailbreak detection
