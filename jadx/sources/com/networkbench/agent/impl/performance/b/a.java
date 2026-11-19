package com.networkbench.agent.impl.performance.b;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f37744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    double f37745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    double f37746c;
    long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    HashMap<Integer, Integer> f37747e;

    public a(String str, HashMap<Integer, Integer> map, long j2) {
        this.f37744a = str;
        this.f37747e = map;
        this.d = j2;
    }

    public double a(Map<Integer, Integer> map) {
        double dPow = 0.0d;
        if (map.isEmpty()) {
            return 0.0d;
        }
        ArrayList<e> arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            int iIntValue2 = entry.getValue().intValue();
            i2 += iIntValue2;
            i3 += iIntValue * iIntValue2;
            arrayList.add(new e(a(iIntValue), iIntValue, iIntValue2));
        }
        double d = ((double) i2) + ((double) i3);
        if (d == 0.0d) {
            return 0.0d;
        }
        for (e eVar : arrayList) {
            int i4 = eVar.f37767a;
            dPow += Math.pow(2.0d, i4) * ((double) i4) * ((double) eVar.f37768b) * ((double) eVar.f37769c);
        }
        return dPow / d;
    }

    public double b() {
        return this.f37746c;
    }

    public void c() {
        try {
            HashMap<Integer, Integer> map = this.f37747e;
            if (map != null && !map.isEmpty()) {
                int iIntValue = 0;
                int iIntValue2 = 0;
                for (Map.Entry<Integer, Integer> entry : this.f37747e.entrySet()) {
                    iIntValue2 += entry.getValue().intValue();
                    iIntValue += (entry.getKey().intValue() == 0 ? entry.getValue() : Integer.valueOf((entry.getKey().intValue() * entry.getValue().intValue()) + entry.getValue().intValue())).intValue();
                }
                this.f37745b = Double.parseDouble(new DecimalFormat("#.00").format(iIntValue != 0 ? 60.0d * (((double) iIntValue2) / ((double) iIntValue)) : 60.0d));
                com.networkbench.agent.impl.c.g.a(d.f37753a, "FpsData getFpsData fps:" + this.f37745b);
                return;
            }
            this.f37745b = 60.0d;
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.a(d.f37753a, "FpsData getFpsData error:" + th.getMessage(), th);
        }
    }

    public void d() {
        HashMap<Integer, Integer> map = this.f37747e;
        if (map == null || map.isEmpty()) {
            this.f37746c = 0.0d;
            return;
        }
        this.f37746c = Double.parseDouble(new DecimalFormat("#.00").format(a(this.f37747e)));
        com.networkbench.agent.impl.c.g.a(d.f37753a, "FpsData getFpsData dropFrame:" + this.f37746c);
    }

    public double a() {
        return this.f37745b;
    }

    private int a(int i2) {
        if (i2 == 1 || i2 == 2) {
            return 1;
        }
        if (i2 >= 3 && i2 <= 6) {
            return 2;
        }
        if (i2 >= 7 && i2 <= 13) {
            return 3;
        }
        if (i2 < 14 || i2 > 24) {
            return i2 >= 25 ? 5 : 0;
        }
        return 4;
    }
}
