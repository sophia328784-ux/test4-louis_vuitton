package com.networkbench.agent.impl.plugin.d;

import android.text.TextUtils;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.agent.impl.plugin.f.i;
import com.networkbench.agent.impl.plugin.f.j;
import com.networkbench.agent.impl.plugin.h;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.z81;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends h {
    private static final int d = 30;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    JSONObject f38000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    c f38001c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f38002e;
    private String r;
    private String s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static com.networkbench.agent.impl.c.e f37999a = f.a();
    private static j t = new j();

    public class a extends Thread {
        public a() {
        }

        /* JADX WARN: Code duplicated, block: B:35:0x0037 A[ExcSplitCross -> B:10:0x0037, PHI: r1
          0x0037: PHI (r1v8 java.lang.String) = (r1v10 java.lang.String), (r1v11 java.lang.String) binds: [B:18:0x00a5, B:8:0x002c] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:9:0x002e  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String str = "MTRPlugin error: ";
            try {
                try {
                    boolean zA = v.a(r.u().J());
                    b bVar = b.this;
                    if (zA) {
                        InetAddress.getByName(bVar.f38123h);
                        b.f37999a.a("MTRPlugin begin run");
                        b bVar2 = b.this;
                        bVar2.r = bVar2.a(r.u().J());
                        b.f37999a.a("dnsServer:" + b.this.r);
                        c cVar = new c();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(b.this.f38123h);
                        e.f38017a = b.this.f38002e;
                        e.a(arrayList, cVar, new e.a() { // from class: com.networkbench.agent.impl.plugin.d.b.a.1
                            @Override // com.networkbench.agent.impl.plugin.d.e.a
                            public void a(c cVar2, String str2) {
                                z81.j("MTR NetworkAnalysisTool onFailed failedContent:", str2, b.f37999a);
                                if (TextUtils.isEmpty(b.this.s)) {
                                    b.this.s = str2;
                                }
                            }

                            @Override // com.networkbench.agent.impl.plugin.d.e.a
                            public void b(c cVar2) {
                                b bVar3 = b.this;
                                bVar3.f38001c = cVar2;
                                bVar3.l = true;
                            }

                            @Override // com.networkbench.agent.impl.plugin.d.e.a
                            public boolean a(c cVar2) {
                                if (!com.networkbench.agent.impl.util.c.c.c()) {
                                    return false;
                                }
                                b.this.l = false;
                                b.f37999a.e("MTRPlugin NBSThreadExecutor.isExecutorServiceStop()");
                                return true;
                            }
                        });
                        boolean zC = com.networkbench.agent.impl.util.c.c.c();
                        str = zC;
                        if (zC) {
                            b.this.l = false;
                            b.f37999a.e("MTRPlugin NBSThreadExecutor.isExecutorServiceStop()");
                        }
                    } else {
                        bVar.s = "No network";
                        b.this.l = true;
                        g.e(" MTRRunnable  error :  断网 返回....");
                        boolean zC2 = com.networkbench.agent.impl.util.c.c.c();
                        str = zC2;
                        if (zC2) {
                            b.this.l = false;
                            b.f37999a.e("MTRPlugin NBSThreadExecutor.isExecutorServiceStop()");
                        }
                    }
                } catch (Exception e2) {
                    if (e2 instanceof InterruptedException) {
                        b.this.l = false;
                    }
                    if (e2 instanceof IOException) {
                        b.this.s = e2.getMessage();
                        b.this.l = true;
                        b.f37999a.e("MTRPlugin errorDesc: " + b.this.s + ", isEndSuccess:" + b.this.l);
                    }
                    b.f37999a.e(str + e2);
                    if (com.networkbench.agent.impl.util.c.c.c()) {
                    }
                }
            } finally {
                if (com.networkbench.agent.impl.util.c.c.c()) {
                    b.this.l = false;
                    b.f37999a.e("MTRPlugin NBSThreadExecutor.isExecutorServiceStop()");
                }
                ((h) b.this).q.a(b.this.f38124i.f36846a);
            }
        }
    }

    public b(i iVar, com.networkbench.agent.impl.data.c.d dVar) {
        super(HarvestableType.OBJECT, iVar, dVar);
        f37999a.a("MTRPlugin init argumentsJson:" + dVar.d);
        this.f38125j = new com.networkbench.agent.impl.plugin.f(dVar.d, (String) this.q.e().get(ConfigurationName.PLUGIN_HOSTNAME_CONTEXT));
        a(iVar.e());
        this.s = "";
    }

    public static String b(String str) {
        if (str == null) {
            return "";
        }
        if (str.toLowerCase().contains("unknown host") || str.toLowerCase().contains("unable to resolve host")) {
            return "fail to resolve address";
        }
        if (str.toLowerCase().contains("is unreachable") || str.toLowerCase().contains("timeout")) {
            return "unreachable to target host";
        }
        str.equals("No network");
        return str;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a(Map<String, Object> map) {
        JSONObject jSONObject = this.f38124i.d;
        if (jSONObject == null) {
            return;
        }
        try {
            this.f38000b = jSONObject;
            this.f38123h = jSONObject.optString("host", "");
        } catch (Throwable unused) {
            this.f38123h = "";
        }
        try {
            int iOptInt = this.f38000b.optInt(com.batch.android.s.b.a.f24018f, 30);
            this.f38002e = iOptInt;
            if (iOptInt <= 0) {
                this.f38002e = 30;
            }
            if (this.f38002e > 100) {
                this.f38002e = 100;
            }
        } catch (Throwable unused2) {
            this.f38002e = 30;
        }
        try {
            this.p = this.f38000b.optInt("execFrequency", 60);
        } catch (Throwable unused3) {
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
        c cVar = this.f38001c;
        if (cVar == null || cVar.f38005a.size() <= 0) {
            jsonObject.add("ip", new JsonPrimitive(""));
            String str2 = this.r;
            jsonObject.add("dnsserver", new JsonPrimitive(str2 != null ? str2 : ""));
            jsonObject.add(DbParams.KEY_DATA, new JsonArray());
        } else {
            String str3 = this.f38001c.f38005a.get(0).f38013a;
            jsonObject.add("ip", new JsonPrimitive(str3 == null ? "" : str3));
            if (TextUtils.isEmpty(this.r) && this.f38001c.f38005a.get(0).f38015c != null && this.f38001c.f38005a.get(0).f38015c.size() > 0) {
                this.r = this.f38001c.f38005a.get(0).f38015c.get(0).f38007b;
            }
            String str4 = this.r;
            if (str4 == null) {
                str4 = "";
            }
            jsonObject.add("dnsserver", new JsonPrimitive(str4));
            JsonArray jsonArray = new JsonArray();
            String str5 = "";
            for (c.a aVar : this.f38001c.f38005a.get(0).f38015c) {
                jsonArray.add(aVar.a());
                str5 = aVar.f38007b;
            }
            jsonObject.add(DbParams.KEY_DATA, jsonArray);
            if (TextUtils.isEmpty(str5) || !str5.equals(str3)) {
                this.s = "unreachable to target host";
            } else {
                this.s = "";
            }
        }
        jsonObject.add("error", new JsonPrimitive(b(this.s)));
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("result", jsonObject);
        return jsonObject2;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean b() {
        if (!this.o) {
            return true;
        }
        if (!t.a(System.currentTimeMillis())) {
            return false;
        }
        t.b(System.currentTimeMillis());
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a() {
        com.networkbench.agent.impl.util.c.c.a().a(new a());
    }

    public void a(String str) {
        TextUtils.isEmpty(str);
    }
}
