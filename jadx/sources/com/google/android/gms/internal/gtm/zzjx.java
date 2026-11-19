package com.google.android.gms.internal.gtm;

import defpackage.fc;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f30146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzkg f30147b;

    public /* synthetic */ zzjx(Map map, zzkg zzkgVar) {
        this.f30146a = Collections.unmodifiableMap(map);
        this.f30147b = zzkgVar;
    }

    public final String toString() {
        return fc.i("Properties: ", String.valueOf(this.f30146a), " pushAfterEvaluate: ", String.valueOf(this.f30147b));
    }
}
