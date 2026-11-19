package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Predicate;
import defpackage.md;
import java.io.Serializable;
import java.lang.Comparable;

/* JADX INFO: loaded from: classes3.dex */
public final class Range<C extends Comparable> extends bi implements Predicate<C>, Serializable {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f42221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f42222c;

    static {
        new Range(w.c.f42352c, w.a.f42351c);
    }

    public Range(w wVar, w wVar2) {
        this.f42221b = wVar;
        this.f42222c = wVar2;
        if (wVar.compareTo(wVar2) > 0 || wVar == w.a.f42351c || wVar2 == w.c.f42352c) {
            StringBuilder sb = new StringBuilder(16);
            wVar.c(sb);
            sb.append("..");
            wVar2.e(sb);
            md.n("Invalid range: ".concat(sb.toString()));
            throw null;
        }
    }

    public static Range c(Comparable comparable, Comparable comparable2) {
        return new Range(new w.d(comparable), new w.b(comparable2));
    }

    public final Comparable a() {
        return this.f42221b.b();
    }

    public final Comparable b() {
        return this.f42222c.b();
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final boolean apply(Comparable comparable) {
        comparable.getClass();
        return this.f42221b.d(comparable) && !this.f42222c.d(comparable);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean equals(Object obj) {
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.f42221b.equals(range.f42221b) && this.f42222c.equals(range.f42222c);
    }

    public final int hashCode() {
        return (this.f42221b.hashCode() * 31) + this.f42222c.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(16);
        this.f42221b.c(sb);
        sb.append("..");
        this.f42222c.e(sb);
        return sb.toString();
    }
}
