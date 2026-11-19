package com.perfectcorp.thirdparty.com.google.common.collect;

import defpackage.b21;

/* JADX INFO: loaded from: classes3.dex */
final class az extends by {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f42258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f42259c;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f42258b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f42258b) {
            b21.x();
            return null;
        }
        this.f42258b = true;
        return this.f42259c;
    }
}
