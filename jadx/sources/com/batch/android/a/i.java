package com.batch.android.a;

import android.content.Context;
import com.batch.android.e.l0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.u;
import com.batch.android.e.z;
import defpackage.r81;
import java.net.MalformedURLException;

/* JADX INFO: loaded from: classes.dex */
class i extends u implements l0 {
    private static final String p = "MetricWebservice";
    private final com.batch.android.n1.f o;

    public i(Context context, com.batch.android.n1.f fVar, com.batch.android.b1.e eVar, String... strArr) throws MalformedURLException {
        super(context, eVar, com.batch.android.f.d.f23281i, strArr);
        if (fVar != null) {
            this.o = fVar;
        } else {
            r81.d("Listener is null");
            throw null;
        }
    }

    @Override // com.batch.android.e.u, com.batch.android.e.o0
    public String C() {
        return z.J0;
    }

    @Override // com.batch.android.e.l0
    public String a() {
        return "Batch/metricsws";
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        t.c(p, "Webservice started");
        try {
            k();
            this.o.onSuccess();
        } catch (o0.d e2) {
            this.o.a(e2);
        }
    }
}
