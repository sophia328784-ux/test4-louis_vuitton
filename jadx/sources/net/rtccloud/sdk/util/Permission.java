package net.rtccloud.sdk.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;

/* JADX INFO: loaded from: classes4.dex */
public enum Permission {
    INTERNET("android.permission.INTERNET"),
    CAMERA("android.permission.CAMERA"),
    RECORD_AUDIO("android.permission.RECORD_AUDIO"),
    MODIFY_AUDIO_SETTINGS("android.permission.MODIFY_AUDIO_SETTINGS"),
    BLUETOOTH("android.permission.BLUETOOTH"),
    READ_PHONE_STATE("android.permission.READ_PHONE_STATE");

    private final String value;

    Permission(String str) {
        this.value = str;
    }

    public String description(Context context) {
        try {
            CharSequence charSequenceLoadDescription = context.getPackageManager().getPermissionInfo(this.value, 128).loadDescription(context.getPackageManager());
            return charSequenceLoadDescription != null ? charSequenceLoadDescription.toString() : this.value;
        } catch (PackageManager.NameNotFoundException unused) {
            return this.value;
        }
    }

    public boolean isGranted(Context context) {
        return context.checkPermission(this.value, Process.myPid(), Process.myUid()) == 0;
    }

    public String value() {
        return this.value;
    }
}
