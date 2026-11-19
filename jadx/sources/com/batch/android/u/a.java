package com.batch.android.u;

import android.content.Context;
import android.text.TextUtils;
import com.batch.android.e.t;
import com.batch.android.j1.e;
import com.batch.android.json.JSONObject;
import com.batch.android.n.z;
import com.batch.android.v0.f;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.batch.android.t.b.a {
    public a(JSONObject jSONObject) {
        super(jSONObject);
    }

    @Override // com.batch.android.t.b.a
    public boolean a(com.batch.android.t.b bVar) {
        e eVarA = z.a();
        Context contextB = eVarA.b();
        if (contextB == null) {
            t.e(f.f24095i, "Could not find an activity to run the action on, falling back on context.");
            contextB = eVarA.c();
        }
        if (contextB == null) {
            t.e(f.f24095i, "Could not find any context to run the action on: action might fail.");
        }
        String strReallyOptString = this.f24048a.reallyOptString("action", null);
        if (TextUtils.isEmpty(strReallyOptString)) {
            t.a(f.f24095i, "Invalid action name, stopping.");
            return false;
        }
        JSONObject jSONObjectOptJSONObject = this.f24048a.optJSONObject("args");
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        return com.batch.android.n.a.a().a(contextB, strReallyOptString, jSONObjectOptJSONObject, null);
    }

    public static a a(JSONObject jSONObject) {
        return new a(jSONObject);
    }
}
