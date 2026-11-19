package androidx.compose.runtime.snapshots;

import defpackage.md;
import defpackage.v7;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/snapshots/StateListIterator;", "T", "", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "list", "", "offset", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateList;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StateListIterator<T> implements ListIterator<T>, KMutableListIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnapshotStateList f8521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8522c;
    public int d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8523e;

    public StateListIterator(SnapshotStateList<T> snapshotStateList, int i2) {
        this.f8521b = snapshotStateList;
        this.f8522c = i2 - 1;
        this.f8523e = SnapshotStateListKt.d(snapshotStateList);
    }

    public final void a() {
        if (SnapshotStateListKt.d(this.f8521b) == this.f8523e) {
            return;
        }
        v7.c();
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        a();
        int i2 = this.f8522c + 1;
        SnapshotStateList snapshotStateList = this.f8521b;
        snapshotStateList.add(i2, obj);
        this.d = -1;
        this.f8522c++;
        this.f8523e = SnapshotStateListKt.d(snapshotStateList);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f8522c < this.f8521b.size() - 1;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8522c >= 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        a();
        int i2 = this.f8522c + 1;
        this.d = i2;
        SnapshotStateList snapshotStateList = this.f8521b;
        SnapshotStateListKt.a(i2, snapshotStateList.size());
        Object obj = snapshotStateList.get(i2);
        this.f8522c = i2;
        return obj;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8522c + 1;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        int i2 = this.f8522c;
        SnapshotStateList snapshotStateList = this.f8521b;
        SnapshotStateListKt.a(i2, snapshotStateList.size());
        int i3 = this.f8522c;
        this.d = i3;
        Object obj = snapshotStateList.get(i3);
        this.f8522c--;
        return obj;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8522c;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        a();
        int i2 = this.d;
        SnapshotStateList snapshotStateList = this.f8521b;
        snapshotStateList.remove(i2);
        this.f8522c--;
        this.d = -1;
        this.f8523e = SnapshotStateListKt.d(snapshotStateList);
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        int i2 = this.d;
        if (i2 < 0) {
            md.k("Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()");
            return;
        }
        SnapshotStateList snapshotStateList = this.f8521b;
        snapshotStateList.set(i2, obj);
        this.f8523e = SnapshotStateListKt.d(snapshotStateList);
    }
}
