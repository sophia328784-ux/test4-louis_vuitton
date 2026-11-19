package com.google.android.gms.internal.measurement;

import com.google.common.base.Preconditions;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzvt extends zzvn {
    public final zzwl g;

    public zzvt(String str, zzws zzwsVar, zzwl zzwlVar, zzwq zzwqVar) {
        super(str, zzwsVar, zzwqVar);
        Preconditions.g(zzwlVar.f31041c);
        this.g = zzwlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwl K() {
        return zzwl.a(this.g, J());
    }

    public zzvt(String str, UUID uuid, String str2, zzwl zzwlVar, zzwq zzwqVar) {
        super(str, uuid, str2, zzwqVar);
        Preconditions.g(zzwlVar.f31041c);
        this.g = zzwlVar;
    }
}
