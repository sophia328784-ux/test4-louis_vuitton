package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.b21;
import defpackage.v7;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class v implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f42347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f42348c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ u f42349e;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f42348c >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        u uVar = this.f42349e;
        if (uVar.f42345e != this.f42347b) {
            v7.c();
            return null;
        }
        if (!hasNext()) {
            b21.x();
            return null;
        }
        int i2 = this.f42348c;
        this.d = i2;
        Object obj = uVar.d[i2];
        int i3 = i2 + 1;
        if (i3 >= uVar.f42346f) {
            i3 = -1;
        }
        this.f42348c = i3;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        u uVar = this.f42349e;
        if (uVar.f42345e != this.f42347b) {
            v7.c();
            return;
        }
        Preconditions.h("no calls to next() since the last call to remove()", this.d >= 0);
        this.f42347b++;
        Object[] objArr = uVar.d;
        int i2 = this.d;
        uVar.h((int) (uVar.f42344c[i2] >>> 32), objArr[i2]);
        this.f42348c--;
        this.d = -1;
    }
}
