package com.google.android.gms.internal.clearcut;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzfc implements Iterator<String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Iterator f29743b;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29743b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return (String) this.f29743b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
