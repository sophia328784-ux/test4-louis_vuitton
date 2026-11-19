package com.batch.android.g1;

import defpackage.n00;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f23415c;
    private EnumC0054c d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<com.batch.android.t.b> f23416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f23417f;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Integer f23420a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<a> f23421b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Integer f23422a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Integer f23423b;

            public a(Integer num, Integer num2) {
                this.f23422a = num;
                this.f23423b = num2;
            }

            public Integer a() {
                return this.f23423b;
            }

            public Integer b() {
                return this.f23422a;
            }
        }

        public b(Integer num, List<a> list) {
            this.f23420a = num;
            this.f23421b = list;
        }

        public Integer a() {
            return this.f23420a;
        }

        public List<a> b() {
            return this.f23421b;
        }
    }

    /* JADX INFO: renamed from: com.batch.android.g1.c$c, reason: collision with other inner class name */
    public enum EnumC0054c {
        MEP,
        CEP
    }

    public c(String str, EnumC0054c enumC0054c) {
        super(com.batch.android.f1.f.LOCAL_CAMPAIGNS, str);
        this.d = enumC0054c;
    }

    public void a(List<com.batch.android.t.b> list) {
        this.f23416e = list;
    }

    public List<com.batch.android.t.b> c() {
        List<com.batch.android.t.b> list = this.f23416e;
        return list != null ? list : new ArrayList();
    }

    public List<com.batch.android.t.b> d() {
        ArrayList arrayList = new ArrayList();
        List<com.batch.android.t.b> list = this.f23416e;
        if (list != null && !list.isEmpty()) {
            for (com.batch.android.t.b bVar : this.f23416e) {
                if (bVar.l) {
                    arrayList.add(bVar);
                }
            }
        }
        return arrayList;
    }

    public b e() {
        return this.f23417f;
    }

    public a f() {
        return this.f23415c;
    }

    public EnumC0054c g() {
        return this.d;
    }

    public boolean h() {
        List<com.batch.android.t.b> list = this.f23416e;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public boolean i() {
        return this.f23417f != null;
    }

    public boolean j() {
        return this.f23415c != null;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f23418a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f23419b;

        public int a() {
            return this.f23418a;
        }

        public String b() {
            return this.f23419b;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Error{code=");
            sb.append(this.f23418a);
            sb.append(", message='");
            return n00.r(this.f23419b, "'}", sb);
        }

        public void a(int i2) {
            this.f23418a = i2;
        }

        public void a(String str) {
            this.f23419b = str;
        }
    }

    public void a(a aVar) {
        this.f23415c = aVar;
    }

    public void a(EnumC0054c enumC0054c) {
        this.d = enumC0054c;
    }

    public void a(b bVar) {
        this.f23417f = bVar;
    }
}
