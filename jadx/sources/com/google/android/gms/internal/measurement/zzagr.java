package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzagr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzph f30482a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzom f30483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f30484c;
    public static final zzog d;

    static {
        zzpj zzpjVar = new zzpj(zzagq.f30481b);
        zzon zzonVar = new zzon(zzpjVar.f30808a, true, zzpjVar.f30809b);
        zzpi zzpiVar = new zzpi();
        zzpiVar.f30806a = zzonVar;
        zzog zzogVar = new zzog("com.google.android.gms.measurement", zzpiVar);
        d = zzogVar;
        f30483b = new zzod("__phenotype_server_token", zzogVar.f30775a, "");
        f30484c = null;
    }

    public static String a() {
        return (String) ((zznp) f30483b).get();
    }
}
