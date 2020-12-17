# ftools

Flutter 工具插件

## 功能列表

### Android

* 按下 Home 键功能

``` Dart
Ftools.pressedHome;
```

需要配置 `AndroidManifest.xml` 入口 `activity` ,防止再部分机型上依然会杀死程序的问题

``` xml
<intent-filter >
    <action android:name="android.intent.action.MAIN" />
    <category android:name="android.intent.category.HOME" />
    <category android:name="android.intent.category.DEFAULT" />
</intent-filter>
```

### iOS



