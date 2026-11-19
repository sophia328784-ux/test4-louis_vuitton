package com.networkbench.agent.impl.performance.a.b;

import android.util.Pair;
import com.networkbench.agent.impl.performance.a.a.b;
import com.networkbench.agent.impl.performance.a.c;
import com.networkbench.agent.impl.performance.a.c.f;
import com.networkbench.agent.impl.performance.a.c.g;
import com.networkbench.agent.impl.performance.a.d.e;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.networkbench.agent.impl.performance.a.b.c.a f37621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f37622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f37623c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f37624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b f37625f;
    public e g;

    public a(e eVar) {
        this.g = eVar;
    }

    private static LinkedList a(float f2, Map<Integer, g> map, Map<Integer, g> map2) {
        g gVar;
        if (map.isEmpty() || map2.isEmpty() || f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (Map.Entry<Integer, g> entry : map.entrySet()) {
            g value = entry.getValue();
            if (value != null && (gVar = map2.get(entry.getKey())) != null && gVar.f37717b.equals(value.f37717b)) {
                double d = (gVar.f37718c - value.f37718c) / f2;
                if (d != 0.0d) {
                    linkedList.add(new Pair(gVar.f37717b, Double.valueOf(String.format("%.4f", Double.valueOf(d)))));
                }
            }
        }
        if (linkedList.isEmpty()) {
            com.networkbench.agent.impl.c.g.z("CpuDataCollector calculateCpuUsage threadCpuUsageList.isEmpty()");
            return linkedList;
        }
        Collections.sort(linkedList, new Comparator<Pair>() { // from class: com.networkbench.agent.impl.performance.a.b.a.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Pair pair, Pair pair2) {
                Object obj;
                if (pair.second == null || (obj = pair2.second) == null) {
                    return 0;
                }
                return (int) (Math.round(((Double) obj).doubleValue() * 100.0d) - Math.round(((Double) pair.second).doubleValue() * 100.0d));
            }
        });
        return linkedList;
    }

    public final void a(float f2, Map<Integer, g> map, Map<Integer, g> map2, f fVar) {
        fVar.a(a(f2, map, map2));
        fVar.a(c.b().d());
    }
}
