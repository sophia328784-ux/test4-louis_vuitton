package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaq implements zzbp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f29829c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f29830b;

    static {
        new zzaj(zzap.f29828a);
    }

    public zzaq(Object obj) {
        this.f29830b = obj;
    }

    public final Object a() {
        int i2 = zzae.f29825a;
        if (zzah.f29827b == null) {
            zzah.f29827b = new zzag();
        }
        synchronized (zzah.f29826a) {
        }
        throw new IllegalStateException("Must call PhenotypeContext.setContext() first");
    }
}
