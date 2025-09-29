#!/bin/bash

# Flutter 프로젝트의 Android 설정을 최신 버전으로 업데이트하는 스크립트

echo "Android 설정을 업데이트하는 중..."

# build.gradle 파일 찾기
if [ -f "android/app/build.gradle" ]; then
    echo "build.gradle 파일을 업데이트하는 중..."
    
    # compileSdk 업데이트
    sed -i '' 's/compileSdk = flutter.compileSdkVersion/compileSdk = 36/g' android/app/build.gradle
    sed -i '' 's/compileSdk = [0-9]*/compileSdk = 36/g' android/app/build.gradle
    
    # ndkVersion 업데이트
    sed -i '' 's/ndkVersion = flutter.ndkVersion/ndkVersion = "27.0.12077973"/g' android/app/build.gradle
    sed -i '' 's/ndkVersion = "[^"]*"/ndkVersion = "27.0.12077973"/g' android/app/build.gradle
    
    # minSdk 업데이트
    sed -i '' 's/minSdk = flutter.minSdkVersion/minSdk = 21/g' android/app/build.gradle
    sed -i '' 's/minSdkVersion flutter.minSdkVersion/minSdk = 21/g' android/app/build.gradle
    sed -i '' 's/minSdk = [0-9]*/minSdk = 21/g' android/app/build.gradle
    
    # targetSdk 업데이트
    sed -i '' 's/targetSdk = flutter.targetSdkVersion/targetSdk = 36/g' android/app/build.gradle
    sed -i '' 's/targetSdk = [0-9]*/targetSdk = 36/g' android/app/build.gradle
    
    echo "build.gradle 업데이트 완료!"
fi

# build.gradle.kts 파일 찾기
if [ -f "android/app/build.gradle.kts" ]; then
    echo "build.gradle.kts 파일을 업데이트하는 중..."
    
    # compileSdk 업데이트
    sed -i '' 's/compileSdk = flutter.compileSdkVersion/compileSdk = 36/g' android/app/build.gradle.kts
    sed -i '' 's/compileSdk = [0-9]*/compileSdk = 36/g' android/app/build.gradle.kts
    
    # ndkVersion 업데이트
    sed -i '' 's/ndkVersion = flutter.ndkVersion/ndkVersion = "27.0.12077973"/g' android/app/build.gradle.kts
    sed -i '' 's/ndkVersion = "[^"]*"/ndkVersion = "27.0.12077973"/g' android/app/build.gradle.kts
    
    # minSdk 업데이트
    sed -i '' 's/minSdk = flutter.minSdkVersion/minSdk = 21/g' android/app/build.gradle.kts
    sed -i '' 's/minSdkVersion flutter.minSdkVersion/minSdk = 21/g' android/app/build.gradle.kts
    sed -i '' 's/minSdk = [0-9]*/minSdk = 21/g' android/app/build.gradle.kts
    
    # targetSdk 업데이트
    sed -i '' 's/targetSdk = flutter.targetSdkVersion/targetSdk = 36/g' android/app/build.gradle.kts
    sed -i '' 's/targetSdk = [0-9]*/targetSdk = 36/g' android/app/build.gradle.kts
    
    echo "build.gradle.kts 업데이트 완료!"
fi

echo "Android 설정 업데이트 완료!"
echo "이제 'flutter clean && flutter pub get && flutter run'을 실행하세요."
