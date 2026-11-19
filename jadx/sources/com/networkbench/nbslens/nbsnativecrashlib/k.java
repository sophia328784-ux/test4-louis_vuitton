package com.networkbench.nbslens.nbsnativecrashlib;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f38783b = 50;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Thread f38784a;

    public k(Thread thread) {
        if (thread != null) {
            this.f38784a = thread;
        } else {
            md.n("error param");
            throw null;
        }
    }

    public StringBuilder a() {
        StringBuilder sb = new StringBuilder();
        StackTraceElement[] stackTrace = this.f38784a.getStackTrace();
        int i2 = 0;
        for (int i3 = 0; i3 < stackTrace.length; i3++) {
            if (i2 >= f38783b) {
                sb.append("... ");
                sb.append(stackTrace.length - i3);
                sb.append(" more\n");
                return sb;
            }
            i2++;
            sb.append("1##at " + stackTrace[i3] + "\n");
        }
        return sb;
    }
}
