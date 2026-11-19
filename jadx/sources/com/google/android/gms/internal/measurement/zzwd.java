package com.google.android.gms.internal.measurement;

import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zzwd extends zzvn implements zzvs {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzvr f31033h = new zzvr();
    public final Exception g;

    public zzwd(UUID uuid, String str, zzvr zzvrVar, zzwq zzwqVar) {
        super("<missing root>", uuid, str, zzwqVar);
        this.g = zzvrVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzws H0(String str, zzwl zzwlVar, zzwq zzwqVar) {
        AtomicReference atomicReference = zzvy.f31026a;
        return M1(str, zzwlVar, true, zzwqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final Exception I() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwl K() {
        return zzwk.f31037e;
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final zzws M1(String str, zzwl zzwlVar, boolean z, zzwq zzwqVar) {
        if (z) {
            AtomicReference atomicReference = zzvy.f31026a;
        }
        return new zzwf(str, this, zzwlVar, z, zzwqVar);
    }
}
