package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzt extends zzai {
    public final zzr d;

    public zzt(zzr zzrVar) {
        super("internal.logger");
        this.d = zzrVar;
        this.f30529c.put("log", new zzs(this, false, true));
        this.f30529c.put("silent", new zzp("silent"));
        ((zzai) this.f30529c.get("silent")).b("log", new zzs(this, true, true));
        this.f30529c.put("unmonitored", new zzq("unmonitored"));
        ((zzai) this.f30529c.get("unmonitored")).b("log", new zzs(this, false, false));
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao c(zzg zzgVar, List list) {
        return zzao.k0;
    }
}
