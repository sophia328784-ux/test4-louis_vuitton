package com.batch.android.y;

import com.batch.android.json.JSONObject;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class a implements com.batch.android.t.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f24210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f24211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f24212c;

    public a(String str, String str2, JSONObject jSONObject) {
        this.f24210a = str.toUpperCase(Locale.US);
        this.f24211b = str2;
        this.f24212c = jSONObject;
    }

    public boolean a(String str, String str2, JSONObject jSONObject) {
        if (!this.f24210a.equalsIgnoreCase(str)) {
            return false;
        }
        String str3 = this.f24211b;
        if (str3 != null && !str3.equalsIgnoreCase(str2)) {
            return false;
        }
        JSONObject jSONObject2 = this.f24212c;
        if (jSONObject2 != null) {
            return com.batch.android.r.a.a(jSONObject2, jSONObject);
        }
        return true;
    }

    @Override // com.batch.android.t.b.c
    public String k() {
        return "EVENT";
    }

    public a(String str, String str2) {
        this.f24210a = str.toUpperCase(Locale.US);
        this.f24211b = str2;
    }
}
