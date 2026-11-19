package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaev {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzaeu f30429a;

    public zzaev(zzagm zzagmVar, zzagm zzagmVar2, Object obj) {
        this.f30429a = new zzaeu(zzagmVar, "", zzagmVar2, obj);
    }

    public static void a(zzada zzadaVar, zzaeu zzaeuVar, Object obj, Object obj2) {
        zzadk.e(zzadaVar, zzaeuVar.f30426a, 1, obj);
        zzadk.e(zzadaVar, zzaeuVar.f30427b, 2, obj2);
    }

    public static int b(zzaeu zzaeuVar, Object obj, Object obj2) {
        return zzadk.f(zzaeuVar.f30426a, 1, obj) + zzadk.f(zzaeuVar.f30427b, 2, obj2);
    }
}
