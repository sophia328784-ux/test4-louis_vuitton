package com.google.android.gms.internal.gtm;

import defpackage.fc;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzkk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map f30163a;

    public zzdi a(String str) {
        throw new IllegalStateException(fc.h("Attempting to access Native Method ", str, " on unsupported type."));
    }

    public zzkk b(String str) {
        Map map = this.f30163a;
        return map != null ? (zzkk) map.get(str) : zzko.f30172h;
    }

    public abstract Object c();

    public final Iterator d() {
        Map map = this.f30163a;
        return map == null ? new zzki() : new zzkh(map.keySet().iterator());
    }

    public Iterator e() {
        return new zzki();
    }

    public final void f(zzkk zzkkVar, String str) {
        if (this.f30163a == null) {
            this.f30163a = new HashMap();
        }
        this.f30163a.put(str, zzkkVar);
    }

    public boolean g(String str) {
        return false;
    }

    public abstract String toString();
}
