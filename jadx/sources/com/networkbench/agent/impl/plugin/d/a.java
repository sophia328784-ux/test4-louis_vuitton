package com.networkbench.agent.impl.plugin.d;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public double a(double[] dArr) {
        double d = 0.0d;
        for (double d2 : dArr) {
            d += d2;
        }
        return d;
    }

    public double b(double[] dArr) {
        return a(dArr) / ((double) dArr.length);
    }

    public double c(double[] dArr) {
        double dPow = 0.0d;
        for (double d : dArr) {
            dPow += Math.pow(d - b(dArr), 2.0d);
        }
        return dPow / ((double) dArr.length);
    }

    public double d(double[] dArr) {
        return Math.sqrt(c(dArr));
    }

    public double e(double[] dArr) {
        double dPow = 0.0d;
        for (double d : dArr) {
            dPow += Math.pow(d - b(dArr), 2.0d);
        }
        return dPow / ((double) (dArr.length - 1));
    }

    public double f(double[] dArr) {
        return Math.sqrt(e(dArr));
    }
}
