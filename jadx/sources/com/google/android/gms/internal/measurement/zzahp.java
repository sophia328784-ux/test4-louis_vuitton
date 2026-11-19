package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzahp implements zzaho {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzom f30513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzom f30514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzom f30515c;

    static {
        zzog zzogVar = zzagr.d;
        f30513a = zzogVar.a("measurement.audience.refresh_event_count_filters_timestamp", false);
        f30514b = zzogVar.a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f30515c = zzogVar.a("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzaho
    public final boolean e0() {
        return ((Boolean) ((zznp) f30513a).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaho
    public final boolean f0() {
        return ((Boolean) ((zznp) f30514b).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaho
    public final boolean g0() {
        return ((Boolean) ((zznp) f30515c).get()).booleanValue();
    }
}
