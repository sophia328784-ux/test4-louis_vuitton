package com.perfectcorp.thirdparty.com.google.common.collect;

import defpackage.b21;

/* JADX INFO: loaded from: classes3.dex */
final class au extends by {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f42250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f42251c;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f42250b < this.f42251c.length;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        Object[] objArr = this.f42251c;
        int i2 = this.f42250b;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f42250b = i2 + 1;
        return obj;
    }
}
