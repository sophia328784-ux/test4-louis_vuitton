package com.networkbench.agent.impl.crash.a;

import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.crash.NBSErrorEventType;
import com.networkbench.agent.impl.data.AnomalousData;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d extends HarvestableObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f36603a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static int f36604b = 1024;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static int f36605c = 100;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f36606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.networkbench.agent.impl.k.b f36607f;
    private Map g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36608h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private JsonArray f36609i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f36610j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private JsonArray f36611k;
    private int l;
    private long m;
    private String n;
    private String o;
    private String p;
    private long q;
    private int r;
    private JsonArray s;

    private d(String str, JsonArray jsonArray, String str2, int i2, int i3, int i4, String str3, Map map, JsonArray jsonArray2) {
        this.f36611k = new JsonArray();
        this.r = 2;
        this.s = new JsonArray();
        g.A("ErrorInfo");
        com.networkbench.agent.impl.k.b bVarP = ak.p();
        this.f36607f = bVarP;
        bVarP.f37421a = NBSBitmapBeansControl.getInstance().getSessionIdRefresh();
        this.f36608h = str;
        this.f36609i = jsonArray;
        this.f36610j = str2;
        this.q = System.currentTimeMillis();
        this.l = i2;
        this.r = i3;
        this.n = NBSAgent.getBuildId();
        this.o = ak.a(r.u().J(), false);
        c();
        this.d = i4;
        this.p = str3;
        this.g = map;
        this.s = jsonArray2;
        this.f36606e = System.currentTimeMillis();
    }

    public static JsonElement a(Map<String, Object> map) {
        return new Gson().toJsonTree(map);
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        if (this.m <= 0) {
            jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().f(this.q / 1000))));
        } else {
            jsonObject.add("timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().f(this.m))));
        }
        jsonObject.add("type", new JsonPrimitive((Number) Integer.valueOf(this.l)));
        jsonObject.add("platform", new JsonPrimitive((Number) Integer.valueOf(this.r)));
        jsonObject.add("msg", new JsonPrimitive(this.f36608h));
        jsonObject.add(m.C, this.f36609i);
        jsonObject.add("image", this.s);
        jsonObject.add("bid", new JsonPrimitive(this.n));
        jsonObject.add("obv", new JsonPrimitive(""));
        jsonObject.add("meta", new JsonPrimitive(this.f36610j));
        JsonArray jsonArray = this.f36611k;
        if (jsonArray == null) {
            jsonArray = new JsonArray();
        }
        jsonObject.add("trail", jsonArray);
        jsonObject.add("addit", new JsonPrimitive(this.o));
        jsonObject.add("sruuid", new JsonPrimitive(this.p));
        jsonObject.add(Payload.CUSTOM, new JsonPrimitive(new com.networkbench.agent.impl.data.a(r.u(), this.f36607f, this.f36606e).asJsonObject().toString()));
        return jsonObject;
    }

    public long b() {
        return this.q;
    }

    public void c() {
        this.f36611k = ak.c();
    }

    public String d() {
        return String.valueOf(this.d) + String.valueOf(this.q);
    }

    public JsonArray a() {
        return this.f36609i;
    }

    public static class a {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f36618i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f36619j;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f36613b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private JsonArray f36614c = new JsonArray();
        private String d = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f36615e = 0;
        private long g = Thread.currentThread().getId();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f36617h = Thread.currentThread().getName();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f36612a = ak.a().nextInt(10000);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private JsonArray f36616f = new JsonArray();

        private JsonObject c() {
            JsonObject jsonObject = new JsonObject();
            jsonObject.add("error", new JsonPrimitive(ConfigurationName.META_ERROR_DEFAULT_VALUE));
            return jsonObject;
        }

        public a a(AnomalousData anomalousData) {
            this.f36613b += "_" + anomalousData.type + anomalousData.getThrowable();
            this.g = anomalousData.getThreadId();
            this.f36617h = anomalousData.getThreadName();
            this.f36616f = anomalousData.getImageUuid();
            a(anomalousData.getAllStacktrace());
            a((Map<String, Object>) null);
            b(2);
            b();
            return this;
        }

        public a b() {
            this.f36619j = r.u().d(System.currentTimeMillis());
            com.networkbench.agent.impl.crash.g.a().a(NBSErrorEventType.customError, this.f36619j);
            return this;
        }

        public a b(int i2) {
            this.f36615e = i2;
            return this;
        }

        public a b(JsonArray jsonArray) {
            this.f36616f = jsonArray;
            return this;
        }

        public a a(JsonArray jsonArray) {
            this.f36614c = jsonArray;
            return this;
        }

        public a a(int i2) {
            this.f36618i = i2;
            return this;
        }

        public a a(String str, String str2) {
            if (str != null) {
                try {
                    JsonArray jsonArray = new JsonArray();
                    jsonArray.add(new JsonPrimitive((Number) 0));
                    if (str2 == null) {
                        str2 = "";
                    }
                    jsonArray.add(new JsonPrimitive(str2));
                    jsonArray.add(new JsonPrimitive(str));
                    this.f36614c.add(jsonArray);
                } catch (Throwable unused) {
                }
            }
            return this;
        }

        public a a(String str) {
            if (str == null) {
                return this;
            }
            int length = str.length();
            int i2 = d.f36604b;
            if (length > i2) {
                this.f36613b = str.substring(0, i2);
                return this;
            }
            this.f36613b = str;
            return this;
        }

        public a a(Map<String, Object> map) {
            if (map != null) {
                String string = d.a(map).toString();
                this.d = string;
                if (string.length() > ConfigurationName.MAX_METADATA_LENGTH) {
                    this.d = c().toString();
                }
            }
            return this;
        }

        public d a() {
            return new d(this.f36613b, this.f36614c, this.d, this.f36615e, this.f36618i, this.f36612a, this.f36619j, r.u().e(), this.f36616f);
        }

        public a a(Throwable th) {
            if (th != null) {
                try {
                    JsonArray jsonArray = new JsonArray();
                    jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.g)));
                    String str = this.f36617h;
                    if (str == null) {
                        str = "";
                    }
                    jsonArray.add(new JsonPrimitive(str));
                    jsonArray.add(new JsonPrimitive(ak.a(d.f36605c, th).toString()));
                    this.f36614c.add(jsonArray);
                } catch (Throwable unused) {
                }
            }
            return this;
        }
    }
}
