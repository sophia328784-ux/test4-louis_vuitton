package com.networkbench.agent.impl.plugin.g;

import android.text.TextUtils;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.c.d;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.agent.impl.plugin.f.i;
import com.networkbench.agent.impl.plugin.f.j;
import com.networkbench.agent.impl.plugin.g.a.b;
import com.networkbench.agent.impl.plugin.g.a.e;
import com.networkbench.agent.impl.plugin.g.a.f;
import com.networkbench.agent.impl.plugin.h;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.c.c;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.d21;
import defpackage.z81;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f38070e = 1;
    private static final String r = "80";
    private static j y = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    JSONObject f38071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f38072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38073c;
    private String d;
    private int s;
    private int t;
    private int u;
    private float v;
    private String w;
    private String x;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.plugin.g.a$a, reason: collision with other inner class name */
    public class RunnableC0107a implements Runnable {
        public RunnableC0107a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean zA = v.a(r.u().J());
                a aVar = a.this;
                if (!zA) {
                    aVar.w = "No network";
                    a.this.l = true;
                    g.e(" TcpPingRunnable  error :  断网 返回....");
                    if (c.c()) {
                        a.this.l = false;
                    }
                    ((h) a.this).q.a(a.this.f38124i.f36846a);
                    return;
                }
                if (!TextUtils.isEmpty(aVar.f38123h)) {
                    InetAddress.getByName(a.this.f38123h);
                    a aVar2 = a.this;
                    aVar2.x = aVar2.a(r.u().J());
                    h.f38121f.a("tcpping dnsServer:" + a.this.x);
                    a aVar3 = a.this;
                    e.a(aVar3.f38123h, aVar3.s, a.this.f38072b, new f(), new e.a() { // from class: com.networkbench.agent.impl.plugin.g.a.a.1
                        @Override // com.networkbench.agent.impl.plugin.g.a.e.a
                        public void a(e.b bVar) {
                            if (bVar == null) {
                                a.this.l = false;
                                return;
                            }
                            h.f38121f.a("tcpping complete result:" + bVar.toString());
                            a.this.f38073c = bVar.f38114b;
                            a.this.t = bVar.g - bVar.f38118h;
                            a.this.u = bVar.f38118h;
                            a.this.v = bVar.f38116e;
                            a.this.w = bVar.f38119i;
                        }
                    });
                    boolean zM = ak.m(a.this.f38123h);
                    a aVar4 = a.this;
                    if (zM) {
                        aVar4.d = "";
                    } else {
                        try {
                            b.a(aVar4.f38123h, new f(), new b.a() { // from class: com.networkbench.agent.impl.plugin.g.a.a.2
                                @Override // com.networkbench.agent.impl.plugin.g.a.b.a
                                public void a(b.C0108b c0108b) {
                                    com.networkbench.agent.impl.plugin.g.a.a.c[] cVarArr;
                                    if (c0108b == null || (cVarArr = c0108b.f38103c) == null) {
                                        a.this.l = false;
                                        return;
                                    }
                                    for (com.networkbench.agent.impl.plugin.g.a.a.c cVar : cVarArr) {
                                        if (cVar.d == 5) {
                                            a.this.d = cVar.f38093c;
                                        }
                                    }
                                }
                            });
                        } catch (Throwable unused) {
                            a.this.d = "";
                        }
                    }
                    a.this.l = true;
                }
                if (c.c()) {
                }
            } catch (Throwable th) {
                try {
                    if (th instanceof InterruptedException) {
                        a.this.l = false;
                    }
                    if (th instanceof IOException) {
                        a.this.w = th.getMessage();
                        a.this.l = true;
                        h.f38121f.e("tpPlugin errorDesc: " + a.this.w + ", isEndSuccess:" + a.this.l);
                    }
                    h.f38121f.a("PingRunnable error: ", th);
                } finally {
                    if (c.c()) {
                        a.this.l = false;
                    }
                    ((h) a.this).q.a(a.this.f38124i.f36846a);
                }
            }
        }
    }

    public a(i iVar, d dVar) {
        super(HarvestableType.OBJECT, iVar, dVar);
        this.s = 80;
        this.w = "";
        this.f38125j = new com.networkbench.agent.impl.plugin.f(dVar.d, (String) this.q.e().get(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT));
        a(iVar.e());
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a(Map<String, Object> map) {
        JSONObject jSONObject = this.f38124i.d;
        if (jSONObject == null) {
            return;
        }
        try {
            this.f38071a = jSONObject;
            this.f38123h = jSONObject.optString("host", "");
        } catch (Throwable unused) {
            this.f38123h = "";
        }
        try {
            this.p = this.f38071a.optInt("execFrequency", 60);
        } catch (Throwable unused2) {
            this.p = 60;
        }
        try {
            this.f38072b = this.f38071a.optInt(ConfigurationName.TCP_PING_REPEAT, 1);
        } catch (Throwable unused3) {
            this.f38072b = 1;
        }
        if (this.f38123h.equals("$host")) {
            this.f38123h = (String) map.get(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT);
        }
        if (!this.f38071a.optString(ConfigurationName.PORT).equals("$port")) {
            try {
                this.s = Integer.parseInt(this.f38071a.optString(ConfigurationName.PORT, r));
            } catch (Throwable unused4) {
                this.s = 80;
            }
        } else {
            Object obj = map.get(ConfigurationName.PORT);
            if (obj != null) {
                this.s = ((Integer) obj).intValue();
            }
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        try {
            JsonObject jsonObject2 = new JsonObject();
            String str = this.f38123h;
            String str2 = "";
            if (str == null) {
                str = "";
            }
            jsonObject2.add("host", new JsonPrimitive(str));
            jsonObject2.add(ConfigurationName.PORT, new JsonPrimitive(String.valueOf(this.s)));
            String str3 = this.f38073c;
            if (str3 == null) {
                str3 = "";
            }
            jsonObject2.add("ip", new JsonPrimitive(str3));
            String str4 = this.x;
            if (str4 == null) {
                str4 = "";
            }
            jsonObject2.add("dnsserver", new JsonPrimitive(str4));
            String str5 = this.d;
            if (str5 != null) {
                str2 = str5;
            }
            jsonObject2.add("cname", new JsonPrimitive(str2));
            jsonObject2.add("successCount", new JsonPrimitive((Number) Integer.valueOf(this.t)));
            jsonObject2.add("failCount", new JsonPrimitive((Number) Integer.valueOf(this.u)));
            jsonObject2.add("sumTm", new JsonPrimitive((Number) Float.valueOf(this.v)));
            jsonObject2.add("error", new JsonPrimitive(a(this.w)));
            jsonObject.add("result", jsonObject2);
            return jsonObject;
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("tcpPlugin asJsonObject error:"), h.f38121f);
            return jsonObject;
        }
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean b() {
        if (!this.o) {
            return true;
        }
        if (!y.a(System.currentTimeMillis())) {
            return false;
        }
        y.b(System.currentTimeMillis());
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a() {
        c.a().a(new RunnableC0107a());
    }

    public static String a(String str) {
        z81.j("getErrrData raw errorDesc:", str, h.f38121f);
        if (str != null) {
            if (!str.toLowerCase().contains("unknown host") && !str.toLowerCase().contains("unable to resolve host")) {
                if (!str.toLowerCase().contains("is unreachable") && !str.toLowerCase().contains("failed to connect to")) {
                    if (str.equals("No network")) {
                        return str;
                    }
                    if (!str.equals("")) {
                    }
                }
                return "timeout";
            }
            return "fail to resolve address";
        }
        return "";
    }
}
