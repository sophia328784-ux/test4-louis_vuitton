package com.airbnb.lottie.model;

import defpackage.d21;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes.dex */
public class KeyPath {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KeyPath f22079c = new KeyPath("COMPOSITION");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f22080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public KeyPathElement f22081b;

    public KeyPath(KeyPath keyPath) {
        this.f22080a = new ArrayList(keyPath.f22080a);
        this.f22081b = keyPath.f22081b;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x007e A[RETURN] */
    public final boolean a(int i2, String str) {
        List list = this.f22080a;
        if (i2 < list.size()) {
            boolean z = i2 == list.size() - 1;
            String str2 = (String) list.get(i2);
            if (!str2.equals("**")) {
                boolean z2 = str2.equals(str) || str2.equals(Browse.CAPS_WILDCARD);
                if ((z || (i2 == list.size() - 2 && ((String) fc.e(1, list)).equals("**"))) && z2) {
                    return true;
                }
            } else {
                if (z || !((String) list.get(i2 + 1)).equals(str)) {
                    if (!z) {
                        int i3 = i2 + 1;
                        if (i3 >= list.size() - 1) {
                            return ((String) list.get(i3)).equals(str);
                        }
                    }
                    return true;
                }
                if (i2 == list.size() - 2 || (i2 == list.size() - 3 && ((String) fc.e(1, list)).equals("**"))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int b(int i2, String str) {
        if ("__container".equals(str)) {
            return 0;
        }
        List list = this.f22080a;
        if (((String) list.get(i2)).equals("**")) {
            return (i2 != list.size() - 1 && ((String) list.get(i2 + 1)).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public final boolean c(int i2, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.f22080a;
        if (i2 >= list.size()) {
            return false;
        }
        return ((String) list.get(i2)).equals(str) || ((String) list.get(i2)).equals("**") || ((String) list.get(i2)).equals(Browse.CAPS_WILDCARD);
    }

    public final boolean d(int i2, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.f22080a;
        return i2 < list.size() - 1 || ((String) list.get(i2)).equals("**");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            KeyPath keyPath = (KeyPath) obj;
            if (!this.f22080a.equals(keyPath.f22080a)) {
                return false;
            }
            KeyPathElement keyPathElement = this.f22081b;
            KeyPathElement keyPathElement2 = keyPath.f22081b;
            if (keyPathElement != null) {
                return keyPathElement.equals(keyPathElement2);
            }
            if (keyPathElement2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f22080a.hashCode() * 31;
        KeyPathElement keyPathElement = this.f22081b;
        return iHashCode + (keyPathElement != null ? keyPathElement.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KeyPath{keys=");
        sb.append(this.f22080a);
        sb.append(",resolved=");
        return d21.q(sb, this.f22081b != null, '}');
    }

    public KeyPath(String... strArr) {
        this.f22080a = Arrays.asList(strArr);
    }
}
