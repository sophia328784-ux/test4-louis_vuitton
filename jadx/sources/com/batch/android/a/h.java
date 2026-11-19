package com.batch.android.a;

import android.content.Context;
import com.batch.android.FailReason;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.z;
import com.batch.android.json.JSONObject;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class h extends c implements l0 {
    private static final String t = "LocalCampaignsWebservice";
    private com.batch.android.n1.e s;

    public h(Context context, com.batch.android.n1.e eVar) throws MalformedURLException {
        super(context, o0.c.POST, com.batch.android.f.d.f23279f, new String[0]);
        this.s = eVar;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.i0;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.j0;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.h0;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.c0;
    }

    @Override // com.batch.android.a.d
    public String H() {
        return z.b0;
    }

    @Override // com.batch.android.a.c
    public List<com.batch.android.f1.e> I() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new com.batch.android.f1.c(com.batch.android.n.f.a(), this.f23130e));
        return arrayList;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/localcampaignsws";
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.e0;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.d0;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            t.c(t, "local campaigns webservice started");
            com.batch.android.u0.c cVar = com.batch.android.t0.b.f24067c;
            cVar.n();
            try {
                JSONObject jSONObjectD = D();
                cVar.m();
                c(jSONObjectD);
                ArrayList arrayList = new ArrayList();
                com.batch.android.g1.c cVar2 = (com.batch.android.g1.c) a(com.batch.android.g1.c.class, com.batch.android.f1.f.LOCAL_CAMPAIGNS);
                if (cVar2 == null) {
                    t.c(t, "Missing In-App Campaigns response");
                } else if (cVar2.j()) {
                    t.c(t, "Local campaigns response contains an error : ".concat(cVar2.f().toString()));
                    com.batch.android.n.f.a().b(this.f23130e);
                } else {
                    com.batch.android.n.f.a().c(this.f23130e, cVar2);
                    arrayList.add(cVar2);
                }
                t.c(t, "local campaigns webservice ended");
                this.s.a(arrayList);
            } catch (o0.d e2) {
                t.c(t, "Error while getting local campaigns list : " + e2.b().toString(), e2.getCause());
                com.batch.android.t0.b.f24067c.m();
                this.s.a(e2.a());
            }
        } catch (Exception e3) {
            t.c(t, "Error while reading LocalCampaigns response", e3);
            this.s.a(FailReason.UNEXPECTED_ERROR);
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.f0;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.g0;
    }
}
