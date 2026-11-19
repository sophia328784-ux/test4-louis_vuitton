package com.batch.android.a;

import android.content.Context;
import com.batch.android.json.JSONObject;
import com.batch.android.n.c0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class n {
    private static Map<String, Object> a(Context context) {
        String strB;
        HashMap map = new HashMap();
        for (com.batch.android.h.a aVar : c0.a(context).a()) {
            if (aVar.c() && (strB = aVar.b()) != null && !strB.isEmpty()) {
                map.put(aVar.a().f23446b, strB);
            }
        }
        HashMap map2 = new HashMap();
        map2.put("geoip", Boolean.valueOf(Boolean.TRUE.equals(com.batch.android.n.g.a().i().isGeoIpEnabled())));
        map.put("data_collection", map2);
        return map;
    }

    public static JSONObject b(Context context) {
        return new JSONObject(a(context));
    }

    public static Map<String, Object> c(Context context) {
        return a(context);
    }
}
