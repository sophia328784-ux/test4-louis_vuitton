package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkv extends zzkk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f30187c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30188b;

    static {
        HashMap map = new HashMap();
        map.put("charAt", new zzfy());
        map.put("concat", new zzfz());
        map.put("hasOwnProperty", zzfj.f30065a);
        map.put("indexOf", new zzga());
        map.put("lastIndexOf", new zzgb());
        map.put("match", new zzgc());
        map.put("replace", new zzgd());
        map.put("search", new zzge());
        map.put("slice", new zzgf());
        map.put("split", new zzgg());
        map.put("substring", new zzgh());
        map.put("toLocaleLowerCase", new zzgi());
        map.put("toLocaleUpperCase", new zzgj());
        map.put("toLowerCase", new zzgk());
        map.put("toUpperCase", new zzgm());
        map.put("toString", new zzgl());
        map.put("trim", new zzgn());
        f30187c = Collections.unmodifiableMap(map);
    }

    public zzkv(String str) {
        Preconditions.h(str);
        this.f30188b = str;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final zzdi a(String str) {
        Map map = f30187c;
        if (map.containsKey(str)) {
            return (zzdi) map.get(str);
        }
        md.k(fc.h("Native Method ", str, " is not defined for type ListWrapper."));
        return null;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final /* synthetic */ Object c() {
        return this.f30188b;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final Iterator e() {
        return new zzku(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkv)) {
            return false;
        }
        return this.f30188b.equals(((zzkv) obj).f30188b);
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final boolean g(String str) {
        return f30187c.containsKey(str);
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final String toString() {
        return this.f30188b.toString();
    }
}
