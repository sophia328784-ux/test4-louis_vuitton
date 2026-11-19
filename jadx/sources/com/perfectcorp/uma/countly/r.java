package com.perfectcorp.uma.countly;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43249a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f43250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f43251c;
    public final double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f43252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f43253f;

    public r(String str, Map map, int i2, double d, int i3, String str2) {
        this.f43249a = str;
        this.f43250b = map != null ? Collections.unmodifiableMap(map) : null;
        this.f43251c = i2;
        this.d = d;
        this.f43252e = i3;
        this.f43253f = str2;
    }

    public static r a(JSONObject jSONObject) {
        HashMap map;
        try {
            if (!jSONObject.isNull(ConfigurationName.KEY)) {
                String string = jSONObject.getString(ConfigurationName.KEY);
                if (!string.isEmpty()) {
                    int iOptInt = jSONObject.optInt(com.batch.android.s.b.a.f24018f);
                    double dOptDouble = jSONObject.optDouble("sum", 0.0d);
                    int iOptInt2 = jSONObject.optInt("timestamp");
                    String strOptString = jSONObject.optString("tz");
                    if (jSONObject.isNull("segmentation")) {
                        map = null;
                    } else {
                        JSONObject jSONObject2 = jSONObject.getJSONObject("segmentation");
                        HashMap map2 = new HashMap(jSONObject2.length());
                        Iterator<String> itKeys = jSONObject2.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            if (!jSONObject2.isNull(next)) {
                                map2.put(next, jSONObject2.getString(next));
                            }
                        }
                        map = map2;
                    }
                    return new r(string, map, iOptInt, dOptDouble, iOptInt2, strOptString);
                }
            }
            return null;
        } catch (JSONException e2) {
            com.perfectcorp.uma.b.d.b("CountlyEvent", "Got exception converting JSON to an Event", e2);
            return null;
        }
    }

    public final JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ConfigurationName.KEY, this.f43249a);
            jSONObject.put(com.batch.android.s.b.a.f24018f, this.f43251c);
            jSONObject.put("timestamp", this.f43252e);
            jSONObject.put("tz", this.f43253f);
            Map map = this.f43250b;
            if (map != null) {
                jSONObject.put("segmentation", new JSONObject(map));
            }
            jSONObject.put("sum", this.d);
            return jSONObject;
        } catch (JSONException e2) {
            com.perfectcorp.uma.b.d.b("CountlyEvent", "Got exception converting an Event to JSON", e2);
            return jSONObject;
        }
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof r)) {
            r rVar = (r) obj;
            String str = rVar.f43249a;
            String str2 = this.f43249a;
            if (str2 != null ? str2.equals(str) : str == null) {
                if (this.f43252e == rVar.f43252e) {
                    Map map = rVar.f43250b;
                    Map map2 = this.f43250b;
                    if (map2 == null) {
                        if (map == null) {
                            return true;
                        }
                    } else if (map2.equals(map)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f43249a;
        int iHashCode = str != null ? str.hashCode() : 1;
        Map map = this.f43250b;
        int iHashCode2 = iHashCode ^ (map != null ? map.hashCode() : 1);
        int i2 = this.f43252e;
        return iHashCode2 ^ (i2 != 0 ? i2 : 1);
    }
}
