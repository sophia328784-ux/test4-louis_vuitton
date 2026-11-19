package com.batch.android.e;

import android.content.Context;
import com.linkplay.medialib.ContentTree;
import defpackage.r81;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final String f23063c = "Rkt2Qg==";
    protected static final String d = "QiExXW9PdC8=";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final String f23064e = "d2dIRA==";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final String f23065f = "amdmeA==";
    public static final boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f23066h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f23067i = "3.1.1";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f23068j = com.batch.android.a.e.d.intValue();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f23069k = com.batch.android.a.e.g.intValue();
    public static final String l = "com.batch.android";
    public static final String m = "https://batch.com/";
    public static final String n = "batch.plugin.version";
    public static final String o = "batch.bridge.version";
    private static final Map<String, String> p;
    public static final String q = "batch_parameter_";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f23070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, String> f23071b;

    static {
        HashMap map = new HashMap();
        p = map;
        map.put(z.f23199f, "5");
        map.put(z.f23198e, "5");
        map.put(z.o, "5");
        map.put(z.n, "5");
        map.put(z.p, ContentTree.ROOT_ID);
        map.put(z.x, "5");
        map.put(z.w, "5");
        map.put(z.O, "5");
        map.put(z.N, "5");
        map.put(z.X, "5");
        map.put(z.W, "5");
        map.put(z.u0, "5");
        map.put(z.v0, "5");
        map.put(z.w0, ContentTree.ROOT_ID);
        map.put(z.g0, "5");
        map.put(z.f0, "5");
        map.put(z.p0, "5");
        map.put(z.o0, "5");
        map.put(z.q0, ContentTree.ROOT_ID);
        map.put(z.r0, "1000");
        map.put(z.s0, "1000");
        map.put(z.H0, "5");
        map.put(z.I0, ContentTree.ROOT_ID);
        map.put(z.J0, ContentTree.ROOT_ID);
        map.put(z.K0, "5");
        map.put(z.Z0, "10000");
        map.put(z.a1, "120000");
        map.put(z.b1, "20");
        map.put(z.c1, "10000");
        map.put(z.N0, "10000");
        map.put(z.O0, "10000");
        map.put(z.M0, ContentTree.AUDIO_ID);
        map.put(z.R0, ContentTree.ROOT_ID);
        map.put(z.S0, "5");
        map.put(z.T0, "1000");
        map.put(z.U0, "^batch[A-Za-z0-9]{4,}://unlock/code/([^/\\?]+)");
    }

    public a0(Context context) {
        if (context == null) {
            r81.d("Null applicationContext");
            throw null;
        }
        this.f23070a = context.getApplicationContext();
        this.f23071b = new HashMap();
    }

    public String a(String str) {
        if (str == null) {
            r81.d("Null key");
            return null;
        }
        synchronized (this.f23071b) {
            try {
                String str2 = this.f23071b.get(str);
                if (str2 != null) {
                    return str2;
                }
                String strB = com.batch.android.n.l.a(this.f23070a).b(q.concat(str));
                return strB != null ? strB : p.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(String str, String str2, boolean z) {
        if (str == null) {
            r81.d("Null key");
            return;
        }
        if (str2 == null) {
            b(str);
            return;
        }
        synchronized (this.f23071b) {
            this.f23071b.put(str, str2);
        }
        if (z) {
            com.batch.android.n.l.a(this.f23070a).c(q.concat(str), str2);
        }
    }

    public void b(String str) {
        if (str != null) {
            synchronized (this.f23071b) {
                this.f23071b.remove(str);
            }
            com.batch.android.n.l.a(this.f23070a).d(q.concat(str));
            return;
        }
        r81.d("Null key");
    }

    public String a(String str, String str2) {
        String strA = a(str);
        return (strA == null || strA.length() == 0) ? str2 : strA;
    }

    public void a(String str, String str2, boolean z) {
        if (str == null) {
            r81.d("Null key");
            return;
        }
        if (str2 != null) {
            synchronized (this.f23071b) {
                this.f23071b.put(str, str2);
            }
            if (z) {
                com.batch.android.n.l.a(this.f23070a).c(q.concat(str), str2);
                return;
            }
            return;
        }
        r81.d("Null value");
    }

    public void a() {
        synchronized (this.f23071b) {
            this.f23071b.clear();
        }
        com.batch.android.n.l.a(this.f23070a).a();
    }
}
