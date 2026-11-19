package com.google.android.gms.internal.gtm;

import android.content.Context;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class zzap implements zzau {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static zzap f29956c;
    public static final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashSet f29957e = new HashSet(Arrays.asList("GET", "HEAD", "POST", "PUT"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzax f29958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzbw f29959b;

    public zzap(Context context) {
        zzax zzaxVarZzd = zzax.zzd(context);
        zzbw zzbwVar = new zzbw();
        this.f29958a = zzaxVarZzd;
        this.f29959b = zzbwVar;
    }

    public static zzap b(Context context) {
        zzap zzapVar;
        synchronized (d) {
            try {
                if (f29956c == null) {
                    f29956c = new zzap(context);
                }
                zzapVar = f29956c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzapVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzau
    public final boolean a(String str, String str2, String str3, HashMap map, String str4) {
        if (str2 != null && !f29957e.contains(str2)) {
            zzao.a(5);
            return false;
        }
        if (zzbn.a().f29990c != 2) {
            zzbw zzbwVar = this.f29959b;
            synchronized (zzbwVar.f30010c) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    double dMin = zzbwVar.f30008a;
                    if (dMin < 60.0d) {
                        double d2 = (jCurrentTimeMillis - zzbwVar.f30009b) / 2000.0d;
                        if (d2 > 0.0d) {
                            dMin = Math.min(60.0d, dMin + d2);
                            zzbwVar.f30008a = dMin;
                        }
                    }
                    zzbwVar.f30009b = jCurrentTimeMillis;
                    if (dMin < 1.0d) {
                        zzao.a(5);
                        zzao.a(5);
                        return false;
                    }
                    zzbwVar.f30008a = dMin - 1.0d;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.f29958a.zzb(str, str2, str3, map, str4);
        return true;
    }
}
