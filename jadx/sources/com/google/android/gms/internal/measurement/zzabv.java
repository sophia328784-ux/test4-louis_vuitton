package com.google.android.gms.internal.measurement;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
final class zzabv implements zzabu {
    @Override // com.google.android.gms.internal.measurement.zzabu
    public final StackTraceElement[] g(int i2) {
        if (!(i2 == -1 || i2 > 0)) {
            md.n("maxDepth must be > 0 or -1");
            return null;
        }
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        String name = zzxz.class.getName();
        int i3 = 3;
        boolean z = false;
        while (true) {
            if (i3 >= stackTrace.length) {
                i3 = -1;
                break;
            }
            if (stackTrace[i3].getClassName().equals(name)) {
                z = true;
            } else if (z) {
                break;
            }
            i3++;
        }
        if (i3 == -1) {
            return new StackTraceElement[0];
        }
        int length = stackTrace.length - i3;
        if (i2 <= 0 || i2 >= length) {
            i2 = length;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i2];
        System.arraycopy(stackTrace, i3, stackTraceElementArr, 0, i2);
        return stackTraceElementArr;
    }
}
