package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.LogTag;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class AFc1iSDK {
    private static String AFLogger = "386";
    public final AFc1kSDK AFKeystoreWrapper;
    public final AFd1zSDK d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Executor f22611i;
    public final AFc1eSDK registerClient;
    private PackageInfo w;
    private Bundle force = null;
    public String unregisterClient = "";

    public AFc1iSDK(AFd1zSDK aFd1zSDK, AFc1kSDK aFc1kSDK, AFc1eSDK aFc1eSDK, Executor executor) {
        this.d = aFd1zSDK;
        this.AFKeystoreWrapper = aFc1kSDK;
        this.registerClient = aFc1eSDK;
        this.f22611i = executor;
    }

    public static String d() {
        StringBuilder sb = new StringBuilder("version: 7.0.1 (build ");
        sb.append(AFLogger);
        sb.append(")");
        return sb.toString();
    }

    public final String AFKeystoreWrapper(String str) {
        try {
            int identifier = this.d.d.getResources().getIdentifier(str, "string", this.d.d.getPackageName());
            if (identifier != 0) {
                return this.d.d.getString(identifier);
            }
            return null;
        } catch (Resources.NotFoundException e2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.GENERAL;
            StringBuilder sb = new StringBuilder("Could not load string resource: ");
            sb.append(e2.getMessage() != null ? e2.getMessage() : "resource not found");
            aFLogger.e(logTag, sb.toString(), e2);
            return null;
        }
    }

    public final String AFLogger(String str) {
        Object obj;
        try {
            if (this.force == null) {
                this.force = ((PackageItemInfo) this.d.d.getPackageManager().getApplicationInfo(this.d.d.getPackageName(), 128)).metaData;
            }
            Bundle bundle = this.force;
            if (bundle == null || (obj = bundle.get(str)) == null) {
                return null;
            }
            return obj.toString();
        } catch (Throwable th) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            LogTag logTag = LogTag.GENERAL;
            StringBuilder sb = new StringBuilder("Could not load manifest metadata: ");
            sb.append(th.getMessage() != null ? th.getMessage() : "unknown error");
            aFLogger.e(logTag, sb.toString(), th);
            return null;
        }
    }

    public final PackageInfo r_() {
        if (this.w == null) {
            try {
                int i2 = Build.VERSION.SDK_INT;
                AFd1zSDK aFd1zSDK = this.d;
                if (i2 >= 33) {
                    this.w = aFd1zSDK.d.getPackageManager().getPackageInfo(this.d.d.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
                } else {
                    this.w = aFd1zSDK.d.getPackageManager().getPackageInfo(this.d.d.getPackageName(), 0);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                AFLogger.INSTANCE.e(LogTag.GENERAL, "Exception while trying fo get PackageInfo", e2, false, false, true, false);
            }
        }
        return this.w;
    }

    public final String registerClient(Context context) {
        try {
            return new AFb1mSDK(context, this.f22611i).registerClient();
        } catch (Throwable th) {
            AFLogger.INSTANCE.e(LogTag.PUBLIC_API, "Exception while collecting facebook's attribution ID. ", th, true, false, false);
            return null;
        }
    }

    public final long unregisterClient(String str, long j2) {
        String strAFLogger = AFLogger(str);
        if (strAFLogger != null) {
            try {
                return Long.parseLong(strAFLogger);
            } catch (NumberFormatException unused) {
            }
        }
        return j2;
    }

    public static String unregisterClient() {
        return "7.0.1";
    }

    public final boolean AFKeystoreWrapper(Context context) {
        try {
            return (this.d.d.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.INSTANCE.e(LogTag.PUBLIC_API, "Could not check if app is pre installed", e2);
        }
    }

    public final String AFLogger() {
        AFh1qSDK aFh1qSDK = this.registerClient.updateServerUninstallToken;
        AFb1lSDK aFb1lSDK = aFh1qSDK != null ? new AFb1lSDK(aFh1qSDK.d, aFh1qSDK.registerClient) : null;
        if (aFb1lSDK != null) {
            return aFb1lSDK.d;
        }
        return null;
    }
}
