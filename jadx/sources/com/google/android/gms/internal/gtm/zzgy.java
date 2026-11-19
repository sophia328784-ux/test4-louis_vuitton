package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgy implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzaa f30070a;

    public zzgy(Context context) {
        this.f30070a = zzaa.a(context);
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        zzaa zzaaVar = this.f30070a;
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
        String str = zzaaVar.f29933b != null ? zzaaVar.f29933b.f28679a : null;
        return str == null ? zzko.f30172h : new zzkv(str);
    }
}
