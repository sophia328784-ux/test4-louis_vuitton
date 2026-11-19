package com.networkbench.agent.impl.harvest.a;

import com.networkbench.com.google.gson.GsonBuilder;
import com.networkbench.com.google.gson.reflect.TypeToken;
import java.net.HttpURLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c extends h {
    public c(String str, boolean z) {
        super(str, z);
    }

    private Map<String, Object> c(String str) {
        return (Map) new GsonBuilder().create().fromJson(str, new TypeToken<Map<String, Object>>() { // from class: com.networkbench.agent.impl.harvest.a.c.1
        }.getType());
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        cVar.d(str);
        return super.a(str, cVar);
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public void b(HttpURLConnection httpURLConnection) {
    }

    @Override // com.networkbench.agent.impl.harvest.a.h
    public String a() {
        return this.f37264e;
    }
}
