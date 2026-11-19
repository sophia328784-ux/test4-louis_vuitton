package org.squirrelframework.foundation.util;

/* JADX INFO: loaded from: classes5.dex */
public class Pair<F, S> {
    private final F first;
    private final S second;

    public Pair(F f2, S s) {
        this.first = f2;
        this.second = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return this.first.equals(pair.first) && this.second.equals(pair.second);
    }

    public F first() {
        return this.first;
    }

    public int hashCode() {
        return (this.second.hashCode() * 7) + (this.first.hashCode() * 13);
    }

    public S second() {
        return this.second;
    }

    public String toString() {
        return this.first + ":" + this.second;
    }
}
