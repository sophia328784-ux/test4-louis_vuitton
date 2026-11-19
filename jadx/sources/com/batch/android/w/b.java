package com.batch.android.w;

import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.u.c;
import com.batch.android.v0.l;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Iterator;
import java.util.List;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public JSONObject a(com.batch.android.t.b bVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("campaignId", bVar.f24039a);
        Object obj = bVar.m;
        if (obj != null) {
            jSONObject.put("campaignToken", obj);
        }
        jSONObject.put("eventData", bVar.f24046j);
        Object obj2 = bVar.f24040b;
        if (obj2 != null) {
            jSONObject.put("minimumApiLevel", obj2);
        }
        Object obj3 = bVar.f24041c;
        if (obj3 != null) {
            jSONObject.put("maximumApiLevel", obj3);
        }
        jSONObject.put("priority", Math.max(bVar.d, 0));
        jSONObject.put("minDisplayInterval", Math.max(bVar.g, 0));
        jSONObject.put("displayDelaySec", bVar.o);
        if (bVar.f24042e != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ts", bVar.f24042e.a());
            jSONObject2.put("userTZ", bVar.f24042e instanceof com.batch.android.i.b);
            jSONObject.put("startDate", jSONObject2);
        }
        if (bVar.f24043f != null) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("ts", bVar.f24043f.a());
            jSONObject3.put("userTZ", bVar.f24043f instanceof com.batch.android.i.b);
            jSONObject.put("endDate", jSONObject3);
        }
        Integer num = bVar.f24044h;
        if (num != null && num.intValue() >= 0) {
            jSONObject.put("capping", bVar.f24044h);
        }
        jSONObject.put("persist", bVar.l);
        jSONObject.put("output", a(bVar.f24045i));
        jSONObject.put("triggers", a(bVar.f24047k));
        Object obj4 = bVar.p;
        if (obj4 != null) {
            jSONObject.put("customPayload", obj4);
        }
        jSONObject.put("requireJIT", bVar.q);
        if (bVar.n != null) {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("startHour", bVar.n.i());
            jSONObject4.put("startMin", bVar.n.j());
            jSONObject4.put("endHour", bVar.n.g());
            jSONObject4.put("endMin", bVar.n.h());
            if (bVar.n.f() != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator<com.batch.android.t.a> it = bVar.n.f().iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().c());
                }
                jSONObject4.put("quietDaysOfWeek", jSONArray);
            }
            jSONObject.put("quietHours", jSONObject4);
        }
        return jSONObject;
    }

    public JSONArray b(List<com.batch.android.t.b> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<com.batch.android.t.b> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(a(it.next()));
        }
        return jSONArray;
    }

    private JSONObject a(com.batch.android.t.b.a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (aVar instanceof c) {
            jSONObject.put("type", "LANDING_CEP");
            jSONObject.put(ConfigurationName.PING_PAYLOAD, aVar.f24048a);
            return jSONObject;
        }
        if (aVar instanceof com.batch.android.u.b) {
            jSONObject.put("type", "LANDING");
            jSONObject.put(ConfigurationName.PING_PAYLOAD, aVar.f24048a);
        }
        return jSONObject;
    }

    private JSONArray a(List<com.batch.android.t.b.c> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<com.batch.android.t.b.c> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(a(it.next()));
        }
        return jSONArray;
    }

    private JSONObject a(com.batch.android.t.b.c cVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", cVar.k());
        if (cVar.k().equals("EVENT")) {
            com.batch.android.y.a aVar = (com.batch.android.y.a) cVar;
            jSONObject.put(MvelScriptManager.VAR_EVENT, aVar.f24210a);
            jSONObject.put("label", aVar.f24211b);
            jSONObject.put(l.f24145h, aVar.f24212c);
        }
        return jSONObject;
    }
}
