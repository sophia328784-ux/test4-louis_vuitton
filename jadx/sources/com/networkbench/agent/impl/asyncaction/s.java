package com.networkbench.agent.impl.asyncaction;

import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s extends HarvestableObject implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final int f36454a = 200;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final com.networkbench.agent.impl.c.e f36455b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f36456h = "TraceMetrics";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected NBSTraceUnit f36458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected long f36459f;
    protected long g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f36462k;
    private int l;
    private int m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Map<UUID, NBSUnit> f36457c = new ConcurrentHashMap();
    protected Set<UUID> d = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Set<UUID> f36460i = Collections.synchronizedSet(new HashSet());
    private Map<UUID, NBSTransactionState> p = new ConcurrentHashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f36461j = false;
    private String n = NBSBitmapBeansControl.getInstance().getSessionId();
    private c o = new b();

    public s(NBSTraceUnit nBSTraceUnit) {
        this.f36458e = nBSTraceUnit;
        this.f36459f = nBSTraceUnit.entryTimestamp;
        this.f36457c.put(nBSTraceUnit.myUUID, nBSTraceUnit);
    }

    private JsonArray a(NBSTraceUnit nBSTraceUnit) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(nBSTraceUnit.callType == SlowStartState.CallType.SYNC.getValue() ? 0L : b(nBSTraceUnit.entryTimestamp))));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(nBSTraceUnit.entryTimestamp))));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(nBSTraceUnit.exitTimestamp))));
        jsonArray.add(new JsonPrimitive(SlowStartState.UEType.appstart.name()));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.segmentType)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.callType)));
        jsonArray.add(a(nBSTraceUnit.threadId, nBSTraceUnit.threadName));
        jsonArray.add(c(c(nBSTraceUnit.myUUID)));
        jsonArray.add(a(b((NBSUnit) nBSTraceUnit, true), true));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.nodeType)));
        return jsonArray;
    }

    private JsonArray b(NBSTraceUnit nBSTraceUnit) {
        JsonArray jsonArray = new JsonArray();
        try {
            NBSTransactionState nBSTransactionStateC = c(nBSTraceUnit.myUUID);
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(nBSTraceUnit.callType == SlowStartState.CallType.SYNC.getValue() ? 0L : b(nBSTraceUnit.entryTimestamp))));
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(nBSTraceUnit.entryTimestamp))));
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(nBSTraceUnit.exitTimestamp))));
            jsonArray.add(new JsonPrimitive(nBSTraceUnit.metricName));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.segmentType)));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.callType)));
            jsonArray.add(a(nBSTraceUnit.threadId, nBSTraceUnit.threadName));
            jsonArray.add(c(nBSTransactionStateC));
            jsonArray.add(a(b((NBSUnit) nBSTraceUnit, true), false));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.nodeType)));
            return jsonArray;
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("traceToTreeOfAppStart error:", th);
            return jsonArray;
        }
    }

    private JsonArray c(NBSTraceUnit nBSTraceUnit) {
        JsonArray jsonArray = new JsonArray();
        try {
            NBSTransactionState nBSTransactionStateC = c(nBSTraceUnit.myUUID);
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(nBSTraceUnit.callType == SlowStartState.CallType.SYNC.getValue() ? 0L : b(nBSTraceUnit.entryTimestamp))));
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(nBSTraceUnit.entryTimestamp))));
            jsonArray.add(new JsonPrimitive((Number) Long.valueOf(b(nBSTraceUnit.exitTimestamp))));
            jsonArray.add(new JsonPrimitive(nBSTraceUnit.metricName));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.segmentType)));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.callType)));
            jsonArray.add(a(nBSTraceUnit.threadId, nBSTraceUnit.threadName));
            jsonArray.add(c(nBSTransactionStateC));
            jsonArray.add(a(b((NBSUnit) nBSTraceUnit, false), false));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(nBSTraceUnit.nodeType)));
            return jsonArray;
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("traceToTree error:", th);
            return jsonArray;
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cpu", new JsonArray());
        jsonObject.add("mem", new JsonArray());
        jsonObject.add("stacks", c(this.f36458e));
        return jsonObject;
    }

    public JsonObject d() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cpu", new JsonArray());
        jsonObject.add("mem", new JsonArray());
        jsonObject.add("stacks", a(this.f36458e));
        return jsonObject;
    }

    public JsonObject e() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("cpu", new JsonArray());
        jsonObject.add("mem", new JsonArray());
        jsonObject.add("stacks", b(this.f36458e));
        return jsonObject;
    }

    public long f() {
        return 7000L;
    }

    public long g() {
        return this.f36459f;
    }

    public int h() {
        return this.f36462k;
    }

    public int i() {
        return this.l;
    }

    public int j() {
        return this.m;
    }

    public boolean k() {
        return this.f36460i.isEmpty();
    }

    public long l() {
        NBSTraceUnit nBSTraceUnit = this.f36458e;
        long j2 = nBSTraceUnit.exitTimestamp - nBSTraceUnit.entryTimestamp;
        if (j2 < 0) {
            f36455b.e("block time is < 0, please check");
        }
        if (j2 < 0) {
            return 0L;
        }
        return j2;
    }

    public long m() {
        long j2 = this.g - this.f36459f;
        if (j2 < 0) {
            f36455b.e("operation time is < 0, please check");
        }
        if (j2 < 0) {
            return 0L;
        }
        return j2;
    }

    public long n() {
        com.networkbench.agent.impl.util.o oVar = new com.networkbench.agent.impl.util.o();
        b(this.f36458e, oVar);
        long jA = n.a(oVar);
        if (jA < 0) {
            f36455b.e("block time is < 0, please check");
        }
        if (jA < 0) {
            return 0L;
        }
        return jA;
    }

    public long o() {
        com.networkbench.agent.impl.util.o oVar = new com.networkbench.agent.impl.util.o();
        a(this.f36458e, oVar);
        long jB = n.b(oVar);
        if (jB < 0) {
            f36455b.e("operation time is < 0, please check");
        }
        if (jB < 0) {
            return 0L;
        }
        return jB;
    }

    public boolean p() {
        return this.f36461j;
    }

    public long q() {
        return this.f36458e.exitTimestamp;
    }

    public String r() {
        return this.n;
    }

    public Map<UUID, NBSTransactionState> s() {
        return this.p;
    }

    public long t() {
        com.networkbench.agent.impl.util.o oVar = new com.networkbench.agent.impl.util.o();
        List<NBSUnit> listC = c((NBSUnit) this.f36458e);
        if (!listC.isEmpty()) {
            for (NBSUnit nBSUnit : listC) {
                if ((nBSUnit instanceof NBSTraceUnit) && ((NBSTraceUnit) nBSUnit).callType == 1) {
                    oVar.add(new o(nBSUnit.entryTimestamp, nBSUnit.exitTimestamp, false));
                }
            }
        }
        long jA = n.a(oVar);
        if (jA < 0) {
            f36455b.e("block time is < 0, please check");
        }
        if (jA < 0) {
            return 0L;
        }
        return jA;
    }

    private boolean d(NBSUnit nBSUnit) {
        if (!p() || nBSUnit.unitType == com.networkbench.agent.impl.data.type.r.UNIT_TYPE_FOR_NETWORK || nBSUnit.entryTimestamp <= this.f36458e.exitTimestamp) {
            return false;
        }
        Logger.debug(f36456h, "nor network unit entry time is over root trace exit time, skip");
        return true;
    }

    private boolean e(long j2) {
        return p() && j2 > a();
    }

    private boolean e(NBSUnit nBSUnit) {
        return nBSUnit == null || !(nBSUnit instanceof NBSTraceUnit) || ((NBSTraceUnit) nBSUnit).callType == 2;
    }

    public void d(long j2) {
        if (this.g > j2) {
            Logger.debug(f36456h, "exit time is small than operationEndTimeStamp");
        } else {
            this.g = j2;
        }
    }

    public void a(NBSTransactionState nBSTransactionState) {
    }

    public JsonArray a(long j2, String str) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(j2)));
        if (str == null) {
            str = "";
        }
        jsonArray.add(new JsonPrimitive(str));
        return jsonArray;
    }

    public NBSTransactionState c(UUID uuid) {
        return this.p.get(uuid);
    }

    private List<NBSUnit> b(NBSUnit nBSUnit, boolean z) {
        List<NBSUnit> listA = a(nBSUnit, z);
        a(listA);
        return listA;
    }

    public List<NBSUnit> a(NBSUnit nBSUnit, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (!nBSUnit.getChildren().isEmpty()) {
            Iterator<UUID> it = nBSUnit.getChildren().iterator();
            while (it.hasNext()) {
                NBSUnit nBSUnit2 = this.f36457c.get(it.next());
                if (nBSUnit2 != null) {
                    if (!nBSUnit2.isRootUnit) {
                        arrayList.add(nBSUnit2);
                    } else if (z) {
                        arrayList.addAll(a(nBSUnit2, true));
                    }
                }
            }
        }
        return arrayList;
    }

    public JsonObject c(NBSTransactionState nBSTransactionState) {
        JsonObject jsonObject = new JsonObject();
        if (nBSTransactionState != null) {
            try {
                f36455b.a("find network action:" + nBSTransactionState.getUrl());
                if (v.a(nBSTransactionState.getStatusCode(), nBSTransactionState.getUrl())) {
                    nBSTransactionState.setStatusCode(200);
                    nBSTransactionState.setErrorCode(0, "");
                }
                if (nBSTransactionState.getStatusCode() > 0 && nBSTransactionState.getStatusCode() < 600) {
                    nBSTransactionState.setErrorCode(0, "");
                }
                jsonObject = nBSTransactionState.networkForTrace();
                a(nBSTransactionState);
                return jsonObject;
            } catch (Throwable th) {
                com.networkbench.agent.impl.c.g.b("networkToJsonObj has error : ", th);
            }
        }
        return jsonObject;
    }

    public boolean b(NBSTransactionState nBSTransactionState) {
        if (nBSTransactionState == null || nBSTransactionState.getStatusCode() != 504 || !nBSTransactionState.getErrorData().f36389a.startsWith("Unsatisfiable")) {
            return false;
        }
        f36455b.a("error  504 ,  message:" + nBSTransactionState.getErrorData().f36389a);
        return true;
    }

    public long b(long j2) {
        return j2 == -1 ? j2 : j2 - this.f36459f;
    }

    @Override // com.networkbench.agent.impl.asyncaction.e
    public void b(NBSUnit nBSUnit) {
        this.d.remove(nBSUnit.myUUID);
        if ((nBSUnit instanceof NBSTraceUnit) && ((NBSTraceUnit) nBSUnit).segmentType == SlowStartState.SegmentType.NETWORK.getValue()) {
            this.f36460i.remove(nBSUnit.myUUID);
        }
        if (p() && this.o.a(nBSUnit)) {
            Logger.debug(f36456h, "addCompleteNetwork network should clip");
            return;
        }
        if (d(nBSUnit)) {
            return;
        }
        if (e(nBSUnit.entryTimestamp)) {
            Logger.debug(f36456h, "unit entry time is over max exit time, drop");
            return;
        }
        if (e(nBSUnit.exitTimestamp)) {
            f36455b.a("unit exit time is over time, set unit exitTime to -1");
            nBSUnit.exitTimestamp = -1L;
            com.networkbench.agent.impl.data.type.r rVar = com.networkbench.agent.impl.data.type.r.APPLICATION_ATTACH_BASE_CONTEXT;
        }
        if (!a(nBSUnit, this.f36457c.size())) {
            f36455b.a("traces size is over max capacity, skip");
            return;
        }
        this.f36457c.put(nBSUnit.myUUID, nBSUnit);
        long j2 = nBSUnit.exitTimestamp;
        if (j2 != -1) {
            this.g = j2;
        }
    }

    public void a(List<NBSUnit> list) {
        int i2 = 0;
        while (i2 < list.size()) {
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < list.size(); i4++) {
                if (list.get(i2).entryTimestamp > list.get(i4).entryTimestamp) {
                    NBSUnit nBSUnit = list.get(i2);
                    list.set(i2, list.get(i4));
                    list.set(i4, nBSUnit);
                }
            }
            i2 = i3;
        }
    }

    public JsonArray a(List<NBSUnit> list, boolean z) {
        JsonArray jsonArray = new JsonArray();
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                try {
                    if (list.get(i2) == null) {
                        continue;
                    } else {
                        if (!(list.get(i2) instanceof NBSTraceUnit)) {
                            f36455b.f("child is not instance of NBSTraceUnit");
                            break;
                        }
                        JsonArray jsonArrayC = c((NBSTraceUnit) list.get(i2));
                        if (z && i2 == list.size() - 1) {
                            if (!jsonArrayC.get(3).getAsString().equals(ConfigurationName.CUST_PAGE_LOADING_END_TAG)) {
                                jsonArray.add(jsonArrayC);
                            }
                        } else {
                            jsonArray.add(jsonArrayC);
                        }
                    }
                } catch (Throwable th) {
                    com.networkbench.agent.impl.c.g.b("childUnitJson has error : ", th);
                }
            } catch (Throwable th2) {
                com.networkbench.agent.impl.c.g.b("childUnitJson has error : ", th2);
            }
        }
        return jsonArray;
    }

    public void c(long j2) {
        NBSTraceUnit nBSTraceUnit = this.f36458e;
        if (nBSTraceUnit.exitTimestamp > j2) {
            Logger.debug(f36456h, "exit time is small than rootTrace.exitTimestamp");
        } else {
            nBSTraceUnit.exitTimestamp = j2;
            d(j2);
        }
    }

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

    @Override // com.networkbench.agent.impl.asyncaction.e
    public boolean c() {
        return p();
    }

    private void b(NBSUnit nBSUnit, NBSTransactionState nBSTransactionState) {
        nBSUnit.metricName = nBSTransactionState.getHttpLibType().name();
    }

    private void b(int i2) {
        this.f36462k++;
        if (i2 >= 400 || i2 == -1) {
            if (i2 <= 600 && i2 != -1) {
                this.l++;
            } else {
                this.m++;
            }
        }
    }

    @Override // com.networkbench.agent.impl.asyncaction.e
    public void a(NBSUnit nBSUnit) {
        if (!a(nBSUnit, this.d.size())) {
            f36455b.a("missingChildren size is over max capacity, skip");
            return;
        }
        this.d.add(nBSUnit.myUUID);
        if ((nBSUnit instanceof NBSTraceUnit) && ((NBSTraceUnit) nBSUnit).segmentType == SlowStartState.SegmentType.NETWORK.getValue()) {
            if (!a(nBSUnit, this.d.size())) {
                f36455b.a("missingNetworkChildren size is over max capacity, skip");
            } else {
                this.f36460i.add(nBSUnit.myUUID);
            }
        }
    }

    @Override // com.networkbench.agent.impl.asyncaction.e
    public NBSTraceUnit b() {
        return this.f36458e;
    }

    @Override // com.networkbench.agent.impl.asyncaction.e
    public boolean b(UUID uuid) {
        if (uuid == null) {
            return false;
        }
        return this.d.contains(uuid) || this.f36457c.containsKey(uuid);
    }

    public void b(NBSUnit nBSUnit, List<o> list) {
        if (nBSUnit.getChildren().isEmpty()) {
            return;
        }
        Iterator<UUID> it = nBSUnit.getChildren().iterator();
        while (it.hasNext()) {
            NBSUnit nBSUnit2 = this.f36457c.get(it.next());
            if (nBSUnit2 != null && (nBSUnit2 instanceof NBSTraceUnit) && ((NBSTraceUnit) nBSUnit2).callType == 1 && !nBSUnit2.metricName.equals(com.networkbench.agent.impl.data.d.j.f36888b)) {
                list.add(new o(nBSUnit2.entryTimestamp, nBSUnit2.exitTimestamp, false));
                b(nBSUnit2, list);
            }
        }
    }

    private long a() {
        return f() + this.f36458e.exitTimestamp;
    }

    @Override // com.networkbench.agent.impl.asyncaction.e
    public void a(NBSUnit nBSUnit, NBSTransactionState nBSTransactionState) {
        if (this.p.containsKey(nBSUnit.myUUID)) {
            f36455b.e("attachedNetworks contains network, uuid is:" + nBSUnit.myUUID);
            return;
        }
        if (p() && this.o.a(nBSUnit, this.f36458e)) {
            Logger.debug(f36456h, "addCompleteNetwork network should clip");
            return;
        }
        if (e(nBSUnit.entryTimestamp)) {
            Logger.debug(f36456h, "unit entry time is over max exit time, not process complete network");
            return;
        }
        if (b(nBSTransactionState)) {
            Logger.debug(f36456h, "transactionState code is 504 , responseBody is Unsatisfiable . ");
            return;
        }
        b(nBSUnit, nBSTransactionState);
        this.p.put(nBSUnit.myUUID, nBSTransactionState);
        nBSTransactionState.setAttachedTrace(this, nBSUnit.myUUID);
        b(nBSTransactionState.getStatusCode());
        b(nBSUnit);
    }

    @Override // com.networkbench.agent.impl.asyncaction.e
    public void a(UUID uuid) {
        if (uuid == null) {
            Logger.debug(f36456h, "refleshOperationTime uuid is null, skip");
            return;
        }
        NBSUnit nBSUnit = this.f36457c.get(uuid);
        if (nBSUnit == null) {
            Logger.error(f36456h, "attachUnit is null, please check");
        } else {
            nBSUnit.complete();
            b(nBSUnit);
        }
    }

    @Override // com.networkbench.agent.impl.asyncaction.e
    public void a(long j2) {
        this.f36461j = true;
        c(j2);
    }

    public void a(NBSUnit nBSUnit, List<o> list) {
        NBSTransactionState nBSTransactionStateC = c(nBSUnit.myUUID);
        if (nBSTransactionStateC != null) {
            long startTime = nBSTransactionStateC.getStartTime();
            long endTime = nBSTransactionStateC.getEndTime();
            if (endTime < a()) {
                list.add(new o(startTime, endTime, true));
            }
        }
        if (nBSUnit.getChildren().isEmpty()) {
            return;
        }
        Iterator<UUID> it = nBSUnit.getChildren().iterator();
        while (it.hasNext()) {
            NBSUnit nBSUnit2 = this.f36457c.get(it.next());
            if (nBSUnit2 != null && !nBSUnit2.metricName.equals(com.networkbench.agent.impl.data.d.j.f36888b)) {
                list.add(new o(nBSUnit2.entryTimestamp, nBSUnit2.exitTimestamp, e(nBSUnit2)));
                a(nBSUnit2, list);
            }
        }
    }

    public long a(int i2) {
        com.networkbench.agent.impl.util.o oVar = new com.networkbench.agent.impl.util.o();
        List<NBSUnit> listC = c((NBSUnit) this.f36458e);
        if (!listC.isEmpty()) {
            for (NBSUnit nBSUnit : listC) {
                oVar.add(new o(nBSUnit.entryTimestamp, nBSUnit.exitTimestamp, e(nBSUnit)));
                a(nBSUnit, oVar, i2);
            }
        }
        long jB = n.b(oVar);
        if (jB < 0) {
            f36455b.e("operation time is < 0, please check");
        }
        if (jB < 0) {
            return 0L;
        }
        return jB;
    }

    private void a(NBSUnit nBSUnit, List<o> list, int i2) {
        if (i2 == 0) {
            return;
        }
        NBSTransactionState nBSTransactionStateC = c(nBSUnit.myUUID);
        if (nBSTransactionStateC != null) {
            long startTime = nBSTransactionStateC.getStartTime();
            long endTime = nBSTransactionStateC.getEndTime();
            if (endTime < a()) {
                list.add(new o(startTime, endTime, true));
            }
        }
        if (nBSUnit.getChildren().isEmpty()) {
            return;
        }
        Iterator<UUID> it = nBSUnit.getChildren().iterator();
        while (it.hasNext()) {
            NBSUnit nBSUnit2 = this.f36457c.get(it.next());
            if (nBSUnit2 != null) {
                list.add(new o(nBSUnit2.entryTimestamp, nBSUnit2.exitTimestamp, e(nBSUnit2)));
                i2--;
                a(nBSUnit2, list, i2);
            }
        }
    }

    public boolean a(NBSUnit nBSUnit, int i2) {
        if (nBSUnit == null) {
            return false;
        }
        return nBSUnit.isUnitCanAdd(i2, 200);
    }
}
