package com.batch.android.o0;

import android.R;
import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private c() {
    }

    public static int a(Context context) {
        Resources resources = context.getResources();
        String packageName = context.getPackageName();
        int iA = a("Theme.MaterialComponents.Light", resources, packageName);
        if (iA != 0) {
            return iA;
        }
        int iA2 = a("Theme.AppCompat.Light", resources, packageName);
        return iA2 != 0 ? iA2 : R.style.Theme.DeviceDefault.Light;
    }

    public static int b(Context context) {
        Resources resources = context.getResources();
        String packageName = context.getPackageName();
        int iA = a("Theme.MaterialComponents.DayNight", resources, packageName);
        if (iA != 0) {
            return iA;
        }
        int iA2 = a("Theme.AppCompat.DayNight", resources, packageName);
        if (iA2 != 0) {
            return iA2;
        }
        int iA3 = a("Theme.AppCompat.Light", resources, packageName);
        return iA3 != 0 ? iA3 : R.style.Theme.DeviceDefault.DayNight;
    }

    private static int a(String str, Resources resources, String str2) {
        return resources.getIdentifier(str, "style", str2);
    }
}
