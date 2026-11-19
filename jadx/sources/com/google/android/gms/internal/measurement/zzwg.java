package com.google.android.gms.internal.measurement;

import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class zzwg extends zzvt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzwg f31036h;

    static {
        UUID uuidRandomUUID = UUID.randomUUID();
        f31036h = new zzwg("<skip trace>", uuidRandomUUID, zzvn.c(uuidRandomUUID), zzwk.f31037e, zzvy.c());
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzws H0(String str, zzwl zzwlVar, zzwq zzwqVar) {
        throw new IllegalStateException("Can't create child trace for no trace!");
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwl J() {
        return zzwk.f31037e;
    }
}
