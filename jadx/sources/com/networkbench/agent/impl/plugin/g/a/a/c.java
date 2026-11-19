package com.networkbench.agent.impl.plugin.g.a.a;

import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f38091a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f38092b = 5;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f38093c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f38094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f38095f;

    public c(String str, int i2, int i3, long j2) {
        this.f38093c = str;
        this.d = i2;
        this.f38094e = i3;
        this.f38095f = j2;
    }

    public boolean a() {
        return this.d == 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof c)) {
            c cVar = (c) obj;
            if (this.f38093c.equals(cVar.f38093c) && this.d == cVar.d && this.f38094e == cVar.f38094e && this.f38095f == cVar.f38095f) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        String str;
        int i2 = this.d;
        if (i2 == 1) {
            str = "A";
        } else if (i2 == 5) {
            str = "CNAME";
        } else {
            str = "type-" + this.d;
        }
        Locale locale = Locale.ENGLISH;
        return str + "\t" + this.f38093c + "\t" + this.f38094e;
    }
}
