package com.google.android.gms.measurement.internal;

import java.util.EnumMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnumMap f31555a;

    public zzan(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(zzjk.class);
        this.f31555a = enumMap2;
        enumMap2.putAll(enumMap);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    public final void a(zzjk zzjkVar, int i2) {
        zzam zzamVar = zzam.UNSET;
        if (i2 == -30) {
            zzamVar = zzam.TCF;
        } else if (i2 == -20) {
            zzamVar = zzam.API;
        } else if (i2 == -10) {
            zzamVar = zzam.MANIFEST;
        } else if (i2 == 0) {
            zzamVar = zzam.API;
        } else if (i2 == 30) {
            zzamVar = zzam.INITIALIZATION;
        }
        this.f31555a.put(zzjkVar, zzamVar);
    }

    public final void b(zzjk zzjkVar, zzam zzamVar) {
        this.f31555a.put(zzjkVar, zzamVar);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("1");
        for (zzjk zzjkVar : zzjk.values()) {
            zzam zzamVar = (zzam) this.f31555a.get(zzjkVar);
            if (zzamVar == null) {
                zzamVar = zzam.UNSET;
            }
            sb.append(zzamVar.b());
        }
        return sb.toString();
    }

    public zzan() {
        this.f31555a = new EnumMap(zzjk.class);
    }
}
