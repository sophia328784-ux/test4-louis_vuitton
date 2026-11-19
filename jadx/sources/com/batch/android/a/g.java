package com.batch.android.a;

import android.content.Context;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.z;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.r81;
import java.net.MalformedURLException;

/* JADX INFO: loaded from: classes2.dex */
class g extends d implements l0 {
    private static final String r = "LocalCampaignsJITWebservice";
    private final com.batch.android.n1.d p;
    private final com.batch.android.b1.c q;

    public g(Context context, com.batch.android.n1.d dVar, com.batch.android.b1.c cVar, com.batch.android.g1.c.EnumC0054c enumC0054c, String... strArr) throws MalformedURLException {
        super(context, o0.c.POST, enumC0054c == com.batch.android.g1.c.EnumC0054c.MEP ? com.batch.android.f.d.f23282j : com.batch.android.f.d.f23283k, o0.a(strArr));
        if (dVar == null) {
            r81.d("Listener is null");
            throw null;
        }
        if (cVar == null) {
            r81.d("DataProvider is null");
            throw null;
        }
        this.p = dVar;
        this.q = cVar;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.s0;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.r0;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.q0;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.l0;
    }

    @Override // com.batch.android.a.d
    public String H() {
        return z.k0;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/localcampaignsjitws";
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.n0;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.m0;
    }

    @Override // java.lang.Runnable
    public void run() {
        t.c(r, "Webservice started");
        com.batch.android.u0.c cVar = com.batch.android.t0.b.f24065a;
        cVar.n();
        try {
            JSONObject jSONObjectL = l();
            cVar.m();
            com.batch.android.t0.b.f24066b.b(Payload.RESPONSE_OK).l();
            this.p.a(this.q.a(jSONObjectL));
        } catch (o0.d e2) {
            com.batch.android.t0.b.f24065a.m();
            com.batch.android.t0.b.f24066b.b("KO").l();
            t.c(r, e2.b().toString(), e2.getCause());
            this.p.a(e2);
        } catch (JSONException e3) {
            t.c(r, "Error while parsing response", e3);
            this.p.a((o0.d) null);
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.o0;
    }

    @Override // com.batch.android.a.d, com.batch.android.e.o0
    public com.batch.android.b1.g<JSONObject> w() {
        return this.q;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.p0;
    }
}
