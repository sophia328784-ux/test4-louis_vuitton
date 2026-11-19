package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
public class zzjt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile zzkk f31228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile zzht f31229b;

    static {
        zzio.b();
    }

    public final int a() {
        if (this.f31229b != null) {
            return this.f31229b.f();
        }
        if (this.f31228a != null) {
            return this.f31228a.L();
        }
        return 0;
    }

    public final zzkk b(zzkk zzkkVar) {
        if (this.f31228a == null) {
            synchronized (this) {
                if (this.f31228a == null) {
                    try {
                        this.f31228a = zzkkVar;
                        this.f31229b = zzht.f31188c;
                    } catch (zzjk unused) {
                        this.f31228a = zzkkVar;
                        this.f31229b = zzht.f31188c;
                    }
                }
            }
        }
        return this.f31228a;
    }

    public final zzht c() {
        if (this.f31229b != null) {
            return this.f31229b;
        }
        synchronized (this) {
            try {
                if (this.f31229b != null) {
                    return this.f31229b;
                }
                if (this.f31228a == null) {
                    this.f31229b = zzht.f31188c;
                } else {
                    this.f31229b = this.f31228a.b();
                }
                return this.f31229b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjt)) {
            return false;
        }
        zzjt zzjtVar = (zzjt) obj;
        zzkk zzkkVar = this.f31228a;
        zzkk zzkkVar2 = zzjtVar.f31228a;
        if (zzkkVar == null && zzkkVar2 == null) {
            return c().equals(zzjtVar.c());
        }
        if (zzkkVar == null || zzkkVar2 == null) {
            return zzkkVar != null ? zzkkVar.equals(zzjtVar.b(zzkkVar.O())) : b(zzkkVar2.O()).equals(zzkkVar2);
        }
        return zzkkVar.equals(zzkkVar2);
    }

    public final int hashCode() {
        return 1;
    }
}
