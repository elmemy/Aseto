# 👤 Create Account Feature – Aseto App

## 📌 Overview

This feature implements a **Create Account screen** using **Flutter** and **Riverpod**, following clean architecture, modular design, and best practices. The form includes full validation, reusable UI components, centralized theming, and test coverage.

---

## ✅ Features

### 🎨 UI & Theming
- Fully styled using `AppColors`, `AppFonts`, and `AppTextStyles`
- Responsive layout with consistent spacing and mobile-friendly behavior

### 📋 Form Fields
- Full Name  
- Date of Birth (calendar picker)  
- Email  
- Phone Number  
- Password  
- Confirm Password  

All fields use reusable widgets (`CustomTextField`, `PasswordField`) with focus-aware styling.

### 🛡️ Validation Rules
- Required field check
- Email format via RegExp
- Password must:
  - Be at least 8 characters
  - Include one uppercase letter
- Confirm password must match

### ⚙️ Architecture
- **Riverpod Notifier** for managing form state and input controllers
- Business logic moved to `CreateAccountService`
- Loading state handled via `isLoading` flag
- Snackbars shown on success and error

### 🧪 Test Coverage

- ✅ **UI integration test** created to validate the entire Create Account screen flow.
- Covers:
  - Filling all form fields with valid input
  - Tapping the continue button
  - Showing the loading indicator
  - Completing simulated async delay
  - Verifying successful submission
- Ensures validation rules and success behavior are functioning as expected.

> This UI test was written manually to ensure the user experience is fully testable and behaves reliably across input and state changes.

---

## 🗂️ Folder Structure

```txt
lib/
├── core/
│   ├── localization/              → Static text strings (account_localization.dart)
│   ├── theme/                     → Theme setup: colors, fonts, text styles
│   ├── utils/                     → Helpers (validation, date picker, decoration)
│   └── widgets/                   → Shared widgets (CustomTextField, PasswordField)

├── features/
│   └── account/
│       ├── controller/            → Riverpod state (create_account_controller.dart)
│       ├── presentation/
│       │   ├── create_account_screen.dart
│       │   └── widgets/           → Form, DOB field, section headers, login text, submit button
│       └── service/               → Form submission logic (create_account_service.dart)

├── generation/                    → Auto-generated assets/fonts
└── main.dart                      → App entry point

test/
├── create_account_screen_test.dart  → ✅ UI integration test
├── widget_test.dart                → Flutter boilerplate widget test
