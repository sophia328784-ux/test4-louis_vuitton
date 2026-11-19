package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzabq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f30350a = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzabu f30351b;

    static {
        zzabu zzabvVar;
        for (int i2 = 0; i2 < 2; i2++) {
            zzabvVar = null;
            try {
                zzabvVar = (zzabu) Class.forName(f30350a[i2]).asSubclass(zzabu.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
            if (zzabvVar != null) {
                f30351b = zzabvVar;
            }
        }
        zzabvVar = new zzabv();
        f30351b = zzabvVar;
    }
}
