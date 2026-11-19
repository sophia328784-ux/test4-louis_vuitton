package com.batch.android.c1;

import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f23016b;

    public c(String str) {
        this.f23015a = str;
        this.f23016b = str == null;
    }

    public Object a() {
        String str = this.f23015a;
        return (str == null && this.f23016b) ? JSONObject.NULL : str;
    }

    public String b() {
        return this.f23015a;
    }
}
