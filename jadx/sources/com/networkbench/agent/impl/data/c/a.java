package com.networkbench.agent.impl.data.c;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f36839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Map<String, d> f36840b;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.data.c.a$a, reason: collision with other inner class name */
    public static class C0096a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f36842a = new a();

        private C0096a() {
        }
    }

    private a() {
        this.f36839a = 60;
        this.f36840b = new ConcurrentHashMap();
    }

    private void f() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, d> entry : this.f36840b.entrySet()) {
            d value = entry.getValue();
            if (value == null) {
                arrayList.add(entry.getKey());
            } else if (!value.a() && value.b()) {
                arrayList.add(entry.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f36840b.remove((String) it.next());
        }
    }

    public a a(JSONObject jSONObject) {
        try {
            f();
            try {
                this.f36839a = jSONObject.getInt("uploadInterval");
                r.A.a("parseExtensionConfigFromResult uploadInterval:" + this.f36839a);
                if (this.f36839a <= 0) {
                    this.f36839a = 60;
                }
            } catch (Throwable unused) {
                this.f36839a = 60;
            }
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("tasks");
                if (jSONArray != null) {
                    this.f36840b.clear();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        JSONObject jSONObject2 = (JSONObject) jSONArray.get(i2);
                        d dVar = new d();
                        if (dVar.a(jSONObject2)) {
                            a(dVar);
                        }
                    }
                }
            } catch (Throwable th) {
                r.A.a("parseExtensionConfigFromResult error:", th);
            }
            return this;
        } catch (Throwable th2) {
            r.A.a("error in parse:", th2);
            return this;
        }
    }

    public boolean b() {
        return this.f36840b.isEmpty();
    }

    public List<d> c() {
        ArrayList arrayList = new ArrayList(this.f36840b.values());
        Collections.sort(arrayList, new Comparator<d>() { // from class: com.networkbench.agent.impl.data.c.a.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(d dVar, d dVar2) {
                try {
                    return (dVar.f36846a.contains(ConfigurationName.KEY) || dVar2.f36846a.contains(ConfigurationName.KEY) || Integer.valueOf(dVar.f36846a).intValue() <= Integer.valueOf(dVar2.f36846a).intValue()) ? -1 : 1;
                } catch (Throwable th) {
                    r.A.a("taskId compare is error: taskId1:" + dVar.f36846a + ", taskId2:" + dVar2.f36846a, th);
                    return 0;
                }
            }
        });
        return arrayList;
    }

    public void d() {
        Iterator<Map.Entry<String, d>> it = this.f36840b.entrySet().iterator();
        while (it.hasNext()) {
            d value = it.next().getValue();
            if (value != null && value.b() && value.a()) {
                value.a(false);
            }
        }
    }

    public void e() {
        this.f36840b.clear();
    }

    public static a a() {
        return C0096a.f36842a;
    }

    private void a(d dVar) {
        if (TextUtils.isEmpty(dVar.f36846a) || this.f36840b.containsKey(dVar.f36846a)) {
            return;
        }
        this.f36840b.put(dVar.f36846a, dVar);
    }
}
