package com.networkbench.agent.impl.b;

import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class i extends HarvestableArray {
    private static com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f36513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ActionData f36514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f36515c;

    public i(ActionData actionData, long j2, long j3) {
        this.f36514b = actionData;
        this.f36515c = j2;
        this.f36513a = j3;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        try {
            long jLongValue = (this.f36514b.getTimestamp().longValue() - ((long) this.f36514b.getTotalTime())) - this.f36515c;
            if (jLongValue < 0) {
                return null;
            }
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(jLongValue)));
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36513a - this.f36515c)));
            String appDataNew = "";
            jsonArray.add(new JsonPrimitive(this.f36514b.getUrl() == null ? "" : this.f36514b.getUrl()));
            jsonArray.add(new JsonPrimitive(this.f36514b.getUrlParams() == null ? "" : this.f36514b.getUrlParams()));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36514b.getRequestMethod().ordinal())));
            jsonArray.add(new JsonPrimitive(this.f36514b.getIP() == null ? "" : this.f36514b.getIP()));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36514b.getTime_to_dns())));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36514b.getTime_to_connect())));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36514b.getTime_first_package())));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36514b.getTime_ssl_handshake())));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36514b.getStatusCode())));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f36514b.getErrorCode())));
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36514b.getBytesSent())));
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.f36514b.getBytesReceived())));
            jsonArray.add(new JsonPrimitive(this.f36514b.getAppData() == null ? "" : this.f36514b.getAppData()));
            if (this.f36514b.getAppDataNew() != null) {
                appDataNew = this.f36514b.getAppDataNew();
            }
            jsonArray.add(new JsonPrimitive(appDataNew));
            return jsonArray;
        } catch (Exception e2) {
            d.e("ANR NBSANRNetWorkTrace has an error " + e2);
            return null;
        }
    }
}
