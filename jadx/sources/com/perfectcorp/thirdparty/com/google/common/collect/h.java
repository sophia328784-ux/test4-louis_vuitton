package com.perfectcorp.thirdparty.com.google.common.collect;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class h implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map.Entry f42314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Iterator f42315c;
    public /* synthetic */ e.c d;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f42315c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f42315c.next();
        this.f42314b = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        Preconditions.h("no calls to next() since the last call to remove()", this.f42314b != null);
        Collection collection = (Collection) this.f42314b.getValue();
        this.f42315c.remove();
        e.this.g -= collection.size();
        collection.clear();
        this.f42314b = null;
    }
}
