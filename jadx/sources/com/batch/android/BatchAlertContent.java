package com.batch.android;

import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BatchAlertContent implements BatchInAppMessage.Content {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f22732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f22733c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CTA f22734e;

    public static class CTA {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f22736b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private JSONObject f22737c;

        public CTA(com.batch.android.f0.b bVar) {
            this.f22735a = bVar.d;
            this.f22736b = bVar.f23284b;
            if (bVar.f23285c != null) {
                try {
                    this.f22737c = new JSONObject(bVar.f23285c);
                } catch (JSONException unused) {
                    this.f22737c = new JSONObject();
                }
            }
        }

        public String getAction() {
            return this.f22736b;
        }

        public JSONObject getArgs() {
            return this.f22737c;
        }

        public String getLabel() {
            return this.f22735a;
        }
    }

    public BatchAlertContent(com.batch.android.h0.a aVar) {
        this.f22731a = aVar.f23287c;
        this.f22732b = aVar.f23450h;
        this.f22733c = aVar.f23463f;
        this.d = aVar.f23451i;
        com.batch.android.f0.b bVar = aVar.f23452j;
        if (bVar != null) {
            this.f22734e = new CTA(bVar);
        }
    }

    public CTA getAcceptCTA() {
        return this.f22734e;
    }

    public String getBody() {
        return this.f22733c;
    }

    public String getCancelLabel() {
        return this.d;
    }

    public String getTitle() {
        return this.f22732b;
    }

    public String getTrackingIdentifier() {
        return this.f22731a;
    }
}
