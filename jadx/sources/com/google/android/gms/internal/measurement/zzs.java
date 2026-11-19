package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzs extends zzai {
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f30897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzt f30898f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzt zztVar, boolean z, boolean z2) {
        super("log");
        Objects.requireNonNull(zztVar);
        this.f30898f = zztVar;
        this.d = z;
        this.f30897e = z2;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0078  */
    /* JADX WARN: Code duplicated, block: B:22:0x0086  */
    /* JADX WARN: Code duplicated, block: B:25:0x0095 A[LOOP:0: B:23:0x008b->B:25:0x0095, LOOP_END] */
    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao c(zzg zzgVar, List list) {
        int i2;
        int i3;
        String strF0;
        ArrayList arrayList;
        zzh.b(1, list, "log");
        int size = list.size();
        zzat zzatVar = zzao.k0;
        zzt zztVar = this.f30898f;
        if (size == 1) {
            zztVar.d.a(3, zzgVar.f30629b.b(zzgVar, (zzao) list.get(0)).f0(), Collections.EMPTY_LIST, this.d, this.f30897e);
            return zzatVar;
        }
        zzao zzaoVar = (zzao) list.get(0);
        zzaw zzawVar = zzgVar.f30629b;
        zzaw zzawVar2 = zzgVar.f30629b;
        int iG = zzh.g(zzawVar.b(zzgVar, zzaoVar).g0().doubleValue());
        if (iG != 2) {
            i2 = 3;
            if (iG == 3) {
                i3 = 1;
            } else if (iG == 5) {
                i3 = 5;
            } else if (iG == 6) {
                i3 = 2;
            }
            strF0 = zzawVar2.b(zzgVar, (zzao) list.get(1)).f0();
            if (list.size() == 2) {
                zztVar.d.a(i3, strF0, Collections.EMPTY_LIST, this.d, this.f30897e);
                return zzatVar;
            }
            arrayList = new ArrayList();
            for (int i4 = 2; i4 < Math.min(list.size(), 5); i4++) {
                arrayList.add(zzawVar2.b(zzgVar, (zzao) list.get(i4)).f0());
            }
            zztVar.d.a(i3, strF0, arrayList, this.d, this.f30897e);
            return zzatVar;
        }
        i2 = 4;
        i3 = i2;
        strF0 = zzawVar2.b(zzgVar, (zzao) list.get(1)).f0();
        if (list.size() == 2) {
            zztVar.d.a(i3, strF0, Collections.EMPTY_LIST, this.d, this.f30897e);
            return zzatVar;
        }
        arrayList = new ArrayList();
        while (i4 < Math.min(list.size(), 5)) {
            arrayList.add(zzawVar2.b(zzgVar, (zzao) list.get(i4)).f0());
        }
        zztVar.d.a(i3, strF0, arrayList, this.d, this.f30897e);
        return zzatVar;
    }
}
