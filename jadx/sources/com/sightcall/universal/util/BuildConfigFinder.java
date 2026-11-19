package com.sightcall.universal.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.sightcall.pratik.logs.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class BuildConfigFinder {
    private final Class<?> clazz;

    public BuildConfigFinder(Context context, Class<?> cls) {
        Class<?> clsFindClass;
        String packageName = context.getPackageName();
        try {
            clsFindClass = findClass(packageName);
        } catch (ClassNotFoundException unused) {
            Class<?> clsFindClass2 = null;
            try {
                Bundle bundle = context.getPackageManager().getApplicationInfo(packageName, 128).metaData;
                Package r1 = cls.getPackage();
                if (r1 != null) {
                    String str = r1.getName() + ".context";
                    if (bundle.containsKey(str)) {
                        String string = bundle.getString(str);
                        try {
                            clsFindClass2 = findClass(string);
                        } catch (ClassNotFoundException e2) {
                            Logger.INSTANCE.e(cls.getSimpleName() + "Unable to find fallback " + string + ".BuildConfig class.\nThis file might have been removed during the build. Add this rule to your Proguard config:\n-keep class " + string + ".BuildConfig { *; }", e2);
                        }
                    } else {
                        Logger.INSTANCE.e(cls.getSimpleName() + "Unable to find " + packageName + ".BuildConfig class.\nThis file might have been removed during the build. Add this rule to your Proguard config:\n-keep class " + packageName + ".BuildConfig { *; }\nOr the PackageName might be different from the applicationId. Add this meta-data to your AndroidManifest file:\n<meta-data android:name=\"" + str + "\" android:value=\"ORIGINAL-PACKAGE-NAME-HERE\" />", null);
                    }
                }
            } catch (PackageManager.NameNotFoundException e3) {
                e3.printStackTrace();
                clsFindClass = clsFindClass2;
                this.clazz = clsFindClass;
            }
            clsFindClass = clsFindClass2;
        }
        this.clazz = clsFindClass;
    }

    private static Class<?> findClass(String str) throws ClassNotFoundException {
        return Class.forName(str + ".BuildConfig");
    }

    public Object find(String str) {
        Class<?> cls = this.clazz;
        if (cls == null) {
            return str;
        }
        try {
            return cls.getDeclaredField(str).get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    public Object find(String str, Object obj) {
        Class<?> cls = this.clazz;
        if (cls == null) {
            return str;
        }
        try {
            return cls.getDeclaredField(str).get(null);
        } catch (Exception unused) {
            return obj;
        }
    }

    public BuildConfigFinder(String str) {
        Class<?> clsFindClass;
        try {
            clsFindClass = findClass(str);
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            clsFindClass = null;
        }
        this.clazz = clsFindClass;
    }
}
