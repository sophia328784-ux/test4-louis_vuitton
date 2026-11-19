package com.google.android.gms.internal.gtm;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzkg {
    public static final String d = new String("");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f30160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f30161c;

    public /* synthetic */ zzkg(Integer num, Object obj, ArrayList arrayList) {
        this.f30159a = num.intValue();
        this.f30160b = obj;
        this.f30161c = Collections.unmodifiableList(arrayList);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzkg) && ((zzkg) obj).f30160b.equals(this.f30160b);
    }

    public final int hashCode() {
        return this.f30160b.hashCode();
    }

    public final String toString() {
        Object obj = this.f30160b;
        if (obj != null) {
            return obj.toString();
        }
        zzbg.a();
        return d;
    }
}
