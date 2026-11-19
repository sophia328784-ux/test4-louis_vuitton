package com.batch.android.p;

import com.batch.android.Batch;
import com.batch.android.BatchMessage;
import com.batch.android.BatchPushPayload;
import com.batch.android.e.r;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b implements Batch.EventDispatcher.Payload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BatchMessage f23885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f23886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f23887c;
    private com.batch.android.f0.a d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f23888e;

    public b(BatchMessage batchMessage, JSONObject jSONObject, JSONObject jSONObject2, com.batch.android.f0.a aVar, String str) {
        this.f23885a = batchMessage;
        this.f23886b = jSONObject;
        this.f23887c = jSONObject2;
        this.d = aVar;
        this.f23888e = str;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public String getCustomValue(String str) {
        if (this.f23887c == null || r.z.equals(str)) {
            return null;
        }
        return this.f23887c.reallyOptString(str, null);
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public String getDeeplink() {
        JSONObject jSONObject;
        com.batch.android.f0.a aVar = this.d;
        if (aVar == null || !com.batch.android.b.b.f22944c.equals(aVar.f23284b) || (jSONObject = this.d.f23285c) == null) {
            return null;
        }
        return jSONObject.reallyOptString(com.batch.android.b.b.d, null);
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public BatchMessage getMessagingPayload() {
        return this.f23885a;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public BatchPushPayload getPushPayload() {
        return null;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public String getTrackingId() {
        JSONObject jSONObject = this.f23886b;
        if (jSONObject == null) {
            return null;
        }
        String strReallyOptString = jSONObject.reallyOptString("did", null);
        return strReallyOptString != null ? strReallyOptString : this.f23886b.reallyOptString("trackingId", null);
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public String getWebViewAnalyticsID() {
        return this.f23888e;
    }

    @Override // com.batch.android.Batch.EventDispatcher.Payload
    public boolean isPositiveAction() {
        com.batch.android.f0.a aVar = this.d;
        return (aVar == null || aVar.a()) ? false : true;
    }

    public b(BatchMessage batchMessage, JSONObject jSONObject, JSONObject jSONObject2) {
        this(batchMessage, jSONObject, jSONObject2, null);
    }

    public b(BatchMessage batchMessage, JSONObject jSONObject, JSONObject jSONObject2, com.batch.android.f0.a aVar) {
        this(batchMessage, jSONObject, jSONObject2, aVar, null);
    }
}
