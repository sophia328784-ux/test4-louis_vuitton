package com.batch.android.l1;

import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f23674a;

    public e(Map<String, d> map, Map<String, d> map2, Map<String, Set<String>> map3, Map<String, Set<String>> map4) {
        b bVar = new b();
        this.f23674a = bVar;
        if (map == null || map2 == null) {
            bVar.f23675a = new HashMap();
            this.f23674a.f23676b = new HashMap();
        } else {
            a(map, map2);
        }
        if (map3 != null && map4 != null) {
            b(map3, map4);
            return;
        }
        this.f23674a.f23677c = new HashMap();
        this.f23674a.d = new HashMap();
    }

    private void a(Set<String> set, Set<String> set2, Set[] setArr) {
        setArr[0] = null;
        setArr[1] = null;
        if (set == null || set.isEmpty()) {
            if (set2 == null || set2.isEmpty()) {
                return;
            }
            setArr[1] = new HashSet(set2);
            return;
        }
        if (set2 == null || set2.isEmpty()) {
            setArr[0] = new HashSet(set);
            return;
        }
        if (set.equals(set2)) {
            return;
        }
        HashSet hashSet = new HashSet(set2);
        HashSet hashSet2 = new HashSet();
        for (String str : set) {
            if (!hashSet.remove(str)) {
                hashSet2.add(str);
            }
        }
        if (!hashSet2.isEmpty()) {
            setArr[0] = hashSet2;
        }
        if (hashSet.isEmpty()) {
            return;
        }
        setArr[1] = hashSet;
    }

    private void b(Map<String, Set<String>> map, Map<String, Set<String>> map2) {
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap(map2);
        Set[] setArr = new Set[2];
        for (Map.Entry<String, Set<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            a(entry.getValue(), map2.get(key), setArr);
            Set set = setArr[0];
            if (set != null) {
                map3.put(key, set);
            }
            Set set2 = setArr[1];
            if (set2 != null) {
                map4.put(key, set2);
            } else {
                map4.remove(key);
            }
        }
        b bVar = this.f23674a;
        bVar.f23677c = map3;
        bVar.d = map4;
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Map<String, d> f23675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Map<String, d> f23676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Map<String, Set<String>> f23677c;
        public Map<String, Set<String>> d;

        private JSONObject a(Map<String, d> map, Map<String, Set<String>> map2) throws JSONException {
            JSONObject jSONObject = new JSONObject();
            if (!map.isEmpty()) {
                for (Map.Entry<String, Object> entry : d.a(map, true).entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
            for (Map.Entry<String, Set<String>> entry2 : map2.entrySet()) {
                jSONObject.put("t." + entry2.getKey(), new JSONArray((Collection) entry2.getValue()));
            }
            return jSONObject;
        }

        private b() {
        }

        public JSONObject a(long j2) throws JSONException {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("version", j2);
            jSONObject.put("added", a(this.f23675a, this.f23677c));
            jSONObject.put("removed", a(this.f23676b, this.d));
            return jSONObject;
        }

        public boolean a() {
            return this.f23675a.size() > 0 || this.f23676b.size() > 0 || this.f23677c.size() > 0 || this.d.size() > 0;
        }
    }

    private void a(Map<String, d> map, Map<String, d> map2) {
        HashMap map3 = new HashMap(map2);
        HashMap map4 = new HashMap();
        for (Map.Entry<String, d> entry : map.entrySet()) {
            String key = entry.getKey();
            if (!entry.getValue().equals(map2.get(key))) {
                map4.put(key, entry.getValue());
            } else {
                map3.remove(key);
            }
        }
        b bVar = this.f23674a;
        bVar.f23675a = map4;
        bVar.f23676b = map3;
    }
}
