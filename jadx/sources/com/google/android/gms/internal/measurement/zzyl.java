package com.google.android.gms.internal.measurement;

import defpackage.cj;
import defpackage.md;
import defpackage.n00;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class zzyl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f31090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f31091c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f31092e;

    public zzyl(String str, Class cls, boolean z, boolean z2) {
        char cCharAt = str.charAt(0);
        if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
            md.n("identifier must start with an ASCII letter: ".concat(str));
            throw null;
        }
        for (int i2 = 1; i2 < str.length(); i2++) {
            char cCharAt2 = str.charAt(i2);
            if ((cCharAt2 < 'a' || cCharAt2 > 'z') && ((cCharAt2 < 'A' || cCharAt2 > 'Z') && ((cCharAt2 < '0' || cCharAt2 > '9') && cCharAt2 != '_'))) {
                md.n("identifier must contain only ASCII letters, digits or underscore: ".concat(str));
                throw null;
            }
        }
        this.f31089a = str;
        this.f31090b = cls;
        this.f31091c = z;
        this.d = z2;
        int iIdentityHashCode = System.identityHashCode(this);
        long j2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            j2 |= 1 << (iIdentityHashCode & 63);
            iIdentityHashCode >>>= 6;
        }
        this.f31092e = j2;
    }

    public void a(Iterator it, zzzc zzzcVar) {
        while (it.hasNext()) {
            b(it.next(), zzzcVar);
        }
    }

    public void b(Object obj, zzzc zzzcVar) {
        zzzcVar.a(obj, this.f31089a);
    }

    public final String toString() {
        String name = getClass().getName();
        String name2 = this.f31090b.getName();
        int length = name.length();
        int length2 = name2.length();
        String str = this.f31089a;
        StringBuilder sb = new StringBuilder(str.length() + length + 1 + 1 + length2 + 1);
        cj.C(sb, name, "/", str, "[");
        return n00.r(name2, "]", sb);
    }
}
