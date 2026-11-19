package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzain implements zzaim {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzom f30542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzom f30543b;

    static {
        zzog zzogVar = zzagr.d;
        f30542a = zzogVar.a("measurement.experiment.enable_passthrough_experiment_reporting", true);
        f30543b = zzogVar.a("measurement.experiment.enable_phenotype_experiment_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzaim
    public final boolean d0() {
        return ((Boolean) ((zznp) f30542a).get()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzaim
    public final boolean e0() {
        return ((Boolean) ((zznp) f30543b).get()).booleanValue();
    }
}
