package com.batch.android.a;

import android.content.Context;
import com.batch.android.BatchPushRegistration;
import com.batch.android.FailReason;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.z;
import defpackage.r81;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class j extends c implements l0 {
    private static final String u = "PushWebservice";
    private final BatchPushRegistration s;
    private final com.batch.android.n1.g t;

    public j(Context context, BatchPushRegistration batchPushRegistration, com.batch.android.n1.g gVar) throws MalformedURLException {
        super(context, o0.c.POST, com.batch.android.f.d.f23277c, new String[0]);
        if (batchPushRegistration == null) {
            r81.d("registration==null");
            throw null;
        }
        if (gVar == null) {
            r81.d("listener==null");
            throw null;
        }
        this.t = gVar;
        this.s = batchPushRegistration;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.z;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.A;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.y;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.t;
    }

    @Override // com.batch.android.a.d
    public String H() {
        return z.s;
    }

    @Override // com.batch.android.a.c
    public List<com.batch.android.f1.e> I() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new com.batch.android.f1.d(this.f23130e, this.s));
        return arrayList;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/pushws";
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.v;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.u;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            t.c(u, "push webservice started");
            try {
                c(D());
                if (((com.batch.android.g1.d) a(com.batch.android.g1.d.class, com.batch.android.f1.f.PUSH)) == null) {
                    throw new NullPointerException("Missing push response");
                }
                t.c(u, "push webservice ended");
                this.t.onSuccess();
            } catch (o0.d e2) {
                t.c(u, "Error on PushWebservice : " + e2.b().toString(), e2.getCause());
                this.t.a(e2.a());
            }
        } catch (Exception e3) {
            t.c(u, "Error while reading PushWebservice response", e3);
            this.t.a(FailReason.UNEXPECTED_ERROR);
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.w;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.x;
    }
}
