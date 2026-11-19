package com.google.android.gms.common.util;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UidVerifier {
    public static boolean a(int i2, Context context) {
        if (b(context, i2, "com.google.android.gms")) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                GoogleSignatureVerifier googleSignatureVerifierA = GoogleSignatureVerifier.a(context);
                googleSignatureVerifierA.getClass();
                return packageInfo != null && (GoogleSignatureVerifier.c(packageInfo, false) || (GoogleSignatureVerifier.c(packageInfo, true) && GooglePlayServicesUtilLight.a(googleSignatureVerifierA.f28970a)));
            } catch (PackageManager.NameNotFoundException unused) {
                Log.isLoggable("UidVerifier", 3);
            }
        }
        return false;
    }

    public static boolean b(Context context, int i2, String str) {
        PackageManagerWrapper packageManagerWrapperA = Wrappers.a(context);
        packageManagerWrapperA.getClass();
        try {
            AppOpsManager appOpsManager = (AppOpsManager) packageManagerWrapperA.f29356a.getSystemService("appops");
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(i2, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
