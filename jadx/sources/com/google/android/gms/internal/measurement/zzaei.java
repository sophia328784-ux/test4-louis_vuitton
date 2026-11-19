package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public enum zzaei {
    VOID(Void.class),
    INT(Integer.class),
    LONG(Long.class),
    FLOAT(Float.class),
    DOUBLE(Double.class),
    BOOLEAN(Boolean.class),
    STRING(String.class),
    BYTE_STRING(zzacr.class),
    ENUM(Integer.class),
    MESSAGE(Object.class);

    private final Class zzk;

    static {
        zzacr zzacrVar = zzacr.f30367c;
    }

    zzaei(Class cls) {
        this.zzk = cls;
    }
}
