package com.networkbench.agent.impl.plugin.e;

import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.c.d;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.agent.impl.plugin.f;
import com.networkbench.agent.impl.plugin.f.i;
import com.networkbench.agent.impl.plugin.f.j;
import com.networkbench.agent.impl.plugin.h;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import java.io.IOException;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.Map;
import net.rtccloud.sdk.Call;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f38040e = 3;
    private static j u = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    JSONObject f38041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f38042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f38043c;
    private String d;
    private int r;
    private String s;
    private String t;

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0039 A[DONT_GENERATE] */
        @Override // java.lang.Runnable
        public void run() {
            try {
                g.o("PingRunnable run ...");
                boolean zA = v.a(r.u().J());
                c cVar = c.this;
                if (zA) {
                    InetAddress.getByName(cVar.f38123h);
                    h.f38121f.a("PingPlugin begin run");
                    c cVar2 = c.this;
                    cVar2.s = cVar2.a(r.u().J());
                    h.f38121f.a("dnsServer:" + c.this.s);
                    String str = c.this.f38123h;
                    if (str == null || str.equals("")) {
                        c.this.l = false;
                    } else {
                        HashMap map = new HashMap();
                        map.put("-c", c.this.f38042b + "");
                        map.put("-s", c.this.r + "");
                        b bVar = c.this.f38043c;
                        c cVar3 = c.this;
                        bVar.a(cVar3.f38123h, map, cVar3.f38042b);
                        c cVar4 = c.this;
                        cVar4.t = cVar4.f38043c.a();
                        c cVar5 = c.this;
                        cVar5.d = cVar5.f38043c.b();
                        h.f38121f.a("PingPlugin getErrorData:" + c.this.t);
                        c.this.l = true;
                    }
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                    }
                } else {
                    cVar.t = "No network";
                    c.this.l = true;
                    g.e(" PingRunnable  error :  断网 返回....");
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                    }
                }
            } catch (Throwable th) {
                try {
                    if (th instanceof InterruptedException) {
                        c.this.l = false;
                    }
                    if (th instanceof IOException) {
                        c.this.t = th.getMessage();
                        c.this.l = true;
                        h.f38121f.e("pingPlugin errorDesc: " + c.this.t + ", isEndSuccess:" + c.this.l);
                    }
                    h.f38121f.e("PingPlugin error: " + th);
                } finally {
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                        c.this.l = false;
                        h.f38121f.e("pingPlugin NBSThreadExecutor.isExecutorServiceStop()");
                    }
                    g.o("ping sceneSubject onResponse");
                    ((h) c.this).q.a(c.this.f38124i.f36846a);
                }
            }
        }
    }

    public c(i iVar, d dVar) {
        super(HarvestableType.OBJECT, iVar, dVar);
        g.e("PingPlugin 注册ping监听 :");
        this.f38043c = new b();
        this.s = "";
        this.d = "";
        this.r = 56;
        this.f38042b = 3;
        this.f38125j = new f(dVar.d, (String) this.q.e().get(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT));
        a(iVar.e());
    }

    private JsonArray n() {
        try {
            b bVar = this.f38043c;
            if (bVar != null) {
                return bVar.g();
            }
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("error getPingData:"), h.f38121f);
        }
        return new JsonArray();
    }

    private int o() {
        try {
            b bVar = this.f38043c;
            if (bVar != null) {
                return bVar.d();
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private int p() {
        try {
            b bVar = this.f38043c;
            if (bVar != null) {
                return bVar.c();
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private float q() {
        try {
            b bVar = this.f38043c;
            return bVar != null ? Float.valueOf(bVar.j()).floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        } catch (Throwable unused) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    private float r() {
        try {
            b bVar = this.f38043c;
            return bVar != null ? Float.valueOf(bVar.l()).floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        } catch (Throwable unused) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    private float s() {
        try {
            b bVar = this.f38043c;
            return bVar != null ? Float.valueOf(bVar.k()).floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        } catch (Throwable unused) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    private double t() {
        try {
            b bVar = this.f38043c;
            if (bVar == null) {
                return 0.0d;
            }
            String strM = bVar.m();
            if (strM == null || strM.equals("")) {
                strM = ContentTree.ROOT_ID;
            }
            return Math.round(Double.valueOf(strM).doubleValue() * 1000.0d) / 1000.0d;
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    private float u() {
        try {
            b bVar = this.f38043c;
            return bVar != null ? bVar.h() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        } catch (Throwable unused) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a(Map<String, Object> map) {
        h.f38121f.a("action.argumentsJson" + this.f38124i.d);
        JSONObject jSONObject = this.f38124i.d;
        if (jSONObject == null) {
            return;
        }
        try {
            this.f38041a = jSONObject;
            this.f38123h = jSONObject.optString("host", "");
        } catch (Throwable unused) {
            this.f38123h = "";
        }
        try {
            int iOptInt = this.f38041a.optInt(com.batch.android.s.b.a.f24018f, 3);
            this.f38042b = iOptInt;
            if (iOptInt > 100) {
                this.f38042b = 100;
            }
            if (this.f38042b <= 0) {
                this.f38042b = 3;
            }
        } catch (Throwable unused2) {
            this.f38042b = 3;
        }
        try {
            int iOptInt2 = this.f38041a.optInt(ConfigurationName.PING_PAYLOAD, 56);
            this.r = iOptInt2;
            if (iOptInt2 < 16) {
                this.r = 56;
            }
            if (this.r > 65507) {
                this.r = 65507;
            }
        } catch (Throwable unused3) {
            this.r = 56;
        }
        try {
            this.p = this.f38041a.optInt("execFrequency", 60);
        } catch (Throwable unused4) {
            this.p = 60;
        }
        if (this.f38123h.equals("$host")) {
            this.f38123h = (String) map.get(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT);
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        String str = this.f38123h;
        if (str == null) {
            str = "";
        }
        jsonObject.add("host", new JsonPrimitive(str));
        String str2 = this.d;
        if (str2 == null) {
            str2 = "";
        }
        jsonObject.add("ip", new JsonPrimitive(str2));
        String str3 = this.s;
        jsonObject.add("dnsserver", new JsonPrimitive(str3 != null ? str3 : ""));
        jsonObject.add("successCount", new JsonPrimitive((Number) Integer.valueOf(o())));
        jsonObject.add("failCount", new JsonPrimitive((Number) Integer.valueOf(p() - o())));
        jsonObject.add("sumTm", new JsonPrimitive((Number) Float.valueOf(u())));
        jsonObject.add("min", new JsonPrimitive((Number) Float.valueOf(s())));
        jsonObject.add("avg", new JsonPrimitive((Number) Float.valueOf(q())));
        jsonObject.add("max", new JsonPrimitive((Number) Float.valueOf(r())));
        jsonObject.add("stddev", new JsonPrimitive((Number) Double.valueOf(t())));
        jsonObject.add("error", new JsonPrimitive(a(this.t)));
        jsonObject.add(DbParams.KEY_DATA, n());
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("result", jsonObject);
        return jsonObject2;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean b() {
        if (!this.o) {
            return true;
        }
        if (!u.a(System.currentTimeMillis())) {
            return false;
        }
        u.b(System.currentTimeMillis());
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a() {
        com.networkbench.agent.impl.util.c.c.a().a(new a());
    }

    public static String a(String str) {
        if (str != null) {
            if (!str.toLowerCase().contains("unknown host") && !str.toLowerCase().contains("unable to resolve host")) {
                if (str.toLowerCase().contains("is unreachable")) {
                    return "timeout";
                }
                str.equals("No network");
                return str;
            }
            return "fail to resolve address";
        }
        return "";
    }
}
