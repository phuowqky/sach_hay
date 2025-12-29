# ---------------- FLUTTER CORE ----------------
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.embedding.** { *; }

# ---------------- NETWORK ---------------------
-keep class retrofit2.** { *; }
-keep class okhttp3.** { *; }
-keep class okio.** { *; }
-keep class com.google.gson.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn retrofit2.**
-dontwarn com.google.gson.**

# ---------------- YOUR APP PACKAGE (RẤT QUAN TRỌNG) ----------------
# giữ lại toàn bộ model, json class, tránh bị đổi tên
-keep class com.fwongki.sachhay.** { *; }

# ---------------- GOOGLE PLAY CORE (FIX Missing classes) ----------------
-keep class com.google.android.play.core.** { *; }
-dontwarn com.google.android.play.core.**
