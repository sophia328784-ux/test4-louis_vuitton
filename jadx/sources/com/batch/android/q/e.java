package com.batch.android.q;

import android.content.Context;
import android.text.TextUtils;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.r;
import com.batch.android.e.t;
import com.batch.android.e.z;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.net.MalformedURLException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class e extends com.batch.android.a.d implements l0 {
    private static final String s = "InboxFetchWebserviceClient";
    private long p;
    private final String q;
    private final com.batch.android.n1.c r;

    public e(Context context, a aVar, String str, String str2, Integer num, String str3, long j2, com.batch.android.n1.c cVar) throws MalformedURLException {
        super(context, o0.c.GET, com.batch.android.f.d.g, aVar.c(), str);
        this.q = str2;
        this.p = j2;
        this.r = cVar;
        if (str3 != null) {
            a("from", str3);
        }
        if (num != null) {
            a(ConfigurationName.CELLINFO_LIMIT, num.toString());
        }
    }

    public static g b(JSONObject jSONObject) throws k {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(ConfigurationName.PING_PAYLOAD);
            r rVar = new r(jSONObject2.getJSONObject(r.z));
            HashMap map = new HashMap();
            for (String str : jSONObject2.keySet()) {
                map.put(str, jSONObject2.reallyOptString(str, null));
            }
            j jVar = new j(jSONObject.getString("notificationId"), jSONObject.getString("sendId"));
            jVar.d = jSONObject.reallyOptString("customId", null);
            jVar.f23952c = jSONObject.reallyOptString("installId", null);
            jVar.f23953e = rVar.h();
            g gVar = new g(rVar.w(), new Date(jSONObject.getLong("notificationTime")), map, jVar);
            gVar.f23941b = jSONObject2.reallyOptString("msg", null);
            gVar.f23940a = jSONObject2.reallyOptString("title", null);
            Boolean bool = Boolean.FALSE;
            gVar.d = (jSONObject.reallyOptBoolean("read", bool).booleanValue() || jSONObject.reallyOptBoolean("opened", bool).booleanValue()) ? false : true;
            gVar.f23943e = false;
            if (gVar.b()) {
                return gVar;
            }
            throw new k("Parsed notification does not pass integrity checks. You may have an empty 'payload' or missing identifiers.");
        } catch (JSONException e2) {
            throw new k("Missing key or invalid value type in response JSON", e2);
        }
    }

    private i c(JSONObject jSONObject) throws k {
        i iVar = new i();
        try {
            iVar.f23947a = jSONObject.getBoolean("hasMore");
            iVar.f23948b = jSONObject.reallyOptBoolean("timeout", Boolean.FALSE).booleanValue();
            String strReallyOptString = jSONObject.reallyOptString("cursor", null);
            iVar.f23949c = strReallyOptString;
            if (TextUtils.isEmpty(strReallyOptString)) {
                iVar.f23949c = null;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("notifications");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                Object obj = jSONArray.get(i2);
                if (obj instanceof JSONObject) {
                    try {
                        iVar.d.add(b((JSONObject) obj));
                    } catch (k e2) {
                        t.c(s, "Failed to parse notification content, skipping.", e2);
                    }
                } else {
                    t.c(s, "Invalid json element found in notification array, skipping. Found: " + obj.toString());
                }
            }
            return iVar;
        } catch (JSONException e3) {
            throw new k("Missing key or invalid value type in response JSON", e3);
        }
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.x0;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.y0;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.w0;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.t0;
    }

    @Override // com.batch.android.a.d
    public String H() {
        return null;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/inboxwsc";
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return null;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return null;
    }

    @Override // com.batch.android.e.o0
    public Map<String, String> r() {
        if (this.q == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("X-CustomID-Auth", this.q);
        return map;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            t.c(s, "Starting inbox fetch (" + h().toString() + ")");
            i iVarC = c(l());
            if (this.p > 0) {
                com.batch.android.n.j.a(this.f23130e).a(iVarC, this.p);
            }
            this.r.a(iVarC);
        } catch (o0.d e2) {
            t.c(s, "Inbox fetch failed: ", e2);
            if (e2.b() == o0.d.a.FORBIDDEN) {
                this.r.a("Inbox API call error: Unauthorized. Please make sure that the hexadecimal HMAC for that custom ID is valid. (code 11)");
                return;
            }
            o0.d.a aVarB = e2.b();
            o0.d.a aVar = o0.d.a.SDK_OPTED_OUT;
            com.batch.android.n1.c cVar = this.r;
            if (aVarB == aVar) {
                cVar.a("Inbox API call error: Batch SDK has been globally Opted Out.");
            } else {
                cVar.a("Internal webservice call error - code 10");
            }
        } catch (JSONException e3) {
            t.c(s, "Inbox fetch failed: ", e3);
            this.r.a("Internal webservice call error - code 20");
        } catch (k e4) {
            t.c(s, "Inbox response parsing failed: ", e4);
            this.r.a("Internal webservice call error - code 30");
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return null;
    }

    @Override // com.batch.android.a.d, com.batch.android.e.o0
    public com.batch.android.b1.g<JSONObject> w() {
        return null;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.u0;
    }
}
