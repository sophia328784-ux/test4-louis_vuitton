package com.batch.android.l1;

import com.sightcall.universal.media.offline.FileUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f23672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f23673b;

    public d(Object obj, a aVar) {
        this.f23672a = obj;
        this.f23673b = aVar;
    }

    public static Map<String, Object> a(Map<String, d> map, boolean z) {
        HashMap map2 = new HashMap();
        if (map != null) {
            for (Map.Entry<String, d> entry : map.entrySet()) {
                Object objValueOf = entry.getValue().f23672a;
                if (objValueOf instanceof Date) {
                    objValueOf = Long.valueOf(((Date) objValueOf).getTime());
                }
                a aVar = entry.getValue().f23673b;
                StringBuilder sb = new StringBuilder();
                sb.append(z ? entry.getKey().substring(2) : entry.getKey());
                sb.append(aVar != a.DELETED ? FileUtils.HIDDEN_PREFIX + entry.getValue().f23673b.b() : "");
                map2.put(sb.toString(), objValueOf);
            }
        }
        return map2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f23673b == dVar.f23673b && this.f23672a.equals(dVar.f23672a);
    }

    public String toString() {
        return "type:" + this.f23673b.b() + "' value: '" + this.f23672a.toString() + "'";
    }
}
