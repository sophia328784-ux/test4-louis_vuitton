package com.batch.android.b1;

import android.content.Context;
import com.batch.android.a.n;
import com.batch.android.e.t;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.a0;
import com.batch.android.n.f0;
import com.batch.android.n.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b {
    private static final String d = "LocalCampaignsJITPostDataProvider";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f22978e = "ids";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f22979f = "campaigns";
    private static final String g = "attributes";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f22980h = "views";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f22981i = "count";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f22982j = "eligibleCampaigns";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Collection<com.batch.android.t.b> f22983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.batch.android.g1.c.EnumC0054c f22984c;

    public c(Collection<com.batch.android.t.b> collection, com.batch.android.g1.c.EnumC0054c enumC0054c) {
        this.f22983b = collection;
        this.f22984c = enumC0054c;
    }

    @Override // com.batch.android.b1.b, com.batch.android.b1.g
    /* JADX INFO: renamed from: a */
    public JSONObject h() {
        String strB;
        com.batch.android.s.e eVarH = com.batch.android.n.f.a().h();
        JSONObject jSONObject = new JSONObject();
        Object jSONObject2 = new JSONObject();
        Context contextC = z.a().c();
        if (contextC != null) {
            jSONObject2 = n.b(contextC);
            strB = f0.a().b(contextC);
        } else {
            strB = null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<com.batch.android.t.b> it = this.f22983b.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f24039a);
        }
        Object jSONArray = new JSONArray((Collection) arrayList);
        JSONObject jSONObject3 = new JSONObject();
        try {
            for (Map.Entry<String, Integer> entry : (this.f22984c == com.batch.android.g1.c.EnumC0054c.CEP ? eVarH.a(arrayList, strB) : eVarH.a(arrayList)).entrySet()) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("count", entry.getValue());
                jSONObject3.put(entry.getKey(), jSONObject4);
            }
        } catch (JSONException e2) {
            t.c(d, "Error while serializing view counts", e2);
        } catch (com.batch.android.s.f e3) {
            t.c(d, "Could not get view tracker count", e3);
        }
        if (this.f22984c == com.batch.android.g1.c.EnumC0054c.MEP) {
            try {
                jSONObject.put("attributes", new JSONObject(com.batch.android.l1.d.a(a0.a(contextC).getAttributes(), true)));
            } catch (JSONException e4) {
                t.c(d, "Error while serializing attributes", e4);
            }
        }
        try {
            jSONObject.put(f22978e, jSONObject2);
            jSONObject.put(f22979f, jSONArray);
            jSONObject.put(f22980h, jSONObject3);
        } catch (JSONException e5) {
            t.c(d, "Error while serializing JIT request", e5);
        }
        return jSONObject;
    }

    @Override // com.batch.android.b1.b, com.batch.android.b1.g
    public byte[] g() {
        return com.batch.android.e.b.a(h().toString());
    }

    public List<String> a(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray(f22982j);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jSONArray.getString(i2));
        }
        return arrayList;
    }
}
