package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1bSDK {
    private final PackageManager AFKeystoreWrapper;
    private final Map<String, Object> d;
    private final String registerClient;

    public AFf1bSDK(AFd1zSDK aFd1zSDK, AFc1iSDK aFc1iSDK) {
        aFd1zSDK.getClass();
        aFc1iSDK.getClass();
        this.d = new LinkedHashMap();
        Context context = aFd1zSDK.d;
        this.AFKeystoreWrapper = context != null ? context.getPackageManager() : null;
        String packageName = aFc1iSDK.d.d.getPackageName();
        packageName.getClass();
        this.registerClient = packageName;
    }

    private final Map<String, Object> AFLogger() {
        InstallSourceInfo installSourceInfo;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            String str = this.registerClient;
            PackageManager packageManager = this.AFKeystoreWrapper;
            if (packageManager != null && (installSourceInfo = packageManager.getInstallSourceInfo(str)) != null) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                String initiatingPackageName = installSourceInfo.getInitiatingPackageName();
                if (initiatingPackageName != null) {
                    linkedHashMap2.put("initiating_package", initiatingPackageName);
                }
                String installingPackageName = installSourceInfo.getInstallingPackageName();
                if (installingPackageName != null) {
                    linkedHashMap2.put("installing_package", installingPackageName);
                }
                String originatingPackageName = installSourceInfo.getOriginatingPackageName();
                if (originatingPackageName != null) {
                    linkedHashMap2.put("originating_package", originatingPackageName);
                }
                return linkedHashMap2;
            }
        } catch (Throwable unused) {
        }
        return linkedHashMap;
    }

    public final Map<String, Object> AFKeystoreWrapper() {
        String installerPackageName;
        if (this.d.isEmpty()) {
            try {
                PackageManager packageManager = this.AFKeystoreWrapper;
                if (packageManager != null && (installerPackageName = packageManager.getInstallerPackageName(this.registerClient)) != null) {
                    this.d.put("installer_package", installerPackageName);
                }
            } catch (Throwable unused) {
            }
            if (Build.VERSION.SDK_INT >= 30) {
                this.d.put("install_source_info", AFLogger());
            }
        }
        return this.d;
    }
}
