# 📱Automatic Number System Converter App  
_A Mobile platform App for Automated Number System Conversion_

---

## 🧩 Overview  
The **Automatic Number System Converter App** is a mobile application developed using **Flutter** and **Dart**.  
It automates conversions between different number systems — **Binary, Decimal, Octal, and Hexadecimal** — providing fast, accurate, and user-friendly functionality on both **Android** and **iOS** devices.

This project was developed by a group of five Computer Science students 
| NAME| REGISTARTION NUMBER |
|------|----------|
| FRANCIS MWIGA | CT101/G/22131/24 |
| PAUL MUNGAI |  |
| JOEL |  |
| MATIVO |  |
| BETTY |  |

---

## 🧠 Objective  
To design and implement an **automated converter** that enables seamless transformation between major number systems used in computing.  
The app simplifies mathematical conversions, reduces user errors, and enhances understanding of base systems in computer science.

---

## ⚙️ Features  
- ✅ Convert between **Binary**, **Decimal**, **Octal**, and **Hexadecimal** systems  
- ✅ Real-time conversion (automatic update as you type)  
- ✅ Simple, modern, and responsive UI  
- ✅ Works on **Android** and **iOS**  
- ✅ Offline functionality (no internet required)  
- ✅ Input validation for incorrect entries  

---

## 🧰 Technologies Used  
| Tool | Purpose |
|------|----------|
| **Flutter (Dart)** | Cross-platform development |
| **Android Studio / VS Code** | IDE for development |
| **Git & GitHub** | Version control and collaboration |
| **Flutter DevTools** | Debugging and testing |
| **Xcode (for iOS builds)** | iOS compilation and deployment |

---

## 🧮 Conversion Logic

The app uses **Decimal as the intermediary base** for all conversions:

1. Convert user input from the selected base → **Decimal**  
2. Then convert **Decimal** → Binary, Octal, and Hexadecimal  

Example:  
Input: 1010 (Binary)
→ Decimal: 10
→ Octal: 12
→ Hexadecimal: A


---

## 🧭 Installation Guide

### 1️⃣ Clone the repository
```bash
git clone https://github.com/Mr-weezer/automatic_number-system-converter.git
cd automatic_number-system-converter

2️⃣ Install dependencies
flutter pub get

3️⃣ Run the app
flutter run

4️⃣ Build APK (for Android)
flutter build apk

5️⃣ Build iOS version (on Mac)
flutter build ios

🧩 How to Use

Enter any number into the text field.

Select the base of your input (Binary, Decimal, Octal, or Hexadecimal).

Tap Convert to view the results in all other systems.

If you enter invalid data (e.g., non-binary digits for binary mode), the app will display “Invalid Input.”

🧪 Example Test Cases
Test Case	Input	Base	Expected Output
1	1010	Binary	Dec=10, Oct=12, Hex=A
2	15	Decimal	Bin=1111, Oct=17, Hex=F
3	77	Octal	Bin=111111, Dec=63, Hex=3F
4	Z12	Hex	Invalid Input
👨‍💻 Code Structure
lib/
│
├── main.dart         # Main app entry point
├── converter_screen.dart (optional if you modularize)
│
└── widgets/          # Future reusable UI components

👥 Contributors
Name	Role
Joel Mnga	Developer / UI Designer
Mativo	Developer / Logic Implementation
(Add other members here)	Testing / Documentation / Code Review
🚀 Future Improvements

Add voice input for spoken number conversion

Include conversion history log

Add light/dark mode toggle

Support for Roman numerals and other systems

🏁 Conclusion

The Number System Converter App successfully automates conversions between different number systems and demonstrates efficient use of Flutter for cross-platform development.
It serves as both an educational tool and a practical utility for computer science learners.

📎 Repository Link

🔗 https://github.com/Mr-weezer/automatic_number-system-converter

📜 License

This project is for educational purposes only.
Developed by a group of Computer Science students, 2nd Year.


---

✅ **Next Step:**  
Go to your project folder → create a new file named `README.md` → paste the above text → then run:
```bash
git add README.md
git commit -m "Added detailed README"
git push
