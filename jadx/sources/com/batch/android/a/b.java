package com.batch.android.a;

import android.content.Context;
import com.batch.android.FailReason;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.z;
import defpackage.md;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class b extends c implements l0 {
    private static final String w = "AttributesSendWebservice";
    private long s;
    private Map<String, Object> t;
    private Map<String, Set<String>> u;
    private com.batch.android.n1.b v;

    public b(Context context, long j2, Map<String, Object> map, Map<String, Set<String>> map2, com.batch.android.n1.b bVar) throws MalformedURLException {
        super(context, o0.c.POST, com.batch.android.f.d.d, new String[0]);
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
        if (bVar == null) {
            md.n("listener==null");
            throw null;
        }
        this.v = bVar;
        this.s = j2;
        this.t = map;
        this.u = map2;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.Q;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.R;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.P;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.K;
    }

    @Override // com.batch.android.a.d
    public String H() {
        return z.J;
    }

    @Override // com.batch.android.a.c
    public List<com.batch.android.f1.e> I() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new com.batch.android.f1.b(this.f23130e, this.s, this.t, this.u));
        return arrayList;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/attrsendws";
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.M;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.L;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            t.c(w, "Attributes send webservice started");
            try {
                c(D());
                com.batch.android.g1.b bVar = (com.batch.android.g1.b) a(com.batch.android.g1.b.class, com.batch.android.f1.f.ATTRIBUTES);
                if (bVar == null) {
                    throw new NullPointerException("Missing attributes send response");
                }
                t.c(w, "Attributes send webservice ended");
                this.v.a(bVar);
            } catch (o0.d e2) {
                t.c(e2.b().toString(), e2.getCause());
                this.v.a(e2.a());
            }
        } catch (Exception e3) {
            t.c(w, "Error while reading response", e3);
            this.v.a(FailReason.UNEXPECTED_ERROR);
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.N;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.O;
    }
}
