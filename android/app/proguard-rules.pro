#-keep class **.zego.** { *; }

# Huawei Push SDK
-keep class com.huawei.** { *; }
-dontwarn com.huawei.**

# Oppo Push SDK
-keep class com.heytap.** { *; }
-dontwarn com.heytap.**

# Vivo Push SDK
-keep class com.vivo.** { *; }
-dontwarn com.vivo.**

# Xiaomi Push SDK
-keep class com.xiaomi.** { *; }
-dontwarn com.xiaomi.**

# Jackson and other libraries
-keep class java.beans.** { *; }
-dontwarn java.beans.**
-keep class org.conscrypt.** { *; }
-dontwarn org.conscrypt.**
-keep class org.w3c.dom.bootstrap.** { *; }
-dontwarn org.w3c.dom.bootstrap.**
