package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzan extends zzai implements zzak {
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f30564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzg f30565f;

    public zzan(String str, List list, List list2, zzg zzgVar) {
        super(str);
        this.d = new ArrayList();
        this.f30565f = zzgVar;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.d.add(((zzao) it.next()).f0());
            }
        }
        this.f30564e = new ArrayList(list2);
    }

    @Override // com.google.android.gms.internal.measurement.zzai, com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        return new zzan(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao c(zzg zzgVar, List list) {
        zzat zzatVar;
        zzg zzgVarC = this.f30565f.c();
        zzaw zzawVar = zzgVarC.f30629b;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            zzatVar = zzao.k0;
            if (i2 >= size) {
                break;
            }
            if (i2 < list.size()) {
                zzgVarC.f((String) arrayList.get(i2), zzgVar.f30629b.b(zzgVar, (zzao) list.get(i2)));
            } else {
                zzgVarC.f((String) arrayList.get(i2), zzatVar);
            }
            i2++;
        }
        for (zzao zzaoVar : this.f30564e) {
            zzao zzaoVarB = zzawVar.b(zzgVarC, zzaoVar);
            if (zzaoVarB instanceof zzap) {
                zzaoVarB = zzawVar.b(zzgVarC, zzaoVar);
            }
            if (zzaoVarB instanceof zzag) {
                return ((zzag) zzaoVarB).f30468b;
            }
        }
        return zzatVar;
    }

    public zzan(zzan zzanVar) {
        super(zzanVar.f30528b);
        ArrayList arrayList = new ArrayList(zzanVar.d.size());
        this.d = arrayList;
        arrayList.addAll(zzanVar.d);
        ArrayList arrayList2 = new ArrayList(zzanVar.f30564e.size());
        this.f30564e = arrayList2;
        arrayList2.addAll(zzanVar.f30564e);
        this.f30565f = zzanVar.f30565f;
    }
}
