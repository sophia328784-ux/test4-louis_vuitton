package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkl extends zzkk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f30164c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f30165b;

    static {
        HashMap map = new HashMap();
        map.put("hasOwnProperty", zzfj.f30065a);
        map.put("toString", new zzgl());
        f30164c = Collections.unmodifiableMap(map);
    }

    public zzkl(Boolean bool) {
        Preconditions.h(bool);
        this.f30165b = bool;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final zzdi a(String str) {
        Map map = f30164c;
        if (map.containsKey(str)) {
            return (zzdi) map.get(str);
        }
        md.k(fc.h("Native Method ", str, " is not defined for type BooleanWrapper."));
        return null;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final /* synthetic */ Object c() {
        return this.f30165b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzkl) {
            return ((zzkl) obj).f30165b.equals(this.f30165b);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final boolean g(String str) {
        return f30164c.containsKey(str);
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    /* JADX INFO: renamed from: toString */
    public final String c() {
        return this.f30165b.toString();
    }
}
