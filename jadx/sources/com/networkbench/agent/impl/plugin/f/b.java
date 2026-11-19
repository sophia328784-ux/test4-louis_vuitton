package com.networkbench.agent.impl.plugin.f;

import android.content.Context;
import com.networkbench.com.google.gson.JsonArray;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class b extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f38049a = "crashSceneInfo";
    private com.networkbench.agent.impl.crash.j g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.networkbench.agent.impl.crash.c f38050h;

    public b(com.networkbench.agent.impl.crash.c cVar, Context context) {
        super(com.networkbench.agent.impl.plugin.e.after_crash);
        this.f38050h = cVar;
        this.g = new com.networkbench.agent.impl.crash.j(context, f38049a);
    }

    @Override // com.networkbench.agent.impl.plugin.f.i
    public void a() {
    }

    public void b() {
        ArrayList arrayList = new ArrayList();
        for (com.networkbench.agent.impl.plugin.h hVar : this.f38062b) {
            if (hVar.l) {
                if (hVar.f38124i.a()) {
                    i.d.a("crash add extension data: key:" + hVar.f38124i.f36849e + ", pluginClassName:" + hVar.getClass().getName());
                    this.f38050h.e().put(hVar.f38124i.f36849e, f.a(hVar));
                } else {
                    arrayList.add(hVar);
                }
            }
        }
        if (arrayList.size() > 0) {
            JsonArray jsonArray = new JsonArray();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jsonArray.add(((com.networkbench.agent.impl.plugin.h) it.next()).asJson());
            }
            i.d.a("crash add independence data into:" + jsonArray.toString());
            this.g.a(String.valueOf(System.currentTimeMillis()), jsonArray.toString());
        }
    }
}
