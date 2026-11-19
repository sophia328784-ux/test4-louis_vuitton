package com.networkbench.agent.impl.plugin;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends h {
    private static com.networkbench.agent.impl.plugin.f.j r = new com.networkbench.agent.impl.plugin.f.j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f37936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f37937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f37938c;
    long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    JSONObject f37939e;

    public class a implements Runnable {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0027 A[DONT_GENERATE] */
        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean zA = v.a(r.u().J());
                b bVar = b.this;
                if (zA) {
                    if (!TextUtils.isEmpty(bVar.f38123h) && !ak.m(b.this.f38123h)) {
                        com.networkbench.agent.impl.plugin.g.a.b.a(b.this.f38123h, new com.networkbench.agent.impl.plugin.g.a.f(), new com.networkbench.agent.impl.plugin.g.a.b.a() { // from class: com.networkbench.agent.impl.plugin.b.a.1
                            @Override // com.networkbench.agent.impl.plugin.g.a.b.a
                            public void a(com.networkbench.agent.impl.plugin.g.a.b.C0108b c0108b) {
                                b bVar2 = b.this;
                                String str = c0108b.d;
                                bVar2.f37938c = str;
                                com.networkbench.agent.impl.plugin.g.a.a.c[] cVarArr = c0108b.f38103c;
                                if (cVarArr == null) {
                                    bVar2.f37938c = str;
                                    return;
                                }
                                for (com.networkbench.agent.impl.plugin.g.a.a.c cVar : cVarArr) {
                                    if (cVar.d == 1 && TextUtils.isEmpty(b.this.f37937b)) {
                                        b bVar3 = b.this;
                                        bVar3.f37937b = cVar.f38093c;
                                        bVar3.d = c0108b.f38102b;
                                    }
                                    if (cVar.d == 5) {
                                        b.this.f37936a = cVar.f38093c;
                                    }
                                }
                            }
                        });
                        h.f38121f.a("dns plugin dnsHostName:" + b.this.f38123h + "  cname:" + b.this.f37936a + ", ip:" + b.this.f37937b + ", dnsTime:" + b.this.d + ", errorDesc:" + b.this.f37938c);
                        b.this.l = true;
                    }
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                    }
                } else {
                    bVar.f37938c = "No network";
                    bVar.l = true;
                    com.networkbench.agent.impl.c.g.e(" DnsRunnable  error :  断网 返回....");
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                    }
                }
            } catch (Throwable th) {
                try {
                    boolean z = th instanceof InterruptedException;
                    b bVar2 = b.this;
                    if (z) {
                        bVar2.l = false;
                    } else {
                        bVar2.f37938c = th.getMessage();
                        b.this.l = true;
                        com.networkbench.agent.impl.c.g.p("DnsRunnable   has an error : " + th.getMessage());
                    }
                } finally {
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                        b.this.l = false;
                    }
                    b bVar3 = b.this;
                    bVar3.q.a(bVar3.f38124i.f36846a);
                }
            }
        }
    }

    public b(com.networkbench.agent.impl.plugin.f.i iVar, com.networkbench.agent.impl.data.c.d dVar) {
        super(HarvestableType.OBJECT, iVar, dVar);
        try {
            this.f37936a = "";
            this.f37937b = "";
            this.f37938c = "";
            this.f38125j = new f(dVar.d, (String) this.q.e().get(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT));
            a(iVar.e());
        } catch (Throwable unused) {
        }
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a(Map<String, Object> map) {
        try {
            JSONObject jSONObject = this.f38124i.d;
            this.f37939e = jSONObject;
            String strOptString = jSONObject.optString("host");
            this.f38123h = strOptString;
            if (strOptString.equals("$host")) {
                this.f38123h = (String) this.q.e().get(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT);
            }
        } catch (Throwable unused) {
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
        JsonObject jsonObject2 = new JsonObject();
        String str2 = this.f38123h;
        if (str2 == null) {
            str2 = "";
        }
        jsonObject2.add("host", new JsonPrimitive(str2));
        String str3 = this.f37937b;
        if (str3 == null) {
            str3 = "";
        }
        jsonObject2.add("ip", new JsonPrimitive(str3));
        String str4 = this.f37936a;
        if (str4 == null) {
            str4 = "";
        }
        jsonObject2.add("cname", new JsonPrimitive(str4));
        jsonObject2.add("tm", new JsonPrimitive((Number) Long.valueOf(this.d)));
        String str5 = this.f37938c;
        jsonObject2.add("err", new JsonPrimitive(str5 != null ? str5 : ""));
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.add("result", jsonObject2);
        return jsonObject3;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean b() {
        if (!this.o) {
            return true;
        }
        if (!r.a(System.currentTimeMillis())) {
            return false;
        }
        r.b(System.currentTimeMillis());
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a() {
        com.networkbench.agent.impl.util.c.c.a().a(new a());
    }
}
