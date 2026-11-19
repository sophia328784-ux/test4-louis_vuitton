package com.batch.android.f1;

import android.content.Context;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class g extends e {
    private boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f23309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f23310f;

    public g(Context context, boolean z, String str, boolean z2) {
        super(context, f.START);
        this.f23309e = z;
        this.f23310f = str;
        this.d = z2;
    }

    @Override // com.batch.android.f1.e
    public JSONObject e() throws JSONException {
        String str;
        JSONObject jSONObjectE = super.e();
        jSONObjectE.put("silent", !this.d);
        jSONObjectE.put("push", this.f23309e);
        if (this.f23309e && (str = this.f23310f) != null && !str.isEmpty()) {
            jSONObjectE.put("pushId", this.f23310f);
        }
        return jSONObjectE;
    }
}
