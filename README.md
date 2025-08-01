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
- Widget test included to:
  - Fill in all fields with valid data
  - Submit the form
  - Wait for async loading
  - Verify that validation and success flow works

---

## 🗂️ Folder Structure

```txt
lib/
├── core/
│   ├── localization/      → Static text strings
│   ├── theme/             → Colors, fonts, text styles
│   ├── utils/             → Helpers for date pickers, validation, decoration
│   └── widgets/           → Reusable UI components like text/password fields
├── features/
│   └── account/
│       ├── controller/    → Form logic (Riverpod)
│       ├── presentation/
│       │   ├── create_account_screen.dart
│       │   └── widgets/   → Form, headers, DOB field, submit button, login text
│       └── service/       → Handles submission and snackbar logic
└── main.dart              → App entry point
