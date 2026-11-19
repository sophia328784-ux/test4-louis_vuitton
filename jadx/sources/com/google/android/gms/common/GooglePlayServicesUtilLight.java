package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.vuitton.android.R;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GooglePlayServicesUtilLight {

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12451000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f28967b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f28968c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f28966a = new AtomicBoolean();
    public static final AtomicBoolean d = new AtomicBoolean();

    public static boolean a(Context context) {
        if (!f28968c) {
            try {
                PackageInfo packageInfoB = Wrappers.a(context).b(134217792, "com.google.android.gms");
                GoogleSignatureVerifier.a(context);
                if (packageInfoB == null || GoogleSignatureVerifier.c(packageInfoB, false) || !GoogleSignatureVerifier.c(packageInfoB, true)) {
                    f28967b = false;
                } else {
                    f28967b = true;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            } finally {
                f28968c = true;
            }
        }
        return f28967b || !"user".equals(Build.TYPE);
    }

    public static boolean b(Context context) {
        try {
            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
            return context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0146 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0094  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:72:0x0112  */
    /* JADX WARN: Code duplicated, block: B:73:0x0114  */
    /* JADX WARN: Code duplicated, block: B:76:0x0119  */
    /* JADX WARN: Code duplicated, block: B:78:0x011d  */
    /* JADX WARN: Code duplicated, block: B:79:0x0142  */
    /* JADX WARN: Code duplicated, block: B:87:0x0162 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0164 A[RETURN] */
    public static int isGooglePlayServicesAvailable(Context context, int i2) {
        boolean z;
        PackageInfo packageInfo;
        int i3;
        int i4;
        ApplicationInfo applicationInfo;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !d.get()) {
            synchronized (com.google.android.gms.common.internal.zzae.f29248a) {
                try {
                    if (!com.google.android.gms.common.internal.zzae.f29249b) {
                        com.google.android.gms.common.internal.zzae.f29249b = true;
                        try {
                            Bundle bundle = Wrappers.a(context).a(128, context.getPackageName()).metaData;
                            if (bundle != null) {
                                bundle.getString("com.google.app.id");
                                com.google.android.gms.common.internal.zzae.f29250c = bundle.getInt("com.google.android.gms.version");
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            Log.wtf("MetadataValueReader", "This should never happen.", e2);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i5 = com.google.android.gms.common.internal.zzae.f29250c;
            if (i5 == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (i5 != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                throw new GooglePlayServicesIncorrectManifestValueException(i5);
            }
        }
        if (DeviceProperties.a(context)) {
            z = false;
        } else {
            if (DeviceProperties.f29339c == null) {
                DeviceProperties.f29339c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
            }
            if (DeviceProperties.f29339c.booleanValue()) {
                z = false;
            } else {
                z = true;
            }
        }
        Preconditions.a(i2 >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 134225984);
            } catch (PackageManager.NameNotFoundException unused2) {
                String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing.");
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 134217792);
            GoogleSignatureVerifier.a(context);
            if (!GoogleSignatureVerifier.c(packageInfo2, true)) {
                String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid.");
            } else {
                if (!z) {
                    if (z) {
                    }
                    i3 = packageInfo2.versionCode;
                    if (i3 == -1) {
                        i4 = -1;
                    } else {
                        i4 = i3 / 1000;
                    }
                    if (i4 < (i2 != -1 ? i2 / 1000 : -1)) {
                        new StringBuilder(String.valueOf(packageName).length() + 49 + String.valueOf(i2).length() + 11 + String.valueOf(i3).length());
                        return 2;
                    }
                    applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    }
                    if (applicationInfo.enabled) {
                        return 0;
                    }
                    return 3;
                }
                Preconditions.h(packageInfo);
                if (!GoogleSignatureVerifier.c(packageInfo, true)) {
                    String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid.");
                } else {
                    if (z || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                        i3 = packageInfo2.versionCode;
                        if (i3 == -1) {
                            i4 = -1;
                        } else {
                            i4 = i3 / 1000;
                        }
                        if (i4 < (i2 != -1 ? i2 / 1000 : -1)) {
                            new StringBuilder(String.valueOf(packageName).length() + 49 + String.valueOf(i2).length() + 11 + String.valueOf(i3).length());
                            return 2;
                        }
                        applicationInfo = packageInfo2.applicationInfo;
                        if (applicationInfo == null) {
                            try {
                                applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                            } catch (PackageManager.NameNotFoundException e3) {
                                Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e3);
                                return 1;
                            }
                        }
                        if (applicationInfo.enabled) {
                            return 3;
                        }
                        return 0;
                    }
                    String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services.");
                }
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            String.valueOf(packageName).concat(" requires Google Play services, but they are missing.");
            return 1;
        }
    }
}
