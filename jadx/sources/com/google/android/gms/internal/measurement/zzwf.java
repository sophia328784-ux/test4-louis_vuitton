package com.google.android.gms.internal.measurement;

import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzwf extends zzvt implements zzvs {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Exception f31034h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f31035i;

    public zzwf(UUID uuid, String str, String str2, zzwl zzwlVar, zzvr zzvrVar, zzwq zzwqVar) {
        super("<missing root>:".concat(str2), uuid, str, zzwl.a(zzwlVar, zzwk.f31038f), zzwqVar);
        this.f31034h = zzvrVar;
        this.f31035i = false;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzws H0(String str, zzwl zzwlVar, zzwq zzwqVar) {
        AtomicReference atomicReference = zzvy.f31026a;
        return M1(str, zzwlVar, true, zzwqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final Exception I() {
        return this.f31034h;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwl J() {
        return zzwk.f31037e;
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final zzws M1(String str, zzwl zzwlVar, boolean z, zzwq zzwqVar) {
        boolean z2 = this.f31035i;
        if (z && !z2) {
            AtomicReference atomicReference = zzvy.f31026a;
        }
        boolean z3 = true;
        if ((!z || z2) && !z2) {
            z3 = false;
        }
        return new zzwf(str, this, zzwlVar, z3, zzwqVar);
    }

    public zzwf(String str, zzvs zzvsVar, zzwl zzwlVar, boolean z, zzwq zzwqVar) {
        super("<missing root>:".concat(str), zzvsVar, zzwl.a(zzwlVar, zzwk.f31038f), zzwqVar);
        this.f31034h = zzvsVar.I();
        this.f31035i = z;
    }
}
