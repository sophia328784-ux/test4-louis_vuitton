package com.batch.android.e;

import android.content.Context;
import defpackage.r81;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class u extends o0 implements l0 {
    private static final String n = "1.0.0";
    private final com.batch.android.b1.d<?> m;

    public u(Context context, com.batch.android.b1.d<?> dVar, String str, String... strArr) throws MalformedURLException {
        super(context, o0.c.POST, str, strArr);
        if (dVar == null || dVar.isEmpty()) {
            r81.d("Provider is empty");
            throw null;
        }
        this.m = dVar;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.F0;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.G0;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.E0;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.B0;
    }

    @Override // com.batch.android.e.o0
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public com.batch.android.b1.d<?> w() {
        return this.m;
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.D0;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.C0;
    }

    @Override // com.batch.android.e.o0
    public Map<String, String> r() {
        HashMap map = new HashMap();
        map.put("x-batch-protocol-version", n);
        map.put("x-batch-sdk-version", "3.1.1");
        return map;
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.z0;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.A0;
    }
}
