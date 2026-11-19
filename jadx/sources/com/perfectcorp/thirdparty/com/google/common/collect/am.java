package com.perfectcorp.thirdparty.com.google.common.collect;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class am extends by {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public by f42237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f42238c;
    public by d;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d.hasNext() || this.f42237b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.d.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f42237b.next();
            this.f42238c = entry.getKey();
            this.d = ((ai) entry.getValue()).iterator();
        }
        Object obj = this.f42238c;
        E next = this.d.next();
        aj ajVar = new aj();
        ajVar.f42231b = obj;
        ajVar.f42232c = next;
        return ajVar;
    }
}
