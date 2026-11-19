package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.md;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzbv f30006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HashMap f30007b;

    public zzbv(zzbv zzbvVar) {
        this.f30007b = null;
        this.f30006a = zzbvVar;
    }

    public final zzkk a(String str) {
        HashMap map = this.f30007b;
        if (map != null && map.containsKey(str)) {
            return (zzkk) this.f30007b.get(str);
        }
        zzbv zzbvVar = this.f30006a;
        if (zzbvVar != null) {
            return zzbvVar.a(str);
        }
        md.k("Trying to get a non existent symbol: ".concat(String.valueOf(str)));
        return null;
    }

    public final void b(zzkk zzkkVar, String str) {
        if (this.f30007b == null) {
            this.f30007b = new HashMap();
        }
        this.f30007b.put(str, zzkkVar);
    }

    public final void c() {
        Preconditions.k(e("gtm.globals.eventName"));
        HashMap map = this.f30007b;
        if (map == null || !map.containsKey("gtm.globals.eventName")) {
            this.f30006a.c();
        } else {
            this.f30007b.remove("gtm.globals.eventName");
        }
    }

    public final void d(zzkk zzkkVar, String str) {
        HashMap map = this.f30007b;
        if (map != null && map.containsKey(str)) {
            this.f30007b.put(str, zzkkVar);
            return;
        }
        zzbv zzbvVar = this.f30006a;
        if (zzbvVar != null) {
            zzbvVar.d(zzkkVar, str);
        } else {
            md.k("Trying to modify a non existent symbol: ".concat(String.valueOf(str)));
        }
    }

    public final boolean e(String str) {
        HashMap map = this.f30007b;
        if (map != null && map.containsKey(str)) {
            return true;
        }
        zzbv zzbvVar = this.f30006a;
        if (zzbvVar != null) {
            return zzbvVar.e(str);
        }
        return false;
    }

    public zzbv() {
        this(null);
    }
}
