package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzbc implements zzbe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzg f30578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30579b;

    public zzbc(zzg zzgVar, String str) {
        this.f30578a = zzgVar;
        this.f30579b = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbe
    public final zzg a(zzao zzaoVar) {
        zzg zzgVarC = this.f30578a.c();
        String str = this.f30579b;
        zzgVarC.f(str, zzaoVar);
        zzgVarC.d.put(str, Boolean.TRUE);
        return zzgVarC;
    }
}
