package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkr extends zzkk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f30179c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f30180b;

    static {
        HashMap map = new HashMap();
        map.put("concat", new zzdl());
        map.put("every", new zzdm());
        map.put("filter", new zzdn());
        map.put("forEach", new zzdo());
        map.put("indexOf", new zzdp());
        map.put("hasOwnProperty", zzfj.f30065a);
        map.put("join", new zzdq());
        map.put("lastIndexOf", new zzdr());
        map.put("map", new zzds());
        map.put("pop", new zzdt());
        map.put("push", new zzdu());
        map.put("reduce", new zzdv());
        map.put("reduceRight", new zzdw());
        map.put("reverse", new zzdx());
        map.put("shift", new zzdy());
        map.put("slice", new zzdz());
        map.put("some", new zzea());
        map.put("sort", new zzee());
        map.put("splice", new zzef());
        map.put("toString", new zzgl());
        map.put("unshift", new zzeg());
        f30179c = Collections.unmodifiableMap(map);
    }

    public zzkr(List list) {
        Preconditions.h(list);
        this.f30180b = new ArrayList(list);
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final zzdi a(String str) {
        Map map = f30179c;
        if (map.containsKey(str)) {
            return (zzdi) map.get(str);
        }
        md.k(fc.h("Native Method ", str, " is not defined for type ListWrapper."));
        return null;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final /* synthetic */ Object c() {
        return this.f30180b;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final Iterator e() {
        return new zzkq(new zzkp(this), d());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkr)) {
            return false;
        }
        ArrayList arrayList = ((zzkr) obj).f30180b;
        ArrayList arrayList2 = this.f30180b;
        if (arrayList2.size() != arrayList.size()) {
            return false;
        }
        boolean zEquals = true;
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            zEquals = arrayList2.get(i2) == null ? arrayList.get(i2) == null : ((zzkk) arrayList2.get(i2)).equals(arrayList.get(i2));
            if (!zEquals) {
                break;
            }
        }
        return zEquals;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final boolean g(String str) {
        return f30179c.containsKey(str);
    }

    public final zzkk h(int i2) {
        zzkk zzkkVar;
        if (i2 >= 0) {
            ArrayList arrayList = this.f30180b;
            if (i2 < arrayList.size() && (zzkkVar = (zzkk) arrayList.get(i2)) != null) {
                return zzkkVar;
            }
        }
        return zzko.f30172h;
    }

    public final void i(int i2) {
        Preconditions.b(i2 >= 0, "Invalid array length");
        ArrayList arrayList = this.f30180b;
        if (arrayList.size() == i2) {
            return;
        }
        if (arrayList.size() >= i2) {
            arrayList.subList(i2, arrayList.size()).clear();
            return;
        }
        arrayList.ensureCapacity(i2);
        for (int size = arrayList.size(); size < i2; size++) {
            arrayList.add(null);
        }
    }

    public final boolean j(int i2) {
        if (i2 < 0) {
            return false;
        }
        ArrayList arrayList = this.f30180b;
        return i2 < arrayList.size() && arrayList.get(i2) != null;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    /* JADX INFO: renamed from: toString */
    public final String c() {
        return this.f30180b.toString();
    }
}
