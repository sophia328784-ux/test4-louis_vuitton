package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzks extends zzkk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f30181c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f30182b = false;

    static {
        HashMap map = new HashMap();
        map.put("hasOwnProperty", zzfj.f30065a);
        f30181c = Collections.unmodifiableMap(map);
    }

    public zzks(Map map) {
        Preconditions.h(map);
        this.f30163a = map;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final zzdi a(String str) {
        Map map = f30181c;
        if (map.containsKey(str)) {
            return (zzdi) map.get(str);
        }
        md.k(fc.h("Native Method ", str, " is not defined for type ListWrapper."));
        return null;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final zzkk b(String str) {
        zzkk zzkkVarB = super.b(str);
        return zzkkVarB == null ? zzko.f30172h : zzkkVarB;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final /* synthetic */ Object c() {
        return this.f30163a;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final Iterator e() {
        return d();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzks) {
            return this.f30163a.entrySet().equals(((zzks) obj).f30163a.entrySet());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final boolean g(String str) {
        return f30181c.containsKey(str);
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    /* JADX INFO: renamed from: toString */
    public final String c() {
        return this.f30163a.toString();
    }
}
