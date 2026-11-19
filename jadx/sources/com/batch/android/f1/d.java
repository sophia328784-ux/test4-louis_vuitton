package com.batch.android.f1;

import android.content.Context;
import com.batch.android.BatchPushRegistration;
import com.batch.android.e.w;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public class d extends e {
    private BatchPushRegistration d;

    public d(Context context, BatchPushRegistration batchPushRegistration) {
        super(context, f.PUSH);
        if (batchPushRegistration != null) {
            this.d = batchPushRegistration;
        } else {
            r81.d("registration==null");
            throw null;
        }
    }

    private int f() {
        return w.a(b(), com.batch.android.n.d.a()) ? 15 : 0;
    }

    @Override // com.batch.android.f1.e
    public JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        jSONObjectE.put("tok", this.d.getToken());
        jSONObjectE.put("provider", this.d.getProvider());
        jSONObjectE.put("senderid", this.d.getSenderID() != null ? this.d.getSenderID() : JSONObject.NULL);
        jSONObjectE.put("gcpprojectid", this.d.getGcpProjectID() != null ? this.d.getGcpProjectID() : JSONObject.NULL);
        jSONObjectE.put("nty", f());
        return jSONObjectE;
    }
}
