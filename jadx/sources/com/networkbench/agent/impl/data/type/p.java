package com.networkbench.agent.impl.data.type;

import com.networkbench.agent.impl.asyncaction.s;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class p extends s {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f36989i = "PageLoadingTraceMetrics";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f36990h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36991j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.networkbench.agent.impl.i.e f36992k;

    public p(NBSTraceUnit nBSTraceUnit) {
        super(nBSTraceUnit);
        this.f36990h = null;
        this.f36991j = false;
        this.f36992k = com.networkbench.agent.impl.i.e.PAGE_STATUS_TIMEOUT;
        Logger.debug(f36989i, "PageLoadingTraceMetrics rootTrace: " + nBSTraceUnit.parentUUID + ", myuuid:" + nBSTraceUnit.myUUID);
    }

    private JsonArray a(NBSTraceUnit nBSTraceUnit, int i2) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(nBSTraceUnit.callType == SlowStartState.CallType.SYNC.getValue() ? 0L : b(nBSTraceUnit.entryTimestamp))));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(nBSTraceUnit.entryTimestamp))));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(nBSTraceUnit.exitTimestamp))));
        jsonArray.add(new JsonPrimitive(nBSTraceUnit.metricName));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.segmentType)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.callType)));
        jsonArray.add(a(nBSTraceUnit.threadId, nBSTraceUnit.threadName));
        jsonArray.add(c(c(nBSTraceUnit.myUUID)));
        if (i2 >= 10) {
            jsonArray.add(new JsonArray());
        } else {
            jsonArray.add(a(d((NBSUnit) nBSTraceUnit), i2));
        }
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.nodeType)));
        return jsonArray;
    }

    private List<NBSUnit> d(NBSUnit nBSUnit) {
        List<NBSUnit> listC = c(nBSUnit);
        a(listC);
        return listC;
    }

    @Override // com.networkbench.agent.impl.asyncaction.s
    public List<NBSUnit> c(NBSUnit nBSUnit) {
        ArrayList arrayList = new ArrayList();
        if (nBSUnit.myUUID != null) {
            for (Map.Entry<UUID, NBSUnit> entry : this.f36457c.entrySet()) {
                if (nBSUnit.myUUID == entry.getValue().parentUUID) {
                    arrayList.add(entry.getValue());
                }
            }
        }
        return arrayList;
    }

    public void e(long j2) {
        this.g = j2;
    }

    public long f(long j2) {
        long j3 = this.f36458e.exitTimestamp;
        if (j3 > j2) {
            return 0L;
        }
        return j2 - j3;
    }

    public long u() {
        return this.g;
    }

    public JsonObject v() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cpu", new JsonArray());
        jsonObject.add("mem", new JsonArray());
        jsonObject.add("stacks", a(this.f36458e, 0));
        return jsonObject;
    }

    public Map<r, NBSUnit> w() {
        HashMap map = new HashMap();
        for (Map.Entry<UUID, NBSUnit> entry : this.f36457c.entrySet()) {
            if (a(entry.getValue().unitType)) {
                map.put(entry.getValue().unitType, entry.getValue());
            }
        }
        return map;
    }

    public boolean x() {
        return this.f36991j;
    }

    public boolean y() {
        return this.f36991j && this.f36992k == com.networkbench.agent.impl.i.e.PAGE_STATUS_TIMEOUT;
    }

    public com.networkbench.agent.impl.i.e z() {
        return this.f36992k;
    }

    public Map<UUID, NBSUnit> a() {
        return this.f36457c;
    }

    public void a(String str) {
        this.f36990h = str;
    }

    public JsonArray a(List<NBSUnit> list, int i2) {
        JsonArray jsonArrayA;
        JsonArray jsonArray = new JsonArray();
        for (NBSUnit nBSUnit : list) {
            if (nBSUnit != null) {
                if (!(nBSUnit instanceof NBSTraceUnit)) {
                    s.f36455b.f("child is not instance of NBSTraceUnit");
                    return jsonArray;
                }
                if (nBSUnit.parentUUID != nBSUnit.myUUID && (jsonArrayA = a((NBSTraceUnit) nBSUnit, (i2 = i2 + 1))) != null) {
                    jsonArray.add(jsonArrayA);
                }
            }
        }
        return jsonArray;
    }

    private boolean a(r rVar) {
        return rVar != r.OTHER_UNIT;
    }

    public void a(long j2, String str, SlowStartState.CallType callType) {
        NBSTraceUnit nBSTraceUnit = new NBSTraceUnit(str, SlowStartState.SegmentType.OTHER.getValue(), callType.getValue(), j2 - 1);
        nBSTraceUnit.exitTimestamp = j2;
        a(nBSTraceUnit, callType);
    }

    public void a(NBSUnit nBSUnit, SlowStartState.CallType callType) {
        nBSUnit.parentUUID = this.f36458e.myUUID;
        if (!a(nBSUnit, this.f36457c.size())) {
            s.f36455b.a("traces size is over max capacity, skip");
            return;
        }
        this.f36457c.put(nBSUnit.myUUID, nBSUnit);
        this.f36458e.addChild(nBSUnit);
        SlowStartState.CallType callType2 = SlowStartState.CallType.SYNC;
        long j2 = nBSUnit.exitTimestamp;
        if (callType == callType2) {
            c(j2);
        } else {
            d(j2);
        }
    }

    public void a(boolean z) {
        this.f36991j = z;
    }

    public void a(com.networkbench.agent.impl.i.e eVar) {
        this.f36992k = eVar;
    }
}
