del android\InAppPurchase\build\libInAppPurchase.jar

del InAppPurchase.ane

xcopy android\InAppPurchase\bin\classes android\InAppPurchase\bin /S /Y /R

rd android\InAppPurchase\bin\classes /S /Q

"c:\Program Files (x86)\Java\jdk1.6.0_05\bin\jar.exe" cvf android/InAppPurchase/build/libInAppPurchase.jar -C android/InAppPurchase/bin .

SET PLATFORM_ANDROID= -platform Android-ARM -C android\InAppPurchase\build\ .
SET PLATFORM_DEFAULT= -platform default -C default\ .

"c:\Program Files (x86)\Adobe\Adobe Flash Builder 4.6\sdks\air 16\bin\adt.bat" -package -target ane InAppPurchase.ane air\extension.xml -swc air/InAppPurchase/bin/InAppPurchase.swc %PLATFORM_ANDROID% %PLATFORM_DEFAULT%