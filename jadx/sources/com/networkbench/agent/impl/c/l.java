package com.networkbench.agent.impl.c;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f36573a = 4000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f36574b = 5;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char f36575c = 9484;
    private static final char d = 9492;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final char f36576e = 9500;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final char f36577f = 9474;
    private static final String g = "────────────────────────────────────────────────────────";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f36578h = "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f36579i = "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f36580j = "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f36581k = "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    private final int l;
    private final int m;
    private final boolean n;
    private final b o;
    private final String p;

    private l(a aVar) {
        c.b(aVar);
        this.l = aVar.f36582a;
        this.m = aVar.f36583b;
        this.n = aVar.f36584c;
        this.o = aVar.d;
        this.p = aVar.f36585e;
    }

    private void a(int i2, String str, int i3) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (this.n) {
            c(i2, str, "│ Thread: " + Thread.currentThread().getName());
            c(i2, str);
        }
        int iA = a(stackTrace) + this.m;
        if (i3 + iA > stackTrace.length) {
            i3 = (stackTrace.length - iA) - 1;
        }
        String str2 = "";
        while (i3 > 0) {
            int i4 = i3 + iA;
            if (i4 < stackTrace.length) {
                str2 = str2 + "   ";
                c(i2, str, "│ " + str2 + a(stackTrace[i4].getClassName()) + FileUtils.HIDDEN_PREFIX + stackTrace[i4].getMethodName() + "  (" + stackTrace[i4].getFileName() + ":" + stackTrace[i4].getLineNumber() + ")");
            }
            i3--;
        }
    }

    private void b(int i2, String str, String str2) {
        c.b(str2);
        for (String str3 : str2.split(System.getProperty("line.separator"))) {
            c(i2, str, tr.g("│ ", str3));
        }
    }

    private void c(int i2, String str, String str2) {
        c.b(str2);
        this.o.a(i2, str, str2);
    }

    private void c(int i2, String str) {
        c(i2, str, f36581k);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f36582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f36583b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f36584c;
        b d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f36585e;

        private a() {
            this.f36582a = 2;
            this.f36583b = 0;
            this.f36584c = false;
            this.f36585e = "NBSAgent";
        }

        public l a() {
            if (this.d == null) {
                this.d = new b();
            }
            return new l(this);
        }

        public a b(int i2) {
            this.f36583b = i2;
            return this;
        }

        public a a(boolean z) {
            this.f36584c = z;
            return this;
        }

        public a a(b bVar) {
            this.d = bVar;
            return this;
        }

        public a a(String str) {
            this.f36585e = str;
            return this;
        }

        public a a(int i2) {
            this.f36582a = i2;
            return this;
        }
    }

    private void b(int i2, String str) {
        c(i2, str, f36580j);
    }

    private String b(String str) {
        if (!c.a((CharSequence) str) && !c.a(this.p, str)) {
            return d21.p(new StringBuilder(), this.p, "-", str);
        }
        return this.p;
    }

    public void a(int i2, String str, String str2) {
        c.b(str2);
        String strB = b(str);
        a(i2, strB);
        a(i2, strB, this.l);
        byte[] bytes = str2.getBytes();
        int length = bytes.length;
        int i3 = this.l;
        if (length <= f36573a) {
            if (i3 > 0) {
                c(i2, strB);
            }
            b(i2, strB, str2);
            b(i2, strB);
            return;
        }
        if (i3 > 0) {
            c(i2, strB);
        }
        for (int i4 = 0; i4 < length; i4 += f36573a) {
            b(i2, strB, new String(bytes, i4, Math.min(length - i4, f36573a)));
        }
        b(i2, strB);
    }

    private void a(int i2, String str) {
        c(i2, str, f36579i);
    }

    public static a a() {
        return new a();
    }

    private String a(String str) {
        c.b(str);
        return str.substring(str.lastIndexOf(FileUtils.HIDDEN_PREFIX) + 1);
    }

    private int a(StackTraceElement[] stackTraceElementArr) {
        c.b(stackTraceElementArr);
        for (int i2 = 5; i2 < stackTraceElementArr.length; i2++) {
            String className = stackTraceElementArr[i2].getClassName();
            if (!className.equals(i.class.getName()) && !className.equals(h.class.getName())) {
                return i2 - 1;
            }
        }
        return -1;
    }
}
