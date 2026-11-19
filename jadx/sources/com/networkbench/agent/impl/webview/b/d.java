package com.networkbench.agent.impl.webview.b;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class d extends HarvestableArray {
    private int A;
    private String B;
    private String C;
    private int D;
    private b E;
    private b F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38458c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f38459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38460f;
    private int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f38461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f38462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f38463j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f38464k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    private d(a aVar) {
        this.E = new b();
        this.F = new b();
        this.f38457b = aVar.f38466b;
        this.f38458c = aVar.f38467c;
        this.B = aVar.B;
        this.C = aVar.C;
        this.D = aVar.D;
        this.d = aVar.d;
        this.f38459e = aVar.f38468e;
        this.f38460f = aVar.f38469f;
        this.g = aVar.g;
        this.f38461h = aVar.f38470h;
        this.f38462i = aVar.f38471i;
        this.f38463j = aVar.f38472j;
        this.f38464k = aVar.f38473k;
        this.l = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
        this.p = aVar.p;
        this.q = aVar.q;
        this.r = aVar.r;
        this.s = aVar.s;
        this.t = aVar.t;
        this.u = aVar.u;
        this.v = aVar.v;
        this.w = aVar.w;
        this.x = aVar.x;
        this.y = aVar.y;
        this.z = aVar.z;
        this.A = aVar.A;
        this.f38456a = aVar.f38465a;
    }

    public String a() {
        return this.f38457b;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38456a)));
        jsonArray.add(new JsonPrimitive(this.f38457b));
        jsonArray.add(new JsonPrimitive(this.f38458c));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.d)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38459e)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38460f)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.g)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38461h)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38462i)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38463j)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38464k)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.l)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.m)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.n)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.o)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.p)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.q)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.r)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.s)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.t)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.u)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.v)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.w)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.x)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.y)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.z)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.A)));
        jsonArray.add(new JsonPrimitive(this.B));
        jsonArray.add(new JsonPrimitive(this.C));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.D)));
        jsonArray.add(this.E.asJsonArray());
        jsonArray.add(this.F.asJsonArray());
        return jsonArray;
    }

    public b b() {
        return this.E;
    }

    public b c() {
        return this.F;
    }

    public String toString() {
        return "startTimeInSec:" + this.f38456a + "url:" + this.f38457b + ", pvId:" + this.f38458c + ", redirectStart:" + this.d + ", redirectEnd:" + this.f38459e + ", fetchStart:" + this.f38460f + ", domainLookupStart:" + this.g + ", domainLookupEnd:" + this.f38461h + ", connectStart:" + this.f38462i + ", connectEnd:" + this.f38463j + ", secureConnectStart:" + this.f38464k + ", requestStart:" + this.l + ", responseStart:" + this.m + ", responseEnd:" + this.n + ", domLoading:" + this.o + ", domInteractive:" + this.p + ", domContentLoadedEventStart:" + this.q + ", domContentLoadedEventEnd:" + this.r + ", domComplete:" + this.s + ", loadEventStart:" + this.t + ", loadEventEnd:" + this.u + ", firstPaintTime:" + this.v + ", firstScreenTime:" + this.w + ", jsErrorCount:" + this.x + ", httpStatusCode:" + this.y + ", network_error_code:" + this.z + ", byteRecv:" + this.A + ", appData:" + this.B + ", slowIndicator:" + this.D + ", cdnVendorName:" + this.C + ", pageResourceDataArray:" + this.E.toString() + ", pageJsErrorsDataArray:" + this.F.toString();
    }

    public static class a {
        private int A;
        private int D;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f38465a;
        private int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f38468e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f38469f;
        private int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f38470h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f38471i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f38472j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f38473k;
        private int l;
        private int m;
        private int n;
        private int o;
        private int p;
        private int q;
        private int r;
        private int s;
        private int t;
        private int u;
        private int v;
        private int w;
        private int x;
        private int y;
        private int z;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f38466b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f38467c = "";
        private String B = "";
        private String C = "";

        public a a(String str) {
            if (str == null) {
                str = "";
            }
            this.f38466b = str;
            return this;
        }

        public a b(String str) {
            if (str == null) {
                str = "";
            }
            this.f38467c = str;
            return this;
        }

        public a c(String str) {
            if (str == null) {
                str = "";
            }
            this.B = str;
            return this;
        }

        public a d(String str) {
            if (str == null) {
                str = "";
            }
            this.C = str;
            return this;
        }

        public a t(int i2) {
            if (i2 == 0) {
                i2 = -1;
            }
            this.v = i2;
            return this;
        }

        public a u(int i2) {
            if (i2 == 0) {
                i2 = -1;
            }
            this.w = i2;
            return this;
        }

        public a e(int i2) {
            this.g = i2;
            return this;
        }

        public a f(int i2) {
            this.f38470h = i2;
            return this;
        }

        public a g(int i2) {
            this.f38471i = i2;
            return this;
        }

        public a h(int i2) {
            this.f38472j = i2;
            return this;
        }

        public a i(int i2) {
            this.f38473k = i2;
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

        public a n(int i2) {
            this.p = i2;
            return this;
        }

        public a o(int i2) {
            this.q = i2;
            return this;
        }

        public a p(int i2) {
            this.r = i2;
            return this;
        }

        public a q(int i2) {
            this.s = i2;
            return this;
        }

        public a r(int i2) {
            this.t = i2;
            return this;
        }

        public a s(int i2) {
            this.u = i2;
            return this;
        }

        public a v(int i2) {
            this.x = i2;
            return this;
        }

        public a w(int i2) {
            this.y = i2;
            return this;
        }

        public a x(int i2) {
            this.z = i2;
            return this;
        }

        public a y(int i2) {
            this.A = i2;
            return this;
        }

        public a z(int i2) {
            this.D = i2;
            return this;
        }

        public a a(int i2) {
            this.f38465a = i2;
            return this;
        }

        public a c(int i2) {
            this.f38468e = i2;
            return this;
        }

        public a d(int i2) {
            this.f38469f = i2;
            return this;
        }

        public a b(int i2) {
            this.d = i2;
            return this;
        }

        public d a() {
            return new d(this);
        }
    }
}
