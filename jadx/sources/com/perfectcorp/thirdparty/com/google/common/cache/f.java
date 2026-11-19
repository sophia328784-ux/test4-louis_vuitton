package com.perfectcorp.thirdparty.com.google.common.cache;

import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import java.util.AbstractQueue;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
final class f extends AbstractQueue<Object> {
    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return ImmutableSet.v().iterator();
    }

    @Override // java.util.Queue
    public final boolean offer(Object obj) {
        return true;
    }

    @Override // java.util.Queue
    public final Object peek() {
        return null;
    }

    @Override // java.util.Queue
    public final Object poll() {
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return 0;
    }
}
