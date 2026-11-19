package com.networkbench.agent.impl.data;

import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.socket.r;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.s;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.o60;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f extends HarvestableArray {
    private static final com.networkbench.agent.impl.c.e t = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashMap<String, String> f36893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HashMap<String, String> f36894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    HashMap<String, JsonObject> f36895c;
    private final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f36896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36897f;
    private com.networkbench.agent.impl.k.b g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Map f36898h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f36899i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f36900j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f36901k;
    private final String l;
    private Map<String, Object> m;
    private final String n;
    private final String o;
    private String p;
    private String q;
    private Long r;
    private String s;
    private RequestMethodType u;
    private String v;
    private HttpLibType w;
    private int x;
    private String y;
    private String z;

    public f(com.networkbench.agent.impl.d.b.b bVar) {
        this(bVar.k(), bVar.g(), bVar.i(), bVar.q(), bVar.l(), bVar.m(), bVar.n(), bVar.o(), "", bVar.h(), bVar.r(), bVar.j(), bVar.f(), bVar.e(), bVar.f36711c, bVar.d, bVar.c());
        a(Long.valueOf(bVar.b()));
        c(bVar.d());
        a(bVar, s.a(bVar.k()));
        a(bVar.s());
    }

    private void a(com.networkbench.agent.impl.d.b.b bVar, String str) {
        if (bVar.l() == 901) {
            this.s = "";
            return;
        }
        String strC = ai.c(str);
        if (!TextUtils.isEmpty(strC)) {
            this.s = strC;
        }
        if (TextUtils.isEmpty(this.s) && bVar.j() == HttpLibType.OkHttp) {
            Map<String, String> map = r.f38219c;
            this.s = map.get(str) != null ? map.get(str) : "";
        }
    }

    private String t() {
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        ak.a(jsonObject2, this.m, this.f36893a);
        jsonObject.add("params", jsonObject2);
        jsonObject.add("requestParams", new JsonPrimitive(optional(this.n)));
        String strM = m();
        if (TextUtils.isEmpty(strM)) {
            jsonObject.add(Payload.RESPONSE, new JsonPrimitive(""));
        } else {
            jsonObject.add(Payload.RESPONSE, new JsonPrimitive(strM));
        }
        jsonObject.add("stacktrace", new JsonPrimitive(optional(this.f36901k)));
        jsonObject.add("message", new JsonPrimitive(this.l));
        return jsonObject.toString();
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(this.d));
        ak.a(jsonArray, this.o);
        if (this.u != null) {
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.u.ordinal())));
        } else {
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(RequestMethodType.GET.ordinal())));
        }
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.w.ordinal())));
        jsonArray.add(new JsonPrimitive(this.s));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36896e)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36899i)));
        jsonArray.add(new JsonPrimitive(t()));
        String str = this.v;
        if (str == null) {
            str = "";
        }
        jsonArray.add(new JsonPrimitive(str));
        if (com.networkbench.agent.impl.util.r.u().af()) {
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.x)));
        } else {
            jsonArray.add(new JsonPrimitive((Number) 0));
        }
        String str2 = this.y;
        if (str2 == null) {
            str2 = "";
        }
        jsonArray.add(new JsonPrimitive(str2));
        HashMap<String, JsonObject> map = this.f36895c;
        if (map != null) {
            jsonArray.add(ak.c((Map<String, JsonObject>) map));
        } else {
            jsonArray.add(new JsonObject());
        }
        jsonArray.add(new JsonPrimitive(""));
        jsonArray.add(new JsonPrimitive(new a(com.networkbench.agent.impl.util.r.u(), this.g, this.r.longValue()).asJsonObject().toString()));
        return jsonArray;
    }

    public int b() {
        return this.x;
    }

    public String c() {
        return this.y;
    }

    public String d() {
        return this.l;
    }

    public String e() {
        return this.f36901k;
    }

    public String f() {
        try {
            return new URL(this.d).getHost();
        } catch (Exception e2) {
            t.f("DownloadPlugin get hostName error: " + e2.getMessage());
            return "";
        }
    }

    public int g() {
        int port;
        try {
            port = new URL(this.d).getPort();
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("error getPortFromUrl: "), t);
            port = -1;
        }
        if (port == -1) {
            return this.d.startsWith("https://") ? 443 : 80;
        }
        return port;
    }

    public HashMap<String, JsonObject> h() {
        return this.f36895c;
    }

    public String i() {
        return this.s;
    }

    public String j() {
        return this.d;
    }

    public int k() {
        return this.f36896e;
    }

    public int l() {
        return this.f36899i;
    }

    public String m() {
        String str = this.f36900j;
        if (str == null) {
            return "";
        }
        int errRspSize = HarvestConfiguration.getDefaultHarvestConfiguration().getErrRspSize();
        if (this.f36900j.length() <= errRspSize) {
            return str;
        }
        t.f("HTTP Error response body is too large. Truncating to " + errRspSize + " bytes.");
        return str.substring(0, errRspSize);
    }

    public String n() {
        return this.q;
    }

    public void o() {
    }

    public String p() {
        return this.p;
    }

    public Long q() {
        return this.r;
    }

    public void r() {
        this.f36899i++;
    }

    public RequestMethodType s() {
        return this.u;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("url:" + this.d);
        sb.append(" url:" + this.d);
        sb.append(" remoteIP:" + this.s);
        sb.append(" httpStatusCode:" + this.f36896e);
        sb.append(" errorCount:" + this.f36899i);
        sb.append(" responseBody:" + this.f36900j);
        sb.append(" requestmethod:" + this.u.ordinal());
        sb.append(" stackTrace:" + this.f36901k);
        sb.append(" cdnVendorName:" + this.v);
        sb.append(" userActionId:" + this.y);
        return sb.toString();
    }

    public void b(String str) {
        this.p = str;
    }

    public void c(String str) {
        this.z = str;
    }

    public void a(Map map) {
        this.f36898h = map;
    }

    public void a(int i2) {
        this.x = i2;
    }

    private void a(com.networkbench.agent.impl.k.b bVar) {
        this.g = bVar;
    }

    public Map a() {
        return this.f36898h;
    }

    public void a(String str) {
        this.s = str;
    }

    public void a(Long l) {
        this.r = l;
    }

    public void a(RequestMethodType requestMethodType) {
        this.u = requestMethodType;
    }

    public void a(HttpLibType httpLibType) {
        this.w = httpLibType;
    }

    public f(String str, String str2, String str3, String str4, int i2, String str5, String str6, Map<String, Object> map, String str7, RequestMethodType requestMethodType, String str8, HttpLibType httpLibType, int i3, String str9, HashMap map2, HashMap map3, Map map4) {
        this.f36893a = new HashMap<>();
        this.f36894b = new HashMap<>();
        this.w = HttpLibType.URLConnection;
        this.f36895c = new HashMap<>();
        this.z = "";
        this.f36896e = i2;
        this.f36899i = 1;
        this.d = str;
        this.f36900j = str5;
        this.f36901k = str6;
        this.m = map;
        this.n = str3;
        this.o = str2;
        this.l = str7;
        this.u = requestMethodType;
        this.s = str4;
        this.v = str8;
        this.w = httpLibType;
        this.x = i3;
        this.y = str9;
        this.f36893a = map2;
        this.f36894b = map3;
        this.f36898h = map4;
        this.f36897f = System.currentTimeMillis();
        this.g = ak.p();
    }
}
