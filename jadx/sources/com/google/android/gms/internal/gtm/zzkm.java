package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkm extends zzkk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f30166c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Double f30167b;

    static {
        HashMap map = new HashMap();
        map.put("hasOwnProperty", zzfj.f30065a);
        map.put("toString", new zzgl());
        f30166c = Collections.unmodifiableMap(map);
    }

    public zzkm(Double d) {
        Preconditions.h(d);
        this.f30167b = d;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final zzdi a(String str) {
        Map map = f30166c;
        if (map.containsKey(str)) {
            return (zzdi) map.get(str);
        }
        md.k(fc.h("Native Method ", str, " is not defined for type DoubleWrapper."));
        return null;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final /* synthetic */ Object c() {
        return this.f30167b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkm)) {
            return false;
        }
        return this.f30167b.equals(((zzkm) obj).f30167b);
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final boolean g(String str) {
        return f30166c.containsKey(str);
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final String toString() {
        return this.f30167b.toString();
    }
}
