package com.batch.android;

import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BatchMessageAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f22794b;

    public BatchMessageAction(com.batch.android.f0.a aVar) {
        this.f22793a = aVar.f23284b;
        if (aVar.f23285c != null) {
            try {
                this.f22794b = new JSONObject(aVar.f23285c);
            } catch (JSONException unused) {
                this.f22794b = new JSONObject();
            }
        }
    }

    public String getAction() {
        return this.f22793a;
    }

    public JSONObject getArgs() {
        return this.f22794b;
    }

    public boolean isDismissAction() {
        String str = this.f22793a;
        return str == null || "batch.dismiss".equals(str);
    }
}
