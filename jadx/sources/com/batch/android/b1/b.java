package com.batch.android.b1;

import com.batch.android.json.JSONObject;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public class b implements g<JSONObject> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JSONObject f22977a;

    public b(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f22977a = jSONObject;
        } else {
            r81.d("Null data");
            throw null;
        }
    }

    @Override // com.batch.android.b1.g
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JSONObject h() {
        return this.f22977a;
    }

    @Override // com.batch.android.b1.g
    public byte[] g() {
        return com.batch.android.e.b.a(this.f22977a.toString());
    }

    @Override // com.batch.android.b1.g
    public String i() {
        return InitUrlConnection.CONTENT_TYPE_VALUE;
    }

    @Override // com.batch.android.b1.g
    public boolean isEmpty() {
        JSONObject jSONObject = this.f22977a;
        return jSONObject == null || jSONObject.length() == 0;
    }

    public b() {
        this(new JSONObject());
    }
}
