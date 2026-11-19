package com.google.android.gms.internal.gtm;

import defpackage.fc;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkn extends zzkk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f30168c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzdi f30169b;

    static {
        HashMap map = new HashMap();
        map.put("hasOwnProperty", zzfj.f30065a);
        f30168c = Collections.unmodifiableMap(map);
    }

    public zzkn(zzdi zzdiVar) {
        this.f30169b = zzdiVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final zzdi a(String str) {
        Map map = f30168c;
        if (map.containsKey(str)) {
            return (zzdi) map.get(str);
        }
        md.k(fc.h("Native Method ", str, " is not defined for type InstructionReference."));
        return null;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final /* synthetic */ Object c() {
        return this.f30169b;
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final Iterator e() {
        return d();
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    public final boolean g(String str) {
        return f30168c.containsKey(str);
    }

    @Override // com.google.android.gms.internal.gtm.zzkk
    /* JADX INFO: renamed from: toString */
    public final String c() {
        return this.f30169b.toString();
    }
}
