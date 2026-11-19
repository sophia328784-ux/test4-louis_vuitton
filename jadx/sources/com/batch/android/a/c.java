package com.batch.android.a;

import android.content.Context;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.json.JSONArray;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.a61;
import defpackage.md;
import defpackage.tr;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class c extends d {
    private static final String r = "BatchQueryWebservice";
    private List<com.batch.android.f1.e> p;
    private List<com.batch.android.g1.e> q;

    /* JADX INFO: loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f22862a;

        static {
            int[] iArr = new int[com.batch.android.f1.f.values().length];
            f22862a = iArr;
            try {
                iArr[com.batch.android.f1.f.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22862a[com.batch.android.f1.f.TRACKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22862a[com.batch.android.f1.f.PUSH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22862a[com.batch.android.f1.f.ATTRIBUTES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22862a[com.batch.android.f1.f.ATTRIBUTES_CHECK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f22862a[com.batch.android.f1.f.LOCAL_CAMPAIGNS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public c(Context context, o0.c cVar, String str, String... strArr) throws MalformedURLException {
        super(context, cVar, str, strArr);
    }

    private com.batch.android.g1.e a(com.batch.android.f1.f fVar) {
        for (com.batch.android.g1.e eVar : this.q) {
            if (eVar.b() == fVar) {
                return eVar;
            }
        }
        return null;
    }

    private void b(JSONObject jSONObject) throws IllegalStateException, JSONException {
        com.batch.android.h1.e fVar;
        com.batch.android.h1.e eVar;
        if (!jSONObject.has("queries") || jSONObject.isNull("queries")) {
            a61.o("Missing queries attribute in response");
            return;
        }
        JSONArray jSONArray = jSONObject.getJSONArray("queries");
        if (jSONArray.length() != this.p.size()) {
            throw new IllegalStateException("Number of queries and responses mismatch(" + this.p.size() + " queries / " + jSONArray.length() + " responses)");
        }
        this.q = new ArrayList(jSONArray.length());
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
            String string = jSONObject2.getString(com.batch.android.s.b.a.f24015b);
            com.batch.android.f1.e eVarB = b(string);
            if (eVarB == null) {
                md.k(tr.g("Unable to find query with ID ", string));
                return;
            }
            switch (a.f22862a[eVarB.d().ordinal()]) {
                case 1:
                    fVar = new com.batch.android.h1.f(jSONObject2);
                    break;
                case 2:
                    fVar = new com.batch.android.h1.g(jSONObject2);
                    break;
                case 3:
                    fVar = new com.batch.android.h1.d(jSONObject2);
                    break;
                case 4:
                    fVar = new com.batch.android.h1.b(jSONObject2);
                    break;
                case 5:
                    fVar = new com.batch.android.h1.a(jSONObject2);
                    break;
                case 6:
                    fVar = new com.batch.android.h1.c(jSONObject2);
                    break;
                default:
                    eVar = null;
                    continue;
                    this.q.add(eVar.a());
                    break;
            }
            eVar = fVar;
            this.q.add(eVar.a());
        }
    }

    public abstract List<com.batch.android.f1.e> I();

    public void c(JSONObject jSONObject) throws IllegalStateException, JSONException {
        a(jSONObject);
        b(jSONObject);
    }

    @Override // com.batch.android.a.d, com.batch.android.e.o0
    public com.batch.android.b1.g<JSONObject> w() {
        com.batch.android.b1.g<JSONObject> gVarW = super.w();
        JSONObject jSONObject = gVarW == null ? new JSONObject() : gVarW.h();
        if (this.p == null) {
            List<com.batch.android.f1.e> listI = I();
            this.p = listI;
            if (listI == null || listI.isEmpty()) {
                md.k("Cannot create a WS without any query");
                return null;
            }
        }
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<com.batch.android.f1.e> it = this.p.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().e());
            }
            jSONObject.put("queries", jSONArray);
        } catch (Exception e2) {
            t.c(r, "Error while adding queries to WS body", e2);
        }
        return new com.batch.android.b1.b(jSONObject);
    }

    public <T extends com.batch.android.g1.e> T a(Class<T> cls, com.batch.android.f1.f fVar) throws ClassCastException {
        if (this.q != null) {
            T t = (T) a(fVar);
            if (t == null) {
                return null;
            }
            return t;
        }
        md.k("You forgot to call parseResponse method");
        return null;
    }

    private com.batch.android.f1.e b(String str) {
        for (com.batch.android.f1.e eVar : this.p) {
            if (eVar.c().equals(str)) {
                return eVar;
            }
        }
        return null;
    }
}
