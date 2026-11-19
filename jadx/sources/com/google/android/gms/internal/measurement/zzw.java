package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public final class zzw extends zzai {
    public final zzj d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f31032e;

    public zzw(zzj zzjVar) {
        super("require");
        this.f31032e = new HashMap();
        this.d = zzjVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao c(zzg zzgVar, List list) {
        zzao zzaoVar;
        zzh.a(1, list, "require");
        String strF0 = zzgVar.f30629b.b(zzgVar, (zzao) list.get(0)).f0();
        HashMap map = this.f31032e;
        if (map.containsKey(strF0)) {
            return (zzao) map.get(strF0);
        }
        HashMap map2 = this.d.f30642a;
        if (map2.containsKey(strF0)) {
            try {
                zzaoVar = (zzao) ((Callable) map2.get(strF0)).call();
            } catch (Exception unused) {
                md.k("Failed to create API implementation: ".concat(String.valueOf(strF0)));
                return null;
            }
        } else {
            zzaoVar = zzao.k0;
        }
        if (zzaoVar instanceof zzai) {
            map.put(strF0, (zzai) zzaoVar);
        }
        return zzaoVar;
    }
}
