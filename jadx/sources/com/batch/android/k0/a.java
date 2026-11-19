package com.batch.android.k0;

import android.content.res.Resources;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static final int a(int i2) {
        return (int) (i2 * Resources.getSystem().getDisplayMetrics().density);
    }

    public static final int a(float f2) {
        return (int) (f2 * Resources.getSystem().getDisplayMetrics().density);
    }
}
