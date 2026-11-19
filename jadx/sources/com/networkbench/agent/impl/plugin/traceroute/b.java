package com.networkbench.agent.impl.plugin.traceroute;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static e f38141a = f.a();
    private static final String d = "traceroute to";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f38142b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f38143c = "";

    public String a() {
        return this.f38143c;
    }

    public int b() {
        return this.f38142b;
    }

    public String c() {
        try {
            if (!this.f38143c.contains(d)) {
                return "";
            }
            String str = this.f38143c.split("\n")[0];
            f38141a.a("hostInfo:" + str);
            return str.substring(str.indexOf("(") + 1, str.indexOf(")"));
        } catch (Throwable th) {
            f38141a.a("parseIpFromResult error", th);
            return "";
        }
    }

    public ArrayList<String> d() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            String[] strArrSplit = this.f38143c.split("\n");
            if (strArrSplit.length > 1) {
                for (int i2 = 1; i2 < strArrSplit.length; i2++) {
                    arrayList.add(strArrSplit[i2]);
                }
            }
            return arrayList;
        } catch (Exception e2) {
            f38141a.a("parseDetailFromResult error", e2);
            return arrayList;
        }
    }
}
