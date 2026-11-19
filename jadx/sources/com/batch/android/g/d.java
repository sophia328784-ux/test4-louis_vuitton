package com.batch.android.g;

import android.content.Context;
import com.batch.android.e.y;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private d() {
    }

    public static c a(Context context) {
        if (c(context)) {
            return new a();
        }
        if (b(context)) {
            return new b();
        }
        return null;
    }

    private static boolean b(Context context) {
        return y.a(context.getPackageManager(), "com.huawei.appmarket");
    }

    private static boolean c(Context context) {
        return y.a(context.getPackageManager(), "com.android.vending");
    }
}
