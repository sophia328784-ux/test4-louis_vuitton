package com.batch.android.f1;

import android.content.Context;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.md;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class b extends e {
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, Object> f23298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Set<String>> f23299f;

    public b(Context context, long j2, Map<String, Object> map, Map<String, Set<String>> map2) {
        super(context, f.ATTRIBUTES);
        if (j2 <= 0) {
            md.n("version <= 0");
            throw null;
        }
        if (map == null) {
            md.n("attributes==null");
            throw null;
        }
        if (map2 == null) {
            md.n("tags==null");
            throw null;
        }
        this.d = j2;
        this.f23298e = map;
        this.f23299f = map2;
    }

    @Override // com.batch.android.f1.e
    public JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        jSONObjectE.put("ver", this.d);
        jSONObjectE.put("tags", new JSONObject(this.f23299f));
        jSONObjectE.put("attrs", new JSONObject(this.f23298e));
        return jSONObjectE;
    }
}
