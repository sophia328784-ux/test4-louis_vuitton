package com.perfectcorp.thirdparty.com.google.common.collect;

import defpackage.b21;

/* JADX INFO: loaded from: classes3.dex */
public abstract class k<T> extends by<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f42321b;

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f42321b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        try {
            return this.f42321b;
        } finally {
            this.f42321b = a(this.f42321b);
        }
    }
}
