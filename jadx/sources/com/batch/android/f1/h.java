package com.batch.android.f1;

import android.content.Context;
import com.batch.android.e.o0;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h extends e {
    private List<com.batch.android.o.b> d;

    public h(Context context, List<com.batch.android.o.b> list) {
        super(context, f.TRACKING);
        if (list == null || list.isEmpty()) {
            r81.d("Empty events");
            throw null;
        }
        this.d = new ArrayList(list);
    }

    @Override // com.batch.android.f1.e
    public JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        for (com.batch.android.o.b bVar : this.d) {
            JSONObject jSONObject2 = new JSONObject();
            Calendar calendar = Calendar.getInstance(bVar.i());
            calendar.setTime(bVar.a());
            jSONObject2.put(com.batch.android.s.b.a.f24015b, bVar.b());
            jSONObject2.put("date", o0.a(calendar.getTime()));
            jSONObject2.put("name", bVar.c());
            if (bVar.e() != null) {
                jSONObject2.put("sDate", o0.a(bVar.e()));
            }
            String strD = bVar.d();
            jSONObject2.put("params", strD == null ? JSONObject.NULL : new JSONObject(strD));
            String strG = bVar.g();
            if (strG != null) {
                jSONObject2.put("session", strG);
            }
            if (bVar.j()) {
                jSONArray2.put(jSONObject2);
            } else {
                jSONArray.put(jSONObject2);
            }
            jSONObject2.put("ts", bVar.f());
        }
        if (jSONArray.length() > 0) {
            jSONObject.put("new", jSONArray);
        }
        if (jSONArray2.length() > 0) {
            jSONObject.put("old", jSONArray2);
        }
        jSONObjectE.put("evts", jSONObject);
        return jSONObjectE;
    }
}
