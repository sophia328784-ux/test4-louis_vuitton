package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.asyncaction.q;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.data.type.r;
import com.networkbench.agent.impl.harvest.HarvestAdapter;
import com.networkbench.agent.impl.harvest.type.MetricCategory;
import com.networkbench.agent.impl.util.Logger;
import defpackage.o60;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class NBSTraceEngine extends HarvestAdapter {
    private static final String TAG = "NBSTraceEngine";
    private static final e log = f.a();

    public static void enterMethod(String str, ArrayList<String> arrayList) {
        try {
            q.a().c().enterMethod(q.a().a(str, getSegmentType(arrayList).getValue(), r.OTHER_UNIT));
        } catch (com.networkbench.agent.impl.asyncaction.f unused) {
        } catch (Throwable th) {
            g.b(str + " has an error : ", th);
        }
    }

    public static NBSTraceUnit enterMethodWithTime(String str, int i2, r rVar, long j2) {
        try {
            NBSTraceUnit nBSTraceUnitA = q.a().a(str, i2, rVar);
            nBSTraceUnitA.entryTimestamp = j2;
            q.a().c().enterMethod(nBSTraceUnitA);
            return nBSTraceUnitA;
        } catch (com.networkbench.agent.impl.asyncaction.f unused) {
            return null;
        } catch (Throwable th) {
            Logger.debug(TAG, "error happend in enterMethod0 :" + th);
            return null;
        }
    }

    public static void exitCustomApiMethod(String str) {
        try {
            g.b("exitCustomApiMethod");
            q.a().c().exitMethodCustom(str, q.a().d());
        } catch (com.networkbench.agent.impl.asyncaction.f unused) {
        } catch (Throwable th) {
            g.b("exitCustomApiMethod has an error : ", th);
        }
    }

    public static void exitMethod() {
        try {
            exitMethodWithTime(System.currentTimeMillis());
        } catch (Throwable th) {
            g.b("exitMethod has an error : ", th);
        }
    }

    public static void exitMethodWithTime(long j2) {
        try {
            NBSUnit nBSUnitD = q.a().d();
            q.a().c().exitMethod(nBSUnitD);
            if (nBSUnitD == null) {
                return;
            }
            nBSUnitD.exitTimestamp = j2;
        } catch (com.networkbench.agent.impl.asyncaction.f unused) {
        } catch (Throwable th) {
            Logger.warning(TAG, "NBSTraceEngine exitMethod has an error :" + th);
        }
    }

    public static SlowStartState.SegmentType getSegmentType(List<String> list) {
        if (list != null && list.size() == 3) {
            String str = list.get(2);
            if (str.equalsIgnoreCase(MetricCategory.IMAGE.getCategoryName())) {
                return SlowStartState.SegmentType.BITMAP;
            }
            if (str.equalsIgnoreCase(MetricCategory.JSON.getCategoryName())) {
                return SlowStartState.SegmentType.JSON;
            }
            if (str.equalsIgnoreCase(MetricCategory.NETWORK.getCategoryName())) {
                return SlowStartState.SegmentType.NETWORK;
            }
            if (str.equalsIgnoreCase("DATABASE")) {
                return SlowStartState.SegmentType.DATABASE;
            }
            if (str.equalsIgnoreCase(MetricCategory.CUSTOMEVENT.getCategoryName())) {
                return SlowStartState.SegmentType.CUSTOM;
            }
        }
        return SlowStartState.SegmentType.OTHER;
    }

    public static void notifyObserverAddNetworkToSegment(NBSTransactionState nBSTransactionState) {
        try {
            q.a().c().addNetworkToTraces(nBSTransactionState, q.a().d());
        } catch (com.networkbench.agent.impl.asyncaction.f unused) {
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("error happend in notifyObserverAddNetworkToSegment :"), log);
        }
    }

    public static void enterMethod(String str, int i2, r rVar) {
        try {
            enterMethodWithTime(str, i2, rVar, System.currentTimeMillis());
        } catch (Throwable th) {
            g.b(str + " has an error : ", th);
        }
    }

    public static void enterMethod(String str, int i2) {
        try {
            enterMethod(str, i2, r.OTHER_UNIT);
        } catch (Throwable th) {
            g.b(str + " has an error : ", th);
        }
    }
}
