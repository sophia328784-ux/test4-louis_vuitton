package com.networkbench.agent.impl.webview.b;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class e extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38476c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f38477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38478f;
    private int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f38479h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f38480i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f38481j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f38482k;
    private int l;
    private int m;
    private int n;
    private int o;
    private String p;
    private String q;

    private e(a aVar) {
        if (aVar == null) {
            return;
        }
        this.f38475b = aVar.f38484b;
        this.f38476c = aVar.f38485c;
        this.p = aVar.p;
        this.q = aVar.q;
        this.f38474a = aVar.f38483a;
        this.d = aVar.d;
        this.f38477e = aVar.f38486e;
        this.f38478f = aVar.f38487f;
        this.g = aVar.g;
        this.f38479h = aVar.f38488h;
        this.f38480i = aVar.f38489i;
        this.f38481j = aVar.f38490j;
        this.f38482k = aVar.f38491k;
        this.l = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38474a)));
        jsonArray.add(new JsonPrimitive(this.f38475b));
        jsonArray.add(new JsonPrimitive(this.f38476c));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.d)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38477e)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38478f)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.g)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38479h)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38480i)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38481j)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38482k)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.l)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.m)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.n)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.o)));
        jsonArray.add(new JsonPrimitive(this.p));
        jsonArray.add(new JsonPrimitive(this.q));
        return jsonArray;
    }

    public String toString() {
        return "offsetTimestamp:" + this.f38474a + ", resourceType:" + this.f38475b + ", resourceUrl:" + this.f38476c + ", fetchStart:" + this.d + ", domainLookupStart:" + this.f38477e + ", domainLookupEnd:" + this.f38478f + ", connectStart:" + this.g + ", connectEnd:" + this.f38479h + ", secureConnectionStart:" + this.f38480i + ", requestStart:" + this.f38481j + ", responseStart:" + this.f38482k + ", responseEnd:" + this.l + ", transferSize:" + this.m + ", encodedBodySize:" + this.n + ", decodedBodySize:" + this.o + ", appData:" + this.p + ", cdnVendorName:" + this.q;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f38483a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f38484b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f38485c = "";
        private String q = "";
        private int d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f38486e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f38487f = 0;
        private int g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f38488h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f38489i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f38490j = 0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f38491k = 0;
        private int l = 0;
        private int m = 0;
        private int n = 0;
        private int o = 0;
        private String p = "";

        public a a(String str) {
            if (str == null) {
                str = "";
            }
            this.f38484b = str;
            return this;
        }

        public a b(String str) {
            if (str == null) {
                str = "";
            }
            this.f38485c = str;
            return this;
        }

        public a c(String str) {
            if (str == null) {
                str = "";
            }
            this.p = str;
            return this;
        }

        public a d(String str) {
            if (str == null) {
                str = "";
            }
            this.q = str;
            return this;
        }

        public a e(int i2) {
            this.g = i2;
            return this;
        }

        public a f(int i2) {
            this.f38488h = i2;
            return this;
        }

        public a g(int i2) {
            this.f38489i = i2;
            return this;
        }

        public a h(int i2) {
            this.f38490j = i2;
            return this;
        }

        public a i(int i2) {
            this.f38491k = i2;
            return this;
        }

        public a j(int i2) {
            this.l = i2;
            return this;
        }

        public a k(int i2) {
            this.m = i2;
            return this;
        }

        public a l(int i2) {
            this.n = i2;
            return this;
        }

        public a m(int i2) {
            this.o = i2;
            return this;
        }

        public a a(int i2) {
            this.f38483a = i2;
            return this;
        }

        public a c(int i2) {
            this.f38486e = i2;
            return this;
        }

        public a d(int i2) {
            this.f38487f = i2;
            return this;
        }

        public a b(int i2) {
            this.d = i2;
            return this;
        }

        public e a() {
            return new e(this);
        }
    }
}
