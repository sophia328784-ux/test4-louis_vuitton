package androidx.core.graphics;

import defpackage.tr;

/* JADX INFO: loaded from: classes.dex */
public final class Insets {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Insets f12053e = new Insets(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12056c;
    public final int d;

    public Insets(int i2, int i3, int i4, int i5) {
        this.f12054a = i2;
        this.f12055b = i3;
        this.f12056c = i4;
        this.d = i5;
    }

    public static Insets a(Insets insets, Insets insets2) {
        return c(Math.max(insets.f12054a, insets2.f12054a), Math.max(insets.f12055b, insets2.f12055b), Math.max(insets.f12056c, insets2.f12056c), Math.max(insets.d, insets2.d));
    }

    public static Insets b(Insets insets, Insets insets2) {
        return c(Math.min(insets.f12054a, insets2.f12054a), Math.min(insets.f12055b, insets2.f12055b), Math.min(insets.f12056c, insets2.f12056c), Math.min(insets.d, insets2.d));
    }

    public static Insets c(int i2, int i3, int i4, int i5) {
        return (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) ? f12053e : new Insets(i2, i3, i4, i5);
    }

    public static Insets d(android.graphics.Insets insets) {
        return c(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final android.graphics.Insets e() {
        return android.graphics.Insets.of(this.f12054a, this.f12055b, this.f12056c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Insets.class != obj.getClass()) {
            return false;
        }
        Insets insets = (Insets) obj;
        return this.d == insets.d && this.f12054a == insets.f12054a && this.f12056c == insets.f12056c && this.f12055b == insets.f12055b;
    }

    public final int hashCode() {
        return (((((this.f12054a * 31) + this.f12055b) * 31) + this.f12056c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Insets{left=");
        sb.append(this.f12054a);
        sb.append(", top=");
        sb.append(this.f12055b);
        sb.append(", right=");
        sb.append(this.f12056c);
        sb.append(", bottom=");
        return tr.k(sb, this.d, '}');
    }
}
