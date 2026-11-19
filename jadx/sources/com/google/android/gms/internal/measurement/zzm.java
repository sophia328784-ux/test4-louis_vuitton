package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzm extends zzai {
    public final /* synthetic */ zzo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(zzn zznVar, zzo zzoVar) {
        super("getValue");
        this.d = zzoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao c(zzg zzgVar, List list) {
        zzh.a(2, list, "getValue");
        zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) list.get(0));
        zzao zzaoVarB2 = zzgVar.f30629b.b(zzgVar, (zzao) list.get(1));
        String strA = this.d.a(zzaoVarB.f0());
        return strA != null ? new zzas(strA) : zzaoVarB2;
    }
}
