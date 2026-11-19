package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public final class zzu extends zzai {
    public final Callable d;

    public zzu(String str, Callable callable) {
        super("internal.appMetadata");
        this.d = callable;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao c(zzg zzgVar, List list) {
        try {
            return zzi.a(this.d.call());
        } catch (Exception unused) {
            return zzao.k0;
        }
    }
}
