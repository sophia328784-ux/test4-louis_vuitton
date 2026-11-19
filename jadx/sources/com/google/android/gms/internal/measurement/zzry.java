package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.SystemClock;
import defpackage.md;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzry {
    public static File a(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            return filesDir;
        }
        SystemClock.sleep(100L);
        File filesDir2 = context.getFilesDir();
        if (filesDir2 != null) {
            return filesDir2;
        }
        md.k("getFilesDir returned null twice.");
        return null;
    }
}
