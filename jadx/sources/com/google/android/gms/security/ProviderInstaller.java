package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.common.zzh;
import com.google.android.gms.internal.common.zzi;
import com.google.android.gms.internal.common.zzj;
import com.vuitton.android.presentation.LVApplication;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class ProviderInstaller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GoogleApiAvailabilityLight f32053a = GoogleApiAvailabilityLight.f28964b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f32054b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Method f32055c = null;
    public static boolean d = false;

    public interface ProviderInstallListener {
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0079  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c2 A[Catch: all -> 0x0050, TryCatch #0 {, blocks: (B:12:0x003e, B:15:0x0045, B:22:0x0062, B:23:0x0067, B:20:0x0054, B:25:0x0069, B:27:0x006e, B:33:0x007a, B:35:0x007e, B:38:0x00b8, B:41:0x00c2, B:42:0x00c7, B:44:0x00c9, B:45:0x00d0), top: B:48:0x003e, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c9 A[Catch: all -> 0x0050, TryCatch #0 {, blocks: (B:12:0x003e, B:15:0x0045, B:22:0x0062, B:23:0x0067, B:20:0x0054, B:25:0x0069, B:27:0x006e, B:33:0x007a, B:35:0x007e, B:38:0x00b8, B:41:0x00c2, B:42:0x00c7, B:44:0x00c9, B:45:0x00d0), top: B:48:0x003e, inners: #2, #3 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void a(LVApplication lVApplication) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        boolean z;
        Context contextCreatePackageContext;
        Context context;
        f32053a.getClass();
        int i2 = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.f28964b;
        int iB = googleApiAvailabilityLight.b(lVApplication, 11925000);
        if (iB != 0) {
            Intent intentA = googleApiAvailabilityLight.a(lVApplication, iB, "e");
            new StringBuilder(String.valueOf(iB).length() + 46);
            if (intentA != null) {
                throw new GooglePlayServicesRepairableException(iB, "Google Play Services not available", intentA);
            }
            throw new GooglePlayServicesNotAvailableException(iB);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        synchronized (f32054b) {
            Context context2 = null;
            if (d) {
                z = d;
                contextCreatePackageContext = lVApplication.createPackageContext("com.google.android.gms", 3);
                if (contextCreatePackageContext != null) {
                    d = true;
                    if (!z) {
                        long jUptimeMillis2 = SystemClock.uptimeMillis();
                        ClassLoader classLoader = contextCreatePackageContext.getClassLoader();
                        zzi zziVar = new zzi(Context.class, lVApplication);
                        Class cls = Long.TYPE;
                        zzj.a(classLoader.loadClass("com.google.android.gms.common.security.ProviderInstallerImpl"), "reportRequestStats2", zziVar, new zzh(cls, Long.valueOf(jUptimeMillis)), new zzh(cls, Long.valueOf(jUptimeMillis2)));
                    }
                    context2 = contextCreatePackageContext;
                }
                if (context2 != null) {
                    throw new GooglePlayServicesNotAvailableException(8);
                }
                b(context2, "com.google.android.gms.common.security.ProviderInstallerImpl");
                return;
            }
            try {
                context = DynamiteModule.c(lVApplication, DynamiteModule.f29389e, "com.google.android.gms.providerinstaller.dynamite").f29395a;
            } catch (DynamiteModule.LoadingException e2) {
                "Failed to load providerinstaller module: ".concat(String.valueOf(e2.getMessage()));
                context = null;
            }
            if (context != null) {
                b(context, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
                return;
            }
            z = d;
            try {
                contextCreatePackageContext = lVApplication.createPackageContext("com.google.android.gms", 3);
            } catch (PackageManager.NameNotFoundException unused) {
                contextCreatePackageContext = null;
            }
            if (contextCreatePackageContext != null) {
                d = true;
                if (!z) {
                    try {
                        long jUptimeMillis3 = SystemClock.uptimeMillis();
                        ClassLoader classLoader2 = contextCreatePackageContext.getClassLoader();
                        zzi zziVar2 = new zzi(Context.class, lVApplication);
                        Class cls2 = Long.TYPE;
                        zzj.a(classLoader2.loadClass("com.google.android.gms.common.security.ProviderInstallerImpl"), "reportRequestStats2", zziVar2, new zzh(cls2, Long.valueOf(jUptimeMillis)), new zzh(cls2, Long.valueOf(jUptimeMillis3)));
                    } catch (Exception e3) {
                        "Failed to report request stats: ".concat(e3.toString());
                    }
                }
                context2 = contextCreatePackageContext;
            }
            if (context2 != null) {
                throw new GooglePlayServicesNotAvailableException(8);
            }
            b(context2, "com.google.android.gms.common.security.ProviderInstallerImpl");
            return;
            throw th;
        }
    }

    public static void b(Context context, String str) throws GooglePlayServicesNotAvailableException {
        try {
            if (f32055c == null) {
                f32055c = context.getClassLoader().loadClass(str).getMethod("insertProvider", Context.class);
            }
            f32055c.invoke(null, context);
        } catch (Exception e2) {
            Throwable cause = e2.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                "Failed to install provider: ".concat(String.valueOf(cause == null ? e2.toString() : cause.toString()));
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }
}
