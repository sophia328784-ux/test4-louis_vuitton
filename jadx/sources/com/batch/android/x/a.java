package com.batch.android.x;

import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f24156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public JSONObject f24157b;

    public a(String str, JSONObject jSONObject) {
        this.f24156a = str;
        this.f24157b = jSONObject;
    }

    @Override // com.batch.android.x.d
    public boolean a(com.batch.android.t.b.c cVar) {
        return (cVar instanceof com.batch.android.y.a) && ((com.batch.android.y.a) cVar).a(this.f24156a, null, null);
    }
}
