package com.batch.android;

import android.os.Bundle;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BatchLandingMessage extends BatchMessage implements PushUserActionSource {
    public static final String KIND = "landing";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f22788f = "google.";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f22789c;
    private JSONObject d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22790e = false;

    public BatchLandingMessage(Bundle bundle, JSONObject jSONObject) {
        this.f22789c = a(bundle);
        this.d = jSONObject;
    }

    private Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle.keySet()) {
            if (str != null && str.startsWith(f22788f)) {
                bundle2.remove(str);
            }
        }
        return bundle2;
    }

    @Override // com.batch.android.BatchMessage
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        for (String str : this.f22789c.keySet()) {
            Object obj = this.f22789c.get(str);
            if (obj instanceof String) {
                try {
                    jSONObject.put(str, obj.toString());
                } catch (JSONException unused) {
                }
            }
        }
        return jSONObject;
    }

    @Override // com.batch.android.BatchMessage
    public JSONObject c() {
        return this.d;
    }

    @Override // com.batch.android.BatchMessage
    public String d() {
        return KIND;
    }

    @Override // com.batch.android.PushUserActionSource
    public Bundle getPushBundle() {
        return new Bundle(this.f22789c);
    }

    public boolean isDisplayedFromInbox() {
        return this.f22790e;
    }

    @Override // com.batch.android.BatchMessage
    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putBundle(Batch.Push.PAYLOAD_KEY, this.f22789c);
        return bundle;
    }

    public void a(boolean z) {
        this.f22790e = z;
    }
}
