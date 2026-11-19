package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzzn extends zzzq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f31123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f31124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzzp f31125c;
    public final zzzo d;

    public /* synthetic */ zzzn(zzzm zzzmVar) {
        HashMap map = new HashMap();
        this.f31123a = map;
        HashMap map2 = new HashMap();
        this.f31124b = map2;
        map.putAll(zzzmVar.f31120a);
        map2.putAll(zzzmVar.f31121b);
        this.f31125c = zzzmVar.f31122c;
        this.d = zzzmVar.d;
    }

    @Override // com.google.android.gms.internal.measurement.zzzq
    public final void a(zzyl zzylVar, Object obj, zzzc zzzcVar) {
        zzzp zzzpVar = (zzzp) this.f31123a.get(zzylVar);
        if (zzzpVar != null) {
            zzzpVar.a(zzylVar, obj, zzzcVar);
        } else {
            ((zzzr) this.f31125c).a(zzylVar, obj, zzzcVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzq
    public final void b(zzyl zzylVar, Iterator it, zzzc zzzcVar) {
        zzzo zzzoVar = (zzzo) this.f31124b.get(zzylVar);
        if (zzzoVar != null) {
            zzzoVar.a(zzylVar, it, zzzcVar);
            return;
        }
        zzzo zzzoVar2 = this.d;
        if (zzzoVar2 != null && !this.f31123a.containsKey(zzylVar)) {
            ((zzzs) zzzoVar2).a(zzylVar, it, zzzcVar);
        } else {
            while (it.hasNext()) {
                a(zzylVar, it.next(), zzzcVar);
            }
        }
    }
}
