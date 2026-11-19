package com.airbnb.lottie.model;

import androidx.core.util.Pair;

/* JADX INFO: loaded from: classes.dex */
public class MutablePair<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f22087b;

    public final boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        F f2 = pair.f12138a;
        Object obj2 = this.f22086a;
        if (f2 != obj2 && (f2 == 0 || !f2.equals(obj2))) {
            return false;
        }
        S s = pair.f12139b;
        Object obj3 = this.f22087b;
        if (s != obj3) {
            return s != 0 && s.equals(obj3);
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f22086a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f22087b;
        return iHashCode ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "Pair{" + ((Object) this.f22086a) + " " + ((Object) this.f22087b) + "}";
    }
}
