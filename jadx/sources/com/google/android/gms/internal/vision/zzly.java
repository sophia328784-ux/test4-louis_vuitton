package com.google.android.gms.internal.vision;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzly implements ListIterator<String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ListIterator f31285b;

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f31285b.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f31285b.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.f31285b.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f31285b.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return (String) this.f31285b.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f31285b.previousIndex();
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
