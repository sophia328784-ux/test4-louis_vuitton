package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public enum zzzb {
    GENERAL(true),
    BOOLEAN(false),
    CHARACTER(false),
    INTEGRAL(false),
    FLOAT(true);

    private final boolean zzf;

    zzzb(boolean z) {
        this.zzf = z;
    }

    public final boolean a() {
        return this.zzf;
    }
}
