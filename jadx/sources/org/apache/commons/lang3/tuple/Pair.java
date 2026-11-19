package org.apache.commons.lang3.tuple;

import java.io.Serializable;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.lang3.builder.CompareToBuilder;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Pair<L, R> implements Map.Entry<L, R>, Comparable<Pair<L, R>>, Serializable {
    private static final long serialVersionUID = 4954918890077093841L;

    public abstract Object a();

    public abstract Object b();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Pair pair = (Pair) obj;
        CompareToBuilder compareToBuilder = new CompareToBuilder();
        compareToBuilder.a(a(), pair.a());
        compareToBuilder.a(b(), pair.b());
        return compareToBuilder.f77544a;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (Objects.equals(a(), entry.getKey()) && Objects.equals(b(), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return a();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return b();
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return Objects.hashCode(b()) ^ Objects.hashCode(a());
    }

    public final String toString() {
        return "(" + a() + ',' + b() + ')';
    }
}
