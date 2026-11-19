package com.sensorsdata.analytics.android.sdk.util;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.tasks.ThreadNameConstants;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class AppInfoUtils {
    private static String mAppVersionName;
    private static Bundle mConfigBundle;

    public static Bundle getAppInfoBundle(Context context) {
        if (mConfigBundle == null) {
            try {
                ApplicationInfo applicationInfo = context.getApplicationContext().getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null) {
                    mConfigBundle = applicationInfo.metaData;
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        }
        Bundle bundle = mConfigBundle;
        return bundle == null ? new Bundle() : bundle;
    }

    public static CharSequence getAppName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationInfo(context.getPackageName(), 128).loadLabel(packageManager);
        } catch (Throwable th) {
            SALog.i("SA.AppInfoUtils", th.getMessage());
            return "";
        }
    }

    public static String getAppVersionName(Context context) {
        if (context == null) {
            return "";
        }
        if (!TextUtils.isEmpty(mAppVersionName)) {
            return mAppVersionName;
        }
        try {
            mAppVersionName = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        return mAppVersionName;
    }

    private static String getCurrentProcessName() {
        try {
            return Application.getProcessName();
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return null;
        }
    }

    private static String getCurrentProcessNameByAT() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static String getCurrentProcessNameByCmd() {
        FileInputStream fileInputStream;
        try {
            try {
                fileInputStream = new FileInputStream("/proc/self/cmdline");
                try {
                    byte[] bArr = new byte[256];
                    int i2 = 0;
                    while (true) {
                        int i3 = fileInputStream.read();
                        if (i3 <= 0 || i2 >= 256) {
                            break;
                        }
                        bArr[i2] = (byte) i3;
                        i2++;
                    }
                    if (i2 > 0) {
                        String str = new String(bArr, 0, i2, "UTF-8");
                        try {
                            fileInputStream.close();
                            return str;
                        } catch (IOException e2) {
                            SALog.printStackTrace(e2);
                            return str;
                        }
                    }
                } catch (Throwable unused) {
                    if (fileInputStream != null) {
                    }
                    return null;
                }
            } catch (Throwable unused2) {
                fileInputStream = null;
            }
            fileInputStream.close();
        } catch (IOException e3) {
            SALog.printStackTrace(e3);
        }
        return null;
    }

    public static String getMainProcessName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getApplicationContext().getApplicationInfo().processName;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return "";
        }
    }

    public static String getProcessName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getApplicationInfo().processName;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return "";
        }
    }

    public static boolean isMainProcess(Context context, Bundle bundle) {
        if (context == null) {
            return false;
        }
        String mainProcessName = getMainProcessName(context);
        if (TextUtils.isEmpty(mainProcessName) && bundle != null) {
            mainProcessName = bundle.getString("com.sensorsdata.analytics.android.MainProcessName");
        }
        if (TextUtils.isEmpty(mainProcessName)) {
            return true;
        }
        String currentProcessName = getCurrentProcessName();
        return TextUtils.isEmpty(currentProcessName) || mainProcessName.equals(currentProcessName);
    }

    public static boolean isTaskExecuteThread() {
        return TextUtils.equals(ThreadNameConstants.THREAD_TASK_EXECUTE, Thread.currentThread().getName());
    }
}
