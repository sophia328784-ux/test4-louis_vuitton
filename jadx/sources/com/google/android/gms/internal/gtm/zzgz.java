package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgz implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzaa f30071a;

    public zzgz(Context context) {
        this.f30071a = zzaa.a(context);
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        zzaa zzaaVar = this.f30071a;
        if (zzaaVar.f29933b == null) {
            synchronized (zzaaVar) {
                try {
                    zzaaVar.b();
                    zzaaVar.wait(500L);
                } catch (InterruptedException unused) {
                }
            }
        } else {
            zzaaVar.b();
        }
        if (zzaaVar.f29936f.a() - zzaaVar.d > 3600000) {
            zzaaVar.f29933b = null;
        }
        return new zzkl(Boolean.valueOf(!(zzaaVar.f29933b == null ? true : zzaaVar.f29933b.f28680b)));
    }
}
