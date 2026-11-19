package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaha implements zzagz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzom f30494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzom f30495b;

    static {
        zzog zzogVar = zzagr.d;
        f30494a = zzogVar.a("measurement.set_default_event_parameters.fix_app_update_logging", true);
        f30495b = zzogVar.a("measurement.set_default_event_parameters.fix_service_request_ordering", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzagz
    public final boolean d0() {
        return ((Boolean) ((zznp) f30494a).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzagz
    public final boolean e0() {
        return ((Boolean) ((zznp) f30495b).get()).booleanValue();
    }
}
