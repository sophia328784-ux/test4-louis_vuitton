package com.batch.android.g1;

import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.batch.android.f1.f f23427b;

    public e(com.batch.android.f1.f fVar, String str) {
        if (str == null) {
            r81.d("queryID==null");
            throw null;
        }
        if (fVar == null) {
            r81.d("queryType==null");
            throw null;
        }
        this.f23426a = str;
        this.f23427b = fVar;
    }

    public String a() {
        return this.f23426a;
    }

    public com.batch.android.f1.f b() {
        return this.f23427b;
    }
}
