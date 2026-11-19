package com.google.android.gms.internal.clearcut;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzfb implements ListIterator<String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ListIterator f29742b;

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f29742b.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f29742b.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.f29742b.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f29742b.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return (String) this.f29742b.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f29742b.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
