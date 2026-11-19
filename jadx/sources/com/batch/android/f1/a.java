package com.batch.android.f1;

import android.content.Context;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public class a extends e {
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f23297e;

    public a(Context context, long j2, String str) {
        super(context, f.ATTRIBUTES_CHECK);
        if (j2 <= 0) {
            md.n("version <= 0");
            throw null;
        }
        if (str == null) {
            md.n("transactionID==null");
            throw null;
        }
        this.d = j2;
        this.f23297e = str;
    }

    @Override // com.batch.android.f1.e
    public JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        jSONObjectE.put("ver", this.d);
        jSONObjectE.put("trid", this.f23297e);
        return jSONObjectE;
    }
}
