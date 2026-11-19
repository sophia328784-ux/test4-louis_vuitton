package com.batch.android.l1;

import android.content.Context;
import com.batch.android.e.c0;
import com.batch.android.e.t;
import com.batch.android.l1.c;
import com.batch.android.l1.f;
import com.batch.android.n.f0;
import com.batch.android.n.z;
import com.batch.android.v0.l;
import defpackage.d21;
import defpackage.i81;
import defpackage.j81;
import defpackage.k81;
import java.net.URI;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static final String TAG = "InstallDataEditor";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f23661e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f23662f = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f23663a = new j();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean[] f23664b = {false, false};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f23665c = {null, null};
    private final l d = f0.a();

    private void a() throws l.b {
        boolean[] zArr = this.f23664b;
        if (zArr[0] || zArr[1]) {
            Context contextC = z.a().c();
            if (contextC == null) {
                throw new l.b("Error while applying. Make sure Batch is started beforehand, and not globally opted out from.", "'context' was null while saving.");
            }
            String[] strArr = {this.d.c(contextC), this.d.d(contextC)};
            if (this.f23664b[0]) {
                this.d.b(contextC, this.f23665c[0]);
            }
            if (this.f23664b[1]) {
                this.d.c(contextC, this.f23665c[1]);
            }
            if (Arrays.equals(this.f23665c, strArr)) {
                return;
            }
            this.d.f(contextC);
        }
    }

    public b b(String str, String str2) {
        try {
            try {
                this.f23663a.b(new j81(com.batch.android.c1.a.h(str), com.batch.android.c1.a.i(str2), 1));
                return this;
            } catch (com.batch.android.c1.a.b unused) {
                t.a(TAG, d21.l("Invalid tag. Please make sure that the tag is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can't be longer than 255 characters. Ignoring tag '", str, "' for collection '", str2, "'."));
                return this;
            }
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public c0<Void> c() {
        c0<Void> c0Var = new c0<>();
        try {
            a();
        } catch (l.b unused) {
            t.a(TAG, "Failed saving custom user operation for install compatibility.");
        }
        a(b(), c0Var);
        return c0Var;
    }

    public b removeAttribute(String str) {
        try {
            this.f23663a.b(new k81(com.batch.android.c1.a.h(str), 1));
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public void save() {
        try {
            a();
        } catch (l.b unused) {
            t.a(TAG, "Failed saving custom user operation for install compatibility.");
        }
        f0.a().a(500L, new j(b()));
    }

    public b setAttribute(String str, URI uri) {
        try {
            com.batch.android.c1.a.a((Object) uri);
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.b(uri)) {
                t.a(TAG, "URL attributes can't be null or longer than 2048 characters. Ignoring attribute '" + str + "'");
                return this;
            }
            if (!com.batch.android.c1.a.a(uri)) {
                this.f23663a.b(new i81(strH, 1, uri));
                return this;
            }
            t.a(TAG, "URL attributes must follow the format 'scheme://[authority][path][?query][#fragment]'. Ignoring attribute '" + str + "'");
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public b setLanguage(String str) {
        if (com.batch.android.c1.a.d(str)) {
            t.a(TAG, "setLanguage called with invalid language (must be at least 2 chars)");
            return this;
        }
        this.f23665c[0] = str;
        this.f23664b[0] = true;
        return this;
    }

    public b setRegion(String str) {
        if (com.batch.android.c1.a.f(str)) {
            t.a(TAG, "setRegion called with invalid region (must be at least 2 chars)");
            return this;
        }
        this.f23665c[1] = str;
        this.f23664b[1] = true;
        return this;
    }

    private List<i> b() {
        return this.f23663a.a();
    }

    public b setAttribute(String str, final double d) {
        try {
            final String strH = com.batch.android.c1.a.h(str);
            this.f23663a.b(new i() { // from class: l81
                @Override // com.batch.android.l1.i
                public final void a(c cVar) throws f {
                    cVar.a(strH, d);
                }
            });
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public b setAttribute(String str, final boolean z) {
        try {
            final String strH = com.batch.android.c1.a.h(str);
            this.f23663a.b(new i() { // from class: m81
                @Override // com.batch.android.l1.i
                public final void a(c cVar) throws f {
                    cVar.a(strH, z);
                }
            });
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public b setAttribute(String str, Date date) {
        try {
            com.batch.android.c1.a.a(date);
            String strH = com.batch.android.c1.a.h(str);
            Date date2 = (Date) date.clone();
            synchronized (this.f23663a) {
                this.f23663a.b(new i81(strH, 0, date2));
            }
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public b setAttribute(String str, String str2) {
        try {
            com.batch.android.c1.a.a((Object) str2);
            String strH = com.batch.android.c1.a.h(str);
            if (com.batch.android.c1.a.g(str2)) {
                t.a(TAG, "String attributes can't be null or longer than 64 characters. Ignoring attribute '" + str + "'");
                return this;
            }
            this.f23663a.b(new j81(strH, str2, 0));
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public b a(String str, String str2) {
        try {
            try {
                this.f23663a.b(new j81(com.batch.android.c1.a.h(str), com.batch.android.c1.a.i(str2), 2));
                return this;
            } catch (com.batch.android.c1.a.b unused) {
                t.a(TAG, d21.l("Invalid tag. Please make sure that the tag is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can't be longer than 255 characters. Ignoring tag '", str, "' for collection '", str2, "'."));
                return this;
            }
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public b setAttribute(String str, final long j2) {
        try {
            final String strH = com.batch.android.c1.a.h(str);
            this.f23663a.b(new i() { // from class: f81
                @Override // com.batch.android.l1.i
                public final void a(c cVar) throws f {
                    cVar.a(strH, j2);
                }
            });
            return this;
        } catch (com.batch.android.c1.a.b e2) {
            e2.a(TAG, str);
            return this;
        }
    }

    public b a(String str) {
        try {
            this.f23663a.b(new k81(com.batch.android.c1.a.h(str), 0));
            return this;
        } catch (com.batch.android.c1.a.b unused) {
            t.a(TAG, "Invalid tag collection. Ignoring tag collection clear request '" + str + "' .");
            return this;
        }
    }

    private static /* synthetic */ void a(List list, c0 c0Var) {
        try {
            l.c((List<i>) list);
            c0Var.a((Object) null);
        } catch (l.b e2) {
            t.a(TAG, e2.getMessage());
            c0Var.a((Exception) e2);
        }
    }
}
