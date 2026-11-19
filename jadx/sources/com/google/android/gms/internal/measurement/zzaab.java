package com.google.android.gms.internal.measurement;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzaab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzaad f30298a;

    static {
        zzaad zzaadVar;
        try {
            zzaadVar = zzaak.f30305a;
        } catch (NoClassDefFoundError unused) {
            zzaadVar = null;
        }
        if (zzaadVar == null) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < 3; i2++) {
                String str = zzaad.f30299a[i2];
                try {
                    zzaadVar = (zzaad) Class.forName(str).getConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    th = th;
                    sb.append('\n');
                    sb.append(str);
                    sb.append(": ");
                    if (th instanceof InvocationTargetException) {
                        th = th.getCause();
                    }
                    sb.append(th);
                }
            }
            throw new IllegalStateException(sb.insert(0, "No logging platforms found:").toString());
        }
        f30298a = zzaadVar;
    }
}
