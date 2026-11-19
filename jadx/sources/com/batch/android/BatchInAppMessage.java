package com.batch.android;

import android.os.Bundle;
import android.text.TextUtils;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public class BatchInAppMessage extends BatchMessage implements InAppMessageUserActionSource {
    public static final String KIND = "inapp_campaign";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f22763i = "payload";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f22764j = "custom_payload";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f22765k = "campaign_token";
    private static final String l = "campaign_id";
    private static final String m = "campaign_event_data";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JSONObject f22766c;
    private final JSONObject d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f22767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f22768f;
    private final JSONObject g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Content f22769h;

    public interface Content {
    }

    public BatchInAppMessage(String str, String str2, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        this.f22767e = str;
        this.f22768f = str2;
        this.g = jSONObject;
        this.f22766c = jSONObject2;
        this.d = jSONObject3;
    }

    public static BatchInAppMessage a(Bundle bundle) {
        String string = bundle.getString("payload");
        String string2 = bundle.getString(f22764j);
        String string3 = bundle.getString("campaign_id");
        String string4 = bundle.getString(m);
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3) || TextUtils.isEmpty(string4)) {
            md.n("Corrupted bundle (code 1)");
            return null;
        }
        try {
            return new BatchInAppMessage(bundle.getString(f22765k), string3, new JSONObject(string4), new JSONObject(string), new JSONObject(string2));
        } catch (JSONException e2) {
            t.c(com.batch.android.v0.g.f24103i, "Unexpected error while reading a BatchInAppMessage from a bundle", e2);
            md.n("Corrupted bundle (code 2)");
            return null;
        }
    }

    @Override // com.batch.android.BatchMessage
    public JSONObject b() {
        return this.d;
    }

    @Override // com.batch.android.BatchMessage
    public JSONObject c() {
        return this.f22766c;
    }

    @Override // com.batch.android.BatchMessage
    public String d() {
        return KIND;
    }

    public String e() {
        return this.f22768f;
    }

    public JSONObject f() {
        return this.g;
    }

    public String getCampaignToken() {
        return this.f22767e;
    }

    @Override // com.batch.android.InAppMessageUserActionSource
    public JSONObject getCustomPayload() {
        if (this.d != null) {
            try {
                return new JSONObject(this.d);
            } catch (JSONException unused) {
            }
        }
        return new JSONObject();
    }

    public synchronized Content getMEPContent() {
        JSONObject jSONObject;
        try {
            if (this.f22769h == null && (jSONObject = this.f22766c) != null) {
                try {
                    com.batch.android.f0.c cVarD = com.batch.android.i0.b.d(jSONObject);
                    if (cVarD instanceof com.batch.android.h0.a) {
                        this.f22769h = new BatchAlertContent((com.batch.android.h0.a) cVarD);
                    } else if (cVarD instanceof com.batch.android.h0.g) {
                        this.f22769h = new BatchInterstitialContent((com.batch.android.h0.g) cVarD);
                    } else if (cVarD instanceof com.batch.android.h0.b) {
                        this.f22769h = new BatchBannerContent((com.batch.android.h0.b) cVarD);
                    } else if (cVarD instanceof com.batch.android.h0.d) {
                        this.f22769h = new BatchImageContent((com.batch.android.h0.d) cVarD);
                    } else if (cVarD instanceof com.batch.android.h0.f) {
                        this.f22769h = new BatchModalContent((com.batch.android.h0.f) cVarD);
                    } else if (cVarD instanceof com.batch.android.h0.h) {
                        this.f22769h = new BatchWebViewContent((com.batch.android.h0.h) cVarD);
                    }
                } catch (com.batch.android.i0.c e2) {
                    t.c(com.batch.android.v0.g.f24103i, "Could not make content", e2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f22769h;
    }

    @Override // com.batch.android.BatchMessage
    public Bundle a() {
        Bundle bundle = new Bundle();
        JSONObject jSONObject = this.f22766c;
        bundle.putString("payload", jSONObject == null ? "{}" : jSONObject.toString());
        JSONObject jSONObject2 = this.d;
        bundle.putString(f22764j, jSONObject2 != null ? jSONObject2.toString() : "{}");
        String str = this.f22767e;
        if (str != null) {
            bundle.putString(f22765k, str);
        }
        bundle.putString("campaign_id", this.f22768f);
        bundle.putString(m, this.g.toString());
        return bundle;
    }
}
