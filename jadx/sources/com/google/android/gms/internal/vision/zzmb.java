package com.google.android.gms.internal.vision;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzmb implements Iterator<String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Iterator f31294b;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f31294b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return (String) this.f31294b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
