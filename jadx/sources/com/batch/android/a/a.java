package com.batch.android.a;

import android.content.Context;
import com.batch.android.FailReason;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.z;
import defpackage.md;
import defpackage.r81;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class a extends c implements l0 {
    private static final String v = "AttributesCheckWebservice";
    private long s;
    private String t;
    private com.batch.android.n1.a u;

    public a(Context context, long j2, String str, com.batch.android.n1.a aVar) throws MalformedURLException {
        super(context, o0.c.POST, com.batch.android.f.d.f23278e, new String[0]);
        if (j2 <= 0) {
            md.n("version <= 0");
            throw null;
        }
        if (str == null) {
            r81.d("transactionid==null");
            throw null;
        }
        if (aVar == null) {
            r81.d("listener==null");
            throw null;
        }
        this.u = aVar;
        this.s = j2;
        this.t = str;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.Z;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.a0;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.Y;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.T;
    }

    @Override // com.batch.android.a.d
    public String H() {
        return z.S;
    }

    @Override // com.batch.android.a.c
    public List<com.batch.android.f1.e> I() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new com.batch.android.f1.a(this.f23130e, this.s, this.t));
        return arrayList;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/pushws";
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.V;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.U;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            t.c(v, "Attributes check webservice started");
            try {
                c(D());
                com.batch.android.g1.a aVar = (com.batch.android.g1.a) a(com.batch.android.g1.a.class, com.batch.android.f1.f.ATTRIBUTES_CHECK);
                if (aVar == null) {
                    throw new NullPointerException("Missing attributes check response");
                }
                t.c(v, "Attributes check webservice ended");
                this.u.a(aVar);
            } catch (o0.d e2) {
                t.c(v, e2.b().toString(), e2.getCause());
                this.u.a(e2.a());
            }
        } catch (Exception e3) {
            t.c(v, "Error while reading response", e3);
            this.u.a(FailReason.UNEXPECTED_ERROR);
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.W;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.X;
    }
}
