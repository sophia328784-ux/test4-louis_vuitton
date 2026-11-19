package com.sightcall.universal.permission;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.batch.android.e.x;
import com.sightcall.pratik.InstantAppWrapper;
import com.sightcall.pratik.utils.SdkUtilsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Permissions {
    public static final String[] REQUIRED_PERMISSIONS = {"android.permission.INTERNET", "android.permission.CAMERA", "android.permission.RECORD_AUDIO"};
    public static final String[] REQUIRED_PERMISSIONS30 = {"android.permission.INTERNET", "android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_PHONE_STATE"};
    public static final String[] REQUIRED_PERMISSIONS33 = {"android.permission.INTERNET", "android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_PHONE_STATE", x.d};
    public static final String[] REQUIRED_PERMISSIONS_INSTANTAPP = {"android.permission.INTERNET", "android.permission.CAMERA", "android.permission.RECORD_AUDIO"};
    public static final String[] REQUIRED_PERMISSIONS30_INSTANTAPP = {"android.permission.INTERNET", "android.permission.CAMERA", "android.permission.RECORD_AUDIO"};

    public static String[] getPermissionList(Context context) {
        if (SdkUtilsKt.isAtLeastSdk30() && InstantAppWrapper.isInstantApp(context)) {
            return REQUIRED_PERMISSIONS30_INSTANTAPP;
        }
        if (InstantAppWrapper.isInstantApp(context)) {
            return REQUIRED_PERMISSIONS_INSTANTAPP;
        }
        if (SdkUtilsKt.isAtLeastSdk33()) {
            return REQUIRED_PERMISSIONS33;
        }
        return SdkUtilsKt.isAtLeastSdk30() ? REQUIRED_PERMISSIONS30 : REQUIRED_PERMISSIONS;
    }

    public static boolean hasGrantedPermissions(int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == -1) {
                return false;
            }
        }
        return true;
    }

    public static boolean hasRequiredPermissions(Context context) {
        for (String str : getPermissionList(context)) {
            if (ContextCompat.checkSelfPermission(context, str) != 0) {
                return false;
            }
        }
        return true;
    }
}
