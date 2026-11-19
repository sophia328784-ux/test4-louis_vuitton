package androidx.compose.runtime.snapshots;

import defpackage.r81;
import defpackage.v7;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/snapshots/StateSetIterator;", "T", "", "Landroidx/compose/runtime/snapshots/SnapshotStateSet;", "set", "", "iterator", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateSet;Ljava/util/Iterator;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StateSetIterator<T> implements Iterator<T>, KMutableIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnapshotStateSet f8535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterator f8536c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f8537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8538f;

    public StateSetIterator(SnapshotStateSet<T> snapshotStateSet, Iterator<? extends T> it) {
        this.f8535b = snapshotStateSet;
        this.f8536c = it;
        StateSetStateRecord stateSetStateRecord = snapshotStateSet.f8516b;
        stateSetStateRecord.getClass();
        this.f8538f = ((StateSetStateRecord) SnapshotKt.g(stateSetStateRecord)).d;
        this.d = this.f8537e;
        this.f8537e = it.hasNext() ? it.next() : null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8537e != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        StateSetStateRecord stateSetStateRecord = this.f8535b.f8516b;
        stateSetStateRecord.getClass();
        if (((StateSetStateRecord) SnapshotKt.g(stateSetStateRecord)).d != this.f8538f) {
            v7.c();
            return null;
        }
        this.d = this.f8537e;
        Iterator it = this.f8536c;
        this.f8537e = it.hasNext() ? it.next() : null;
        Object obj = this.d;
        if (obj != null) {
            return obj;
        }
        r81.b();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        SnapshotStateSet snapshotStateSet = this.f8535b;
        StateSetStateRecord stateSetStateRecord = snapshotStateSet.f8516b;
        stateSetStateRecord.getClass();
        if (((StateSetStateRecord) SnapshotKt.g(stateSetStateRecord)).d != this.f8538f) {
            v7.c();
            return;
        }
        Object obj = this.d;
        if (obj == null) {
            r81.b();
            return;
        }
        snapshotStateSet.remove(obj);
        this.d = null;
        StateSetStateRecord stateSetStateRecord2 = snapshotStateSet.f8516b;
        stateSetStateRecord2.getClass();
        this.f8538f = ((StateSetStateRecord) SnapshotKt.g(stateSetStateRecord2)).d;
    }
}
