package com.networkbench.agent.impl.plugin.b;

import android.text.TextUtils;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.c.d;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import com.networkbench.agent.impl.plugin.f.i;
import com.networkbench.agent.impl.plugin.f.j;
import com.networkbench.agent.impl.plugin.h;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.c.c;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends h {
    private static j s = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    HashMap<String, String> f37942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    JSONObject f37943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37944c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f37945e;
    private JSONArray r;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.plugin.b.a$a, reason: collision with other inner class name */
    public class RunnableC0106a implements Runnable {
        public RunnableC0106a() {
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0041 A[DONT_GENERATE] */
        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.f37945e = new b(a.this.f37944c, a.this.d);
                boolean zA = v.a(r.u().J());
                a aVar = a.this;
                if (zA) {
                    if (!TextUtils.isEmpty(aVar.f37944c)) {
                        a.this.f37945e.a();
                        a.this.l = true;
                    }
                    if (c.c()) {
                    }
                } else {
                    aVar.f37945e.f37948a = "No network";
                    a.this.l = true;
                    g.e(" DownloadRunnable  error :  断网 返回....");
                    if (c.c()) {
                    }
                }
            } catch (Throwable th) {
                try {
                    h.f38121f.f("DownloadPlugin error: " + th.getMessage());
                    a aVar2 = a.this;
                    aVar2.l = true;
                    if (aVar2.f37945e != null) {
                        a.this.f37945e.f37948a = th.getMessage();
                    }
                    if (th instanceof InterruptedException) {
                        a.this.l = false;
                    }
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
        this.d = 5;
        this.f37942a = new HashMap<>();
        a(iVar.e());
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a(Map<String, Object> map) {
        try {
            JSONObject jSONObject = this.f38124i.d;
            this.f37943b = jSONObject;
            try {
                this.f37944c = jSONObject.optString(ConfigurationName.DOWNLOAD_PLUGIN_URL);
            } catch (Throwable unused) {
                this.l = false;
            }
            this.d = this.f37943b.optInt(ConfigurationName.DOWNLOAD_SIZE_LIMIT, 5);
            try {
                this.r = this.f37943b.optJSONArray(ConfigurationName.DOWNLOAD_RSHEAD);
            } catch (Throwable unused2) {
                this.r = null;
            }
            try {
                this.p = this.f37943b.optInt("execFrequency", 60);
            } catch (Throwable unused3) {
                this.p = 60;
            }
        } catch (Throwable unused4) {
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonArray jsonArray = new JsonArray();
        if (this.r != null) {
            for (int i2 = 0; i2 < this.r.length(); i2++) {
                String strValueOf = String.valueOf(this.r.opt(i2));
                if (this.f37945e.f37955j.containsKey(strValueOf)) {
                    this.f37942a.put(strValueOf, this.f37945e.f37955j.get(strValueOf).get(0));
                }
                jsonArray.add(new JsonPrimitive(strValueOf));
            }
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.add(ConfigurationName.DOWNLOAD_PLUGIN_URL, new JsonPrimitive(this.f37944c));
        jsonObject.add("host", new JsonPrimitive(this.f37945e.f37951e));
        String str = this.f37945e.d;
        if (str == null) {
            str = "";
        }
        jsonObject.add("ip", new JsonPrimitive(str));
        String str2 = this.f37945e.f37950c;
        if (str2 == null) {
            str2 = "";
        }
        jsonObject.add("cname", new JsonPrimitive(str2));
        jsonObject.add("dns", new JsonPrimitive((Number) Long.valueOf(this.f37945e.f37952f)));
        jsonObject.add("connect", new JsonPrimitive((Number) Integer.valueOf(this.f37945e.f37954i)));
        b bVar = this.f37945e;
        jsonObject.add("total", new JsonPrimitive((Number) Long.valueOf(bVar == null ? 0L : bVar.f37949b)));
        jsonObject.add("size", new JsonPrimitive((Number) Integer.valueOf(this.f37945e.g)));
        b bVar2 = this.f37945e;
        jsonObject.add("err", new JsonPrimitive(bVar2 != null ? bVar2.f37948a : ""));
        jsonObject.add(ConfigurationName.DOWNLOAD_RSHEAD, ak.d(this.f37942a));
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("result", jsonObject);
        return jsonObject2;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean b() {
        if (!this.o) {
            return true;
        }
        if (!s.a(System.currentTimeMillis())) {
            return false;
        }
        s.b(System.currentTimeMillis());
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public boolean f() {
        return true;
    }

    @Override // com.networkbench.agent.impl.plugin.h
    public void a() {
        c.a().a(new RunnableC0106a());
    }
}
