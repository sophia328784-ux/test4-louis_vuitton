package com.networkbench.agent.impl.performance.a.c;

import android.util.Pair;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f37713c;
    private double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Pair<String, Double>> f37714e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f37711a = "cpuMetrics";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f37715f = System.currentTimeMillis();

    public f(String str, double d, double d2) {
        this.f37712b = str;
        this.f37713c = d;
        this.d = d2;
    }

    private void a(com.networkbench.agent.impl.performance.a.b bVar, List<Pair<String, Double>> list) {
        Object obj;
        Object obj2;
        if (list == null || list.isEmpty()) {
            return;
        }
        if (list.size() > 10) {
            list = list.subList(0, 10);
        }
        for (Pair<String, Double> pair : list) {
            if (pair != null && (obj = pair.first) != null && !((String) obj).isEmpty() && (obj2 = pair.second) != null && ((Double) obj2).doubleValue() >= 0.0d) {
                c cVar = new c();
                cVar.f37698c = "cpu.usage_rate";
                cVar.f37696a = this.f37712b;
                cVar.f37697b = ((Double) pair.second).doubleValue();
                cVar.f37699e = "thread.name";
                cVar.f37700f = (String) pair.first;
                cVar.d = this.f37715f;
                bVar.a(cVar);
            }
        }
    }

    public void a(com.networkbench.agent.impl.performance.a.b bVar) {
        if (this.f37713c > -1.0d) {
            c cVar = new c();
            cVar.f37698c = "cpu.usage_rate";
            cVar.f37697b = Double.parseDouble(String.format("%.4f", Double.valueOf(this.f37713c)));
            cVar.d = this.f37715f;
            cVar.f37696a = this.f37712b;
            bVar.a(cVar);
        }
        if (this.d > -1.0d) {
            c cVar2 = new c();
            cVar2.f37698c = "cpu.usage_speed";
            cVar2.f37697b = Double.parseDouble(String.format("%.4f", Double.valueOf(this.d)));
            cVar2.d = this.f37715f;
            bVar.a(cVar2);
        }
        a(bVar, this.f37714e);
    }

    public void a(LinkedList linkedList) {
        this.f37714e = linkedList;
    }
}
