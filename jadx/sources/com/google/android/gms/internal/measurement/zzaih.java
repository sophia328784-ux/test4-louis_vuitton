package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaih implements zzaig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzpo f30536a = new zzpo(zzagr.d, 11);

    @Override // com.google.android.gms.internal.measurement.zzaig
    public final boolean I() {
        return ((Boolean) f30536a.a(7, "measurement.rb.attribution.enable_trigger_redaction", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaig
    public final boolean b() {
        return ((Boolean) f30536a.a(8, "measurement.rb.attribution.uuid_generation", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaig
    public final boolean e0() {
        return ((Boolean) f30536a.a(1, "measurement.rb.attribution.client2", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaig
    public final boolean f0() {
        return ((Boolean) f30536a.a(2, "measurement.rb.attribution.service.trigger_uris_high_priority", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaig
    public final boolean g0() {
        return ((Boolean) f30536a.a(4, "measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once", true).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaig
    public final boolean h0() {
        return ((Boolean) f30536a.a(6, "measurement.rb.attribution.service", true).get()).booleanValue();
    }
}
