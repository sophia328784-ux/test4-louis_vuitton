package com.batch.android.m1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f23705a = "batch_opted_out_by_default";

    public static Bundle a(Context context) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
    }

    public static int b(Context context, String str) {
        try {
            Bundle bundleA = a(context);
            if (bundleA != null) {
                return bundleA.getInt(str, -1);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        return -1;
    }

    public static boolean a(Context context, String str) {
        try {
            Bundle bundleA = a(context);
            if (bundleA != null) {
                return bundleA.getBoolean(str, false);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        return false;
    }
}
