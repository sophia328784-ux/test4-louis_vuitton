package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzbd implements zzbe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzg f30580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30581b;

    public zzbd(zzg zzgVar, String str) {
        this.f30580a = zzgVar;
        this.f30581b = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbe
    public final zzg a(zzao zzaoVar) {
        zzg zzgVarC = this.f30580a.c();
        zzgVarC.f(this.f30581b, zzaoVar);
        return zzgVarC;
    }
}
