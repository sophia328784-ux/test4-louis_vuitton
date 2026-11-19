package com.batch.android.a;

import android.content.Context;
import com.batch.android.BatchPushRegistration;
import com.batch.android.FailReason;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.z;
import com.batch.android.n.y;
import defpackage.r81;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class k extends c implements l0 {
    private static final String w = "StartWebservice";
    private com.batch.android.n1.h s;
    private boolean t;
    private String u;
    private boolean v;

    public k(Context context, boolean z, String str, boolean z2, com.batch.android.n1.h hVar) throws MalformedURLException {
        super(context, o0.c.POST, com.batch.android.f.d.f23275a, new String[0]);
        if (hVar == null) {
            r81.d("Null listener");
            throw null;
        }
        this.s = hVar;
        this.t = z;
        this.u = str;
        this.v = z2;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.f23200h;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.f23201i;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.g;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.f23196b;
    }

    @Override // com.batch.android.a.d
    public String H() {
        return z.f23195a;
    }

    @Override // com.batch.android.a.c
    public List<com.batch.android.f1.e> I() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.batch.android.f1.g(this.f23130e, this.t, this.u, this.v));
        BatchPushRegistration batchPushRegistrationB = y.a().b(this.f23130e);
        if (batchPushRegistrationB != null) {
            arrayList.add(new com.batch.android.f1.d(this.f23130e, batchPushRegistrationB));
        }
        return arrayList;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/startws";
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.d;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.f23197c;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            t.c(w, "start webservice started");
            try {
                c(D());
                if (((com.batch.android.g1.f) a(com.batch.android.g1.f.class, com.batch.android.f1.f.START)) == null) {
                    throw new NullPointerException("Missing start response");
                }
                t.c(w, "start webservice ended");
                this.s.onSuccess();
            } catch (o0.d e2) {
                t.c(w, "Error on StartWebservice : " + e2.b().toString(), e2.getCause());
                this.s.a(e2.a());
            }
        } catch (Exception e3) {
            t.c(w, "Error while reading StartWebservice response", e3);
            this.s.a(FailReason.UNEXPECTED_ERROR);
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.f23198e;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.f23199f;
    }
}
