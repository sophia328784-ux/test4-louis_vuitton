package com.batch.android.a;

import android.content.Context;
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
final class l extends c implements l0 {
    private static final String v = "TrackerWebservice";
    private com.batch.android.n1.i s;
    private List<com.batch.android.o.b> t;
    private boolean u;

    public l(Context context, com.batch.android.n1.i iVar, List<com.batch.android.o.b> list, boolean z) throws MalformedURLException {
        super(context, o0.c.POST, com.batch.android.f.d.f23276b, new String[0]);
        if (iVar == null) {
            r81.d("listener==null");
            throw null;
        }
        if (list == null || list.isEmpty()) {
            r81.d("events is empty");
            throw null;
        }
        this.s = iVar;
        this.t = new ArrayList(list);
        this.u = z;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.q;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.r;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.p;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.f23203k;
    }

    @Override // com.batch.android.a.d
    public String H() {
        return z.f23202j;
    }

    @Override // com.batch.android.a.c
    public List<com.batch.android.f1.e> I() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new com.batch.android.f1.h(this.f23130e, this.t));
        return arrayList;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/trackerws";
    }

    @Override // com.batch.android.e.o0
    public boolean i() {
        return this.u;
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.m;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.l;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            t.c(v, "tracker webservice started");
            try {
                c(D());
                t.c(v, "tracker webservice ended");
                this.s.a(this.t);
            } catch (o0.d e2) {
                t.c(v, "Error on TrackerWebservice : " + e2.b().toString(), e2.getCause());
                this.s.a(e2.a(), this.t);
            }
        } catch (Exception e3) {
            t.c(v, "Error while reading TrackerWebservice response", e3);
            this.s.a(FailReason.UNEXPECTED_ERROR, this.t);
        } finally {
            this.s.a();
        }
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.n;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.o;
    }
}
