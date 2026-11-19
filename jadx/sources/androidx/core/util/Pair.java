package androidx.core.util;

import defpackage.a;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Pair<F, S> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final F f12138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final S f12139b;

    public Pair(F f2, S s) {
        this.f12138a = f2;
        this.f12139b = s;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return Objects.equals(pair.f12138a, this.f12138a) && Objects.equals(pair.f12139b, this.f12139b);
    }

    public final int hashCode() {
        F f2 = this.f12138a;
        int iHashCode = f2 == null ? 0 : f2.hashCode();
        S s = this.f12139b;
        return iHashCode ^ (s != null ? s.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Pair{");
        sb.append(this.f12138a);
        sb.append(" ");
        return a.n(sb, this.f12139b, "}");
    }
}
