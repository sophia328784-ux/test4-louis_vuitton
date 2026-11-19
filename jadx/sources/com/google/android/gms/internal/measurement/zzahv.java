package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahv implements zzahu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzom f30521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzom f30522b;

    static {
        zzog zzogVar = zzagr.d;
        f30521a = zzogVar.a("45753512", false);
        f30522b = zzogVar.a("measurement.gbraid_campaign.stop_lgclid", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzahu
    public final boolean d0() {
        return ((Boolean) ((zznp) f30521a).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzahu
    public final boolean e0() {
        return ((Boolean) ((zznp) f30522b).get()).booleanValue();
    }
}
