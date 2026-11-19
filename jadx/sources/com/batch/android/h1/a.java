package com.batch.android.h1;

import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends e {
    public a(JSONObject jSONObject) {
        super(jSONObject);
    }

    @Override // com.batch.android.h1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.batch.android.g1.a a() throws JSONException {
        com.batch.android.g1.a aVar = new com.batch.android.g1.a(b());
        if (this.f23474a.hasNonNull("action")) {
            aVar.a(this.f23474a.getString("action"));
        }
        if (this.f23474a.hasNonNull("ver")) {
            aVar.a(this.f23474a.getLong("ver"));
        }
        if (this.f23474a.has("t") && !this.f23474a.isNull("t")) {
            aVar.a(Long.valueOf(this.f23474a.getLong("t")));
        }
        if (this.f23474a.hasNonNull("project_key")) {
            String string = this.f23474a.getString("project_key");
            if (!string.isEmpty()) {
                aVar.b(string);
            }
        }
        return aVar;
    }
}
