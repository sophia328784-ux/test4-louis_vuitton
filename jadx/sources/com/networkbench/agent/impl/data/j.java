package com.networkbench.agent.impl.data;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f36909a = 1024;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f36910b = 1024;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final j f36911c = new j();
    private final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f36912e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f36913f;
    private final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f36914h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f36915i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f36916j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f36917k;
    private final int l;
    private final int m;
    private final int n;
    private final ArrayList<b> o;
    private final ArrayList<a> p;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f36918a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36919b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f36920c;

        public String toString() {
            return "matchMode:" + this.f36918a + ", rule:" + this.f36919b + ", errorCode:" + this.f36920c;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f36921a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36922b;

        public String toString() {
            return "matchMode:" + this.f36921a + ", rule:" + this.f36922b;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String[] f36923a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String[] f36924b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String[] f36925c;
        public String[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String[] f36926e = new String[0];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String[] f36927f = new String[0];

        public String toString() {
            return j.b("getMethodParam:", this.f36923a) + j.b("postMethodParam:", this.f36924b) + j.b("headers:", this.f36925c) + j.b("reqBodys:", this.f36926e) + j.b("resBodys:", this.f36927f);
        }
    }

    private j() {
        this.d = null;
        this.f36912e = "";
        this.f36913f = 60L;
        this.g = 480L;
        this.f36914h = 600L;
        this.f36915i = 1000L;
        this.f36916j = 50;
        this.m = 1024;
        this.f36917k = true;
        this.l = 10;
        this.n = 0;
        this.o = null;
        this.p = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, String[] strArr) {
        StringBuilder sb = new StringBuilder();
        if (strArr != null && strArr.length > 0) {
            sb.append(str);
            for (String str2 : strArr) {
                sb.append(str2);
                sb.append(',');
            }
        }
        return sb.toString();
    }

    public long c() {
        return TimeUnit.MILLISECONDS.convert(this.f36913f, TimeUnit.SECONDS);
    }

    public long d() {
        return this.g;
    }

    public long e() {
        return TimeUnit.MILLISECONDS.convert(this.g, TimeUnit.SECONDS);
    }

    public long f() {
        return this.f36914h;
    }

    public String g() {
        return this.d;
    }

    public long h() {
        return this.f36915i;
    }

    public int i() {
        return this.f36916j;
    }

    public int j() {
        return this.m;
    }

    public boolean k() {
        return this.f36917k;
    }

    public int l() {
        return this.l;
    }

    public int m() {
        return this.n;
    }

    public ArrayList<b> n() {
        return this.o;
    }

    public ArrayList<a> o() {
        return this.p;
    }

    public String toString() {
        return this.d;
    }

    public String a() {
        return this.f36912e;
    }

    public long b() {
        return this.f36913f;
    }

    public j(String str, String str2, long j2, long j3, long j4, long j5, int i2, int i3, boolean z, int i4, int i5, ArrayList<b> arrayList, ArrayList<a> arrayList2) {
        this.d = str;
        this.f36912e = str2;
        this.f36913f = j2;
        this.g = j3;
        this.f36914h = j4;
        this.f36915i = j5;
        this.f36916j = i2;
        this.m = i3;
        this.f36917k = z;
        this.l = i4;
        this.n = i5;
        this.o = arrayList;
        this.p = arrayList2;
    }
}
