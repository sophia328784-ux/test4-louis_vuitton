package com.perfectcorp.thirdparty.com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;

/* JADX INFO: loaded from: classes3.dex */
abstract class w<C extends Comparable> implements Serializable, Comparable<w<C>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Comparable f42350b;

    public static final class a extends w<Comparable<?>> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f42351c = new a(null);

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        /* JADX INFO: renamed from: a */
        public final int compareTo(w wVar) {
            return wVar == this ? 0 : 1;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final Comparable b() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final void c(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w, java.lang.Comparable
        public final int compareTo(Object obj) {
            return ((w) obj) == this ? 0 : 1;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final boolean d(Comparable comparable) {
            return false;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final void e(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final int hashCode() {
            return System.identityHashCode(this);
        }

        public final String toString() {
            return "+∞";
        }
    }

    public static final class b<C extends Comparable> extends w<C> {
        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final void c(StringBuilder sb) {
            sb.append('(');
            sb.append(this.f42350b);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final boolean d(Comparable comparable) {
            int i2 = Range.d;
            return this.f42350b.compareTo(comparable) < 0;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final void e(StringBuilder sb) {
            sb.append(this.f42350b);
            sb.append(']');
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final int hashCode() {
            return ~this.f42350b.hashCode();
        }

        public final String toString() {
            return "/" + this.f42350b + "\\";
        }
    }

    public static final class c extends w<Comparable<?>> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f42352c = new c(null);

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        /* JADX INFO: renamed from: a */
        public final int compareTo(w wVar) {
            return wVar == this ? 0 : -1;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final Comparable b() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final void c(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w, java.lang.Comparable
        public final int compareTo(Object obj) {
            return ((w) obj) == this ? 0 : -1;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final boolean d(Comparable comparable) {
            return true;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final void e(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final int hashCode() {
            return System.identityHashCode(this);
        }

        public final String toString() {
            return "-∞";
        }
    }

    public static final class d<C extends Comparable> extends w<C> {
        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final void c(StringBuilder sb) {
            sb.append('[');
            sb.append(this.f42350b);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final boolean d(Comparable comparable) {
            int i2 = Range.d;
            return this.f42350b.compareTo(comparable) <= 0;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final void e(StringBuilder sb) {
            sb.append(this.f42350b);
            sb.append(')');
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.w
        public final int hashCode() {
            return this.f42350b.hashCode();
        }

        public final String toString() {
            return "\\" + this.f42350b + "/";
        }
    }

    public w(Comparable comparable) {
        this.f42350b = comparable;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(w wVar) {
        if (wVar == c.f42352c) {
            return 1;
        }
        if (wVar == a.f42351c) {
            return -1;
        }
        Comparable comparable = wVar.f42350b;
        int i2 = Range.d;
        int iCompareTo = this.f42350b.compareTo(comparable);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        boolean z = this instanceof b;
        if (z == (wVar instanceof b)) {
            return 0;
        }
        return z ? 1 : -1;
    }

    public Comparable b() {
        return this.f42350b;
    }

    public abstract void c(StringBuilder sb);

    public abstract boolean d(Comparable comparable);

    public abstract void e(StringBuilder sb);

    public final boolean equals(Object obj) {
        if (obj instanceof w) {
            try {
                if (compareTo((w) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    public abstract int hashCode();
}
