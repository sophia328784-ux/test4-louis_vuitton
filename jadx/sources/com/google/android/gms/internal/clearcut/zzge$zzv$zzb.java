package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
public enum zzge$zzv$zzb implements zzcj {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4);

    private static final zzck<zzge$zzv$zzb> zzbq = new zzgr();
    private final int value;

    zzge$zzv$zzb(int i2) {
        this.value = i2;
    }

    public static zzge$zzv$zzb a(int i2) {
        if (i2 == 0) {
            return DEFAULT;
        }
        if (i2 == 1) {
            return UNMETERED_ONLY;
        }
        if (i2 == 2) {
            return UNMETERED_OR_DAILY;
        }
        if (i2 == 3) {
            return FAST_IF_RADIO_AWAKE;
        }
        if (i2 != 4) {
            return null;
        }
        return NEVER;
    }

    public final int b() {
        return this.value;
    }
}
