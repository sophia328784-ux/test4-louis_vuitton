package com.google.android.datatransport;

import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public final class Encoding {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27792a;

    public Encoding(String str) {
        if (str != null) {
            this.f27792a = str;
        } else {
            r81.d("name is null");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Encoding)) {
            return false;
        }
        return this.f27792a.equals(((Encoding) obj).f27792a);
    }

    public final int hashCode() {
        return this.f27792a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return n00.r(this.f27792a, "\"}", new StringBuilder("Encoding{name=\""));
    }
}
