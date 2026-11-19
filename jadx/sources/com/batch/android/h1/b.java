package com.batch.android.h1;

import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends e {
    public b(JSONObject jSONObject) {
        super(jSONObject);
    }

    @Override // com.batch.android.h1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.batch.android.g1.b a() throws JSONException {
        com.batch.android.g1.b bVar = new com.batch.android.g1.b(b());
        if (this.f23474a.hasNonNull("trid")) {
            bVar.b(this.f23474a.getString("trid"));
        }
        if (this.f23474a.hasNonNull("ver")) {
            bVar.a(this.f23474a.getLong("ver"));
        }
        if (this.f23474a.hasNonNull("project_key")) {
            String string = this.f23474a.getString("project_key");
            if (!string.isEmpty()) {
                bVar.a(string);
            }
        }
        return bVar;
    }
}
