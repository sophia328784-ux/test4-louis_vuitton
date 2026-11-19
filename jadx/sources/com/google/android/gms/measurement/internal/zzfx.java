package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfx {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f31727f = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzbo f31729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f31730c;
    public final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f31731e = null;

    public /* synthetic */ zzfx(String str, Object obj, zzbo zzboVar) {
        this.f31728a = str;
        this.f31730c = obj;
        this.f31729b = zzboVar;
    }

    public final Object a(Object obj) {
        synchronized (this.d) {
        }
        if (obj != null) {
            return obj;
        }
        if (zzfr.f31721a == null) {
            return this.f31730c;
        }
        synchronized (f31727f) {
            try {
                if (zzae.a()) {
                    return this.f31731e == null ? this.f31730c : this.f31731e;
                }
                try {
                    for (zzfx zzfxVar : zzfy.f31732a) {
                        if (zzae.a()) {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                        Object objD0 = null;
                        try {
                            zzbo zzboVar = zzfxVar.f31729b;
                            if (zzboVar != null) {
                                objD0 = zzboVar.d0();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f31727f) {
                            zzfxVar.f31731e = objD0;
                        }
                    }
                } catch (SecurityException unused2) {
                }
                zzbo zzboVar2 = this.f31729b;
                if (zzboVar2 != null) {
                    try {
                        return zzboVar2.d0();
                    } catch (IllegalStateException | SecurityException unused3) {
                    }
                }
                return this.f31730c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
