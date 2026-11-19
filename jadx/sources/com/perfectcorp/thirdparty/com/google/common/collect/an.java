package com.perfectcorp.thirdparty.com.google.common.collect;

/* JADX INFO: loaded from: classes3.dex */
final class an extends by {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public by f42239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public by f42240c;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f42240c.hasNext() || this.f42239b.hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f42240c.hasNext()) {
            this.f42240c = ((ai) this.f42239b.next()).iterator();
        }
        return this.f42240c.next();
    }
}
