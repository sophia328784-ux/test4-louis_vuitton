package com.batch.android.f1;

import android.content.Context;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.f0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c extends e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f23300e = "LocalCampaignsQuery";
    private Map<String, Integer> d;

    public c(com.batch.android.s.a aVar, Context context) {
        super(context, f.LOCAL_CAMPAIGNS);
        this.d = new HashMap();
        List<com.batch.android.t.b> listD = aVar.d();
        com.batch.android.s.e eVarH = aVar.h();
        ArrayList arrayList = new ArrayList(listD.size());
        Iterator<com.batch.android.t.b> it = listD.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f24039a);
        }
        try {
            this.d.putAll(aVar.e() == com.batch.android.g1.c.EnumC0054c.CEP ? eVarH.a(arrayList, f0.a().b(context)) : eVarH.a(arrayList));
        } catch (com.batch.android.s.f unused) {
            t.c(f23300e, "View tracker unavailable: can't send view counts to the backend.");
        }
    }

    @Override // com.batch.android.f1.e
    public JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Integer> entry : this.d.entrySet()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.batch.android.s.b.a.f24018f, entry.getValue());
            jSONObject.put(entry.getKey(), jSONObject2);
        }
        jSONObjectE.put("views", jSONObject);
        return jSONObjectE;
    }
}
