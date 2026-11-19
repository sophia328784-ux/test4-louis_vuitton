package com.dynatrace.android.agent;

import com.dynatrace.agent.common.InstrumentationFlavor;
import com.dynatrace.android.agent.comm.MonitoringDataPacket;
import com.dynatrace.android.agent.metrics.AndroidMetrics;
import defpackage.n00;
import defpackage.pq0;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class BasicSegment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AndroidMetrics f27255a = AndroidMetrics.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InstrumentationFlavor f27256b;

    public static class UpdatableDataGenerator {
        public static String a(int i2, String str, long j2) {
            StringBuilder sbQ = pq0.q(j2, "&tv=", "&tx=__tsNow__&mp=");
            if (i2 < 0) {
                i2 = 1;
            }
            sbQ.append(i2);
            if (str != null) {
                sbQ.append("&sr=");
                sbQ.append(str);
            }
            return sbQ.toString();
        }
    }

    static {
        boolean z = Global.f27307a;
    }

    public BasicSegment(InstrumentationFlavor instrumentationFlavor) {
        this.f27256b = instrumentationFlavor;
    }

    public static boolean a(MonitoringDataPacket monitoringDataPacket) {
        Iterator it = monitoringDataPacket.f27328b.iterator();
        while (it.hasNext()) {
            if (((String) it.next()).contains("&pa=0")) {
                monitoringDataPacket.f27327a = n00.r(monitoringDataPacket.f27327a, "&nu=1", new StringBuilder());
                return true;
            }
        }
        return false;
    }
}
