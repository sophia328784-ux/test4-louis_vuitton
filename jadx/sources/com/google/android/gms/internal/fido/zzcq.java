package com.google.android.gms.internal.fido;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
final class zzcq extends zzcs implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzcq f29861b = new zzcq();

    @Override // com.google.android.gms.internal.fido.zzcs
    public final zzcs a() {
        return zzcw.f29871b;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
