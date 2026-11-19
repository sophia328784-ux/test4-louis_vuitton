package com.google.android.gms.internal.clearcut;

import android.util.Base64;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class zzal extends zzae {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f29642i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f29643j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Object f29644k;
    public final /* synthetic */ zzan l = zzq.f29783a;

    public zzal(zzao zzaoVar, String str, zzgw$zza zzgw_zza) {
        super(zzaoVar, str, zzgw_zza);
        this.f29642i = new Object();
    }

    @Override // com.google.android.gms.internal.clearcut.zzae
    public final Object c(String str) {
        Object obj;
        try {
            synchronized (this.f29642i) {
                try {
                    if (!str.equals(this.f29643j)) {
                        zzgw$zza zzgw_zzaL = zzgw$zza.l(Base64.decode(str, 3));
                        this.f29643j = str;
                        this.f29644k = zzgw_zzaL;
                    }
                    obj = this.f29644k;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return obj;
        } catch (IOException | IllegalArgumentException unused) {
            new StringBuilder(String.valueOf(str).length() + String.valueOf(this.f29635b).length() + 27);
            return null;
        }
    }
}
