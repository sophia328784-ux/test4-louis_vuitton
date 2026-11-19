package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzbf implements zzbe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzg f30582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30583b;

    public zzbf(zzg zzgVar, String str) {
        this.f30582a = zzgVar;
        this.f30583b = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbe
    public final zzg a(zzao zzaoVar) {
        String str = this.f30583b;
        zzg zzgVar = this.f30582a;
        zzgVar.f(str, zzaoVar);
        return zzgVar;
    }
}
