package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzabe {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Comparator f30338b = new zzaax();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final zzabe f30339c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzabc f30340a;

    static {
        List list = Collections.EMPTY_LIST;
        f30339c = new zzabe(new zzabc());
    }

    public zzabe(zzabc zzabcVar) {
        this.f30340a = zzabcVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzabe) && ((zzabe) obj).f30340a.equals(this.f30340a);
    }

    public final int hashCode() {
        return ~this.f30340a.hashCode();
    }

    public final String toString() {
        return this.f30340a.toString();
    }
}
