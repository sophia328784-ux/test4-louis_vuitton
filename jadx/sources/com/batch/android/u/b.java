package com.batch.android.u;

import com.batch.android.BatchInAppMessage;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.v0.f;
import com.batch.android.v0.g;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.batch.android.t.b.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f24069b;

    public b(g gVar, JSONObject jSONObject) {
        super(jSONObject);
        this.f24069b = gVar;
    }

    @Override // com.batch.android.t.b.a
    public boolean a(com.batch.android.t.b bVar) {
        try {
            JSONObject jSONObject = new JSONObject(this.f24048a);
            if (this instanceof c) {
                jSONObject.put("eventData", bVar.f24046j);
            } else {
                jSONObject.put("ed", bVar.f24046j);
            }
            this.f24069b.a(new BatchInAppMessage(bVar.m, bVar.f24039a, bVar.f24046j, jSONObject, new JSONObject(bVar.p != null ? new JSONObject(bVar.p) : new JSONObject())));
            return true;
        } catch (JSONException e2) {
            t.c(f.f24095i, "Landing Output: Could not copy custom payload", e2);
            return false;
        }
    }

    public static b a(JSONObject jSONObject) {
        return new b(com.batch.android.n.t.a(), jSONObject);
    }
}
