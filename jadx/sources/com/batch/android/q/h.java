package com.batch.android.q;

import android.content.Context;
import android.text.TextUtils;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.z;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class h extends com.batch.android.a.d implements l0 {
    private static final String u = "InboxSyncWebserviceClient";
    private final long p;
    private final String q;
    private List<b> r;
    private final com.batch.android.b1.a s;
    private final com.batch.android.n1.c t;

    public h(Context context, a aVar, String str, String str2, Integer num, String str3, long j2, List<b> list, com.batch.android.n1.c cVar) throws MalformedURLException {
        super(context, o0.c.POST, com.batch.android.f.d.f23280h, aVar.c(), str);
        this.q = str2;
        this.p = j2;
        this.r = list;
        this.s = new com.batch.android.b1.a(list);
        this.t = cVar;
        if (str3 != null) {
            a("from", str3);
        }
        if (num != null) {
            a(ConfigurationName.CELLINFO_LIMIT, num.toString());
        }
    }

    private i b(JSONObject jSONObject) throws k {
        try {
            i iVar = new i();
            iVar.f23947a = jSONObject.getBoolean("hasMore");
            iVar.f23948b = jSONObject.reallyOptBoolean("timeout", Boolean.FALSE).booleanValue();
            String strReallyOptString = jSONObject.reallyOptString("cursor", null);
            iVar.f23949c = strReallyOptString;
            if (TextUtils.isEmpty(strReallyOptString)) {
                iVar.f23949c = null;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("cache");
            if (jSONObjectOptJSONObject != null) {
                long jLongValue = jSONObjectOptJSONObject.reallyOptLong("lastMarkAllAsRead", -1L).longValue();
                if (jLongValue > 0) {
                    com.batch.android.n.j.a(this.f23130e).a(jLongValue, this.p);
                }
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("delete");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i2);
                        if (!TextUtils.isEmpty(strOptString)) {
                            arrayList.add(strOptString);
                        }
                    }
                    com.batch.android.n.j.a(this.f23130e).a(arrayList);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("notifications");
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                Object obj = jSONArray.get(i3);
                if (obj instanceof JSONObject) {
                    String strReallyOptString2 = ((JSONObject) obj).reallyOptString("notificationId", null);
                    if (strReallyOptString2 == null) {
                        t.c(u, "Json element doesn't have an id in notification array, skipping. Found: " + obj.toString());
                    } else if (b(strReallyOptString2)) {
                        String strA = com.batch.android.n.j.a(this.f23130e).a((JSONObject) obj, this.p);
                        if (strA != null) {
                            arrayList2.add(strA);
                        }
                    } else {
                        try {
                            if (com.batch.android.n.j.a(this.f23130e).a(e.b((JSONObject) obj), this.p)) {
                                arrayList2.add(strReallyOptString2);
                            }
                        } catch (k e2) {
                            t.c(u, "Failed to parse notification content, skipping.", e2);
                        }
                    }
                } else {
                    t.c(u, "Invalid json element found in notification array, skipping. Found: " + obj.toString());
                }
            }
            iVar.d = com.batch.android.n.j.a(this.f23130e).a(arrayList2, this.p);
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
        return "Batch/inboxsyncwsc";
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
            t.c(u, "Starting inbox sync (" + h().toString() + ")");
            this.t.a(b(l()));
        } catch (o0.d e2) {
            t.c(u, "Inbox sync failed: ", e2);
            if (e2.b() == o0.d.a.FORBIDDEN) {
                this.t.a("Inbox API call error: Unauthorized. Please make sure that the hexadecimal HMAC for that custom ID is valid. (code 11)");
                return;
            }
            o0.d.a aVarB = e2.b();
            o0.d.a aVar = o0.d.a.SDK_OPTED_OUT;
            com.batch.android.n1.c cVar = this.t;
            if (aVarB == aVar) {
                cVar.a("Inbox API call error: Batch SDK has been globally Opted Out.");
            } else {
                cVar.a("Internal webservice call error - code 10");
            }
        } catch (JSONException e3) {
            t.c(u, "Inbox sync failed: ", e3);
            this.t.a("Internal webservice call error - code 20");
        } catch (k e4) {
            t.c(u, "Inbox response parsing failed: ", e4);
            this.t.a("Internal webservice call error - code 30");
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.v0;
    }

    @Override // com.batch.android.a.d, com.batch.android.e.o0
    public com.batch.android.b1.g<JSONObject> w() {
        return this.s;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.u0;
    }

    private boolean b(String str) {
        Iterator<b> it = this.r.iterator();
        while (it.hasNext()) {
            if (it.next().f23910a.equals(str)) {
                return true;
            }
        }
        return false;
    }
}
