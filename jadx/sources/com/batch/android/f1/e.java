package com.batch.android.f1;

import android.content.Context;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.r81;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f23301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f23302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f23303c;

    public e(Context context, f fVar) {
        if (context == null) {
            r81.d("context==null");
            throw null;
        }
        if (fVar == null) {
            r81.d("type==null");
            throw null;
        }
        this.f23301a = context.getApplicationContext();
        this.f23302b = a();
        this.f23303c = fVar;
    }

    private static String a() {
        return UUID.randomUUID().toString();
    }

    public Context b() {
        return this.f23301a;
    }

    public String c() {
        return this.f23302b;
    }

    public f d() {
        return this.f23303c;
    }

    public JSONObject e() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(com.batch.android.s.b.a.f24015b, this.f23302b);
        jSONObject.put("type", this.f23303c.toString());
        return jSONObject;
    }
}
