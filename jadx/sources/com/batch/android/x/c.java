package com.batch.android.x;

import com.batch.android.e.t;
import com.batch.android.json.JSONObject;
import com.batch.android.v0.f;
import com.batch.android.v0.l;

/* JADX INFO: loaded from: classes2.dex */
public class c extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f24158c;

    public c(a aVar) {
        Object objOpt;
        super(aVar.f24156a, aVar.f24157b);
        JSONObject jSONObject = aVar.f24157b;
        if (jSONObject == null || (objOpt = jSONObject.opt("label")) == null) {
            return;
        }
        if (objOpt instanceof String) {
            this.f24158c = (String) objOpt;
            return;
        }
        t.c(f.f24095i, "onEventTracked Found an event label, but was not a string. Value: " + objOpt.toString());
    }

    @Override // com.batch.android.x.a, com.batch.android.x.d
    public boolean a(com.batch.android.t.b.c cVar) {
        JSONObject jSONObject = this.f24157b;
        return (cVar instanceof com.batch.android.y.a) && ((com.batch.android.y.a) cVar).a(this.f24156a, this.f24158c, jSONObject != null ? jSONObject.optJSONObject(l.f24145h) : null);
    }

    public static boolean a(a aVar) {
        return aVar.f24156a.startsWith("E.");
    }
}
