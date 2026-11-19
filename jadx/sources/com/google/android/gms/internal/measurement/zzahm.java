package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahm implements zzahl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzom f30509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzom f30510b;

    static {
        zzog zzogVar = zzagr.d;
        f30509a = zzogVar.a("measurement.service.store_null_safelist", true);
        f30510b = zzogVar.a("measurement.service.store_safelist", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzahl
    public final boolean e0() {
        return ((Boolean) ((zznp) f30509a).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzahl
    public final boolean f0() {
        return ((Boolean) ((zznp) f30510b).get()).booleanValue();
    }
}
