package com.google.firebase.components;

import defpackage.md;
import defpackage.n00;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
public final class Dependency {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Qualified f34403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34405c;

    public Dependency(Qualified qualified, int i2, int i3) {
        Preconditions.a(qualified, "Null dependency anInterface.");
        this.f34403a = qualified;
        this.f34404b = i2;
        this.f34405c = i3;
    }

    public static Dependency a(Qualified qualified) {
        return new Dependency(qualified, 1, 0);
    }

    public static Dependency b(Class cls) {
        return new Dependency(1, 0, cls);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Dependency)) {
            return false;
        }
        Dependency dependency = (Dependency) obj;
        return this.f34403a.equals(dependency.f34403a) && this.f34404b == dependency.f34404b && this.f34405c == dependency.f34405c;
    }

    public final int hashCode() {
        return this.f34405c ^ ((((this.f34403a.hashCode() ^ 1000003) * 1000003) ^ this.f34404b) * 1000003);
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f34403a);
        sb.append(", type=");
        int i2 = this.f34404b;
        if (i2 == 1) {
            str = "required";
        } else {
            str = i2 == 0 ? "optional" : "set";
        }
        sb.append(str);
        sb.append(", injection=");
        int i3 = this.f34405c;
        if (i3 == 0) {
            str2 = "direct";
        } else if (i3 == 1) {
            str2 = "provider";
        } else {
            if (i3 != 2) {
                md.h(pq0.k(i3, "Unsupported injection: "));
                return null;
            }
            str2 = "deferred";
        }
        return n00.r(str2, "}", sb);
    }

    public Dependency(int i2, int i3, Class cls) {
        this(Qualified.a(cls), i2, i3);
    }
}
