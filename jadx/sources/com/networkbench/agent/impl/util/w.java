package com.networkbench.agent.impl.util;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f38414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f38415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38416c;
    private int d;

    public w(String str) throws Exception {
        if (TextUtils.isEmpty(str)) {
            throw new Exception();
        }
        this.f38414a = str;
        d();
    }

    private void d() throws Exception {
        String[] strArrSplit = this.f38414a.split("/")[1].split("\\.");
        this.f38415b = Integer.valueOf(strArrSplit[0]).intValue();
        this.f38416c = Integer.valueOf(strArrSplit[1]).intValue();
        this.d = Integer.valueOf(strArrSplit[2]).intValue();
    }

    public int a() {
        return this.f38415b;
    }

    public int b() {
        return this.f38416c;
    }

    public int c() {
        return this.d;
    }
}
