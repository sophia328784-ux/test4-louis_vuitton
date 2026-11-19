package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzke {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f30156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f30157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f30158c = new ArrayList();

    public zzke(int i2, Object obj) {
        this.f30156a = Integer.valueOf(i2);
        this.f30157b = obj;
    }

    public final zzkg a() {
        Integer num = this.f30156a;
        Preconditions.h(num);
        Object obj = this.f30157b;
        Preconditions.h(obj);
        return new zzkg(num, obj, this.f30158c);
    }
}
