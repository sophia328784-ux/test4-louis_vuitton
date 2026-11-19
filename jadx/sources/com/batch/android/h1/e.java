package com.batch.android.h1;

import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final JSONObject f23474a;

    public e(JSONObject jSONObject) {
        this.f23474a = jSONObject;
    }

    public abstract com.batch.android.g1.e a() throws JSONException;

    public String b() throws JSONException {
        return this.f23474a.getString(com.batch.android.s.b.a.f24015b);
    }
}
