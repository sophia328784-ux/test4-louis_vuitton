package com.networkbench.agent.impl.util.c;

import android.os.Looper;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f38368b = 1048576;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38369a;

    public f(int i2) {
        this.f38369a = i2;
    }

    public String a(Map<Thread, StackTraceElement[]> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Thread, StackTraceElement[]> entry : map.entrySet()) {
            if (sb.length() >= 1048576) {
                break;
            }
            Thread key = entry.getKey();
            sb.append("--- ");
            sb.append(key.getName());
            sb.append(" ---");
            sb.append("\r\n");
            sb.append(a(entry.getValue()));
        }
        return sb.toString();
    }

    private String a(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb = new StringBuilder();
        int length = stackTraceElementArr.length;
        int i2 = this.f38369a;
        if (i2 < length) {
            length = i2;
        }
        for (int i3 = 0; i3 < length; i3++) {
            sb.append("\tat " + stackTraceElementArr[i3] + "\n");
        }
        return sb.toString();
    }

    public String a() {
        for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
            if (entry.getKey().getName().equals(Looper.getMainLooper().getThread().getName())) {
                return a(entry.getValue());
            }
        }
        return "";
    }
}
