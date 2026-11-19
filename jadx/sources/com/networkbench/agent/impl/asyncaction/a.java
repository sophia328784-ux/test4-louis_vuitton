package com.networkbench.agent.impl.asyncaction;

import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class a extends s {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<UUID, JsonObject> f36405i;

    public a(NBSTraceUnit nBSTraceUnit, String str) {
        super(nBSTraceUnit);
        this.f36405i = new ConcurrentHashMap();
        this.f36404h = str;
    }

    public JsonArray a() {
        JsonArray jsonArray = new JsonArray();
        synchronized (this.f36405i) {
            try {
                Iterator<JsonObject> it = this.f36405i.values().iterator();
                while (it.hasNext()) {
                    jsonArray.add(it.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jsonArray;
    }

    @Override // com.networkbench.agent.impl.asyncaction.s
    public void a(NBSTransactionState nBSTransactionState) {
        if (this.f36405i.containsKey(nBSTransactionState.getAttachedUnit())) {
            return;
        }
        this.f36405i.put(nBSTransactionState.getAttachedUnit(), nBSTransactionState.networkForActionTrace(this.f36459f));
    }
}
