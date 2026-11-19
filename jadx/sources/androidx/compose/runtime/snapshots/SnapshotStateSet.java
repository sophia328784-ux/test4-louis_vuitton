package androidx.compose.runtime.snapshots;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetBuilder;
import defpackage.md;
import java.util.Collection;
import java.util.Iterator;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\u00060\u0005j\u0002`\u0006:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateSet;", "T", "Landroid/os/Parcelable;", "Landroidx/compose/runtime/snapshots/StateObject;", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "<init>", "()V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotStateSet<T> implements Parcelable, StateObject, Set<T>, RandomAccess, KMutableSet {
    public static final Parcelable.Creator<SnapshotStateSet<Object>> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StateSetStateRecord f8516b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\"\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateSet$Companion;", "", "Landroid/os/Parcelable$Creator;", "Landroidx/compose/runtime/snapshots/SnapshotStateSet;", "CREATOR", "Landroid/os/Parcelable$Creator;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CREATOR = new SnapshotStateSet$Companion$CREATOR$1();
    }

    public SnapshotStateSet() {
        PersistentOrderedSet.f8355f.getClass();
        PersistentOrderedSet persistentOrderedSet = PersistentOrderedSet.g;
        StateSetStateRecord stateSetStateRecord = new StateSetStateRecord(SnapshotKt.i().getF8464b(), persistentOrderedSet);
        Snapshot.f8462e.getClass();
        if (SnapshotKt.f8482b.a() != null) {
            stateSetStateRecord.f8534b = new StateSetStateRecord(1L, persistentOrderedSet);
        }
        this.f8516b = stateSetStateRecord;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        int i2;
        PersistentSet persistentSet;
        Snapshot snapshotI;
        boolean zA;
        do {
            synchronized (SnapshotStateSetKt.f8517a) {
                StateSetStateRecord stateSetStateRecord = this.f8516b;
                stateSetStateRecord.getClass();
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.g(stateSetStateRecord);
                i2 = stateSetStateRecord2.d;
                persistentSet = stateSetStateRecord2.f8539c;
            }
            persistentSet.getClass();
            PersistentOrderedSet persistentOrderedSetAdd = persistentSet.add(obj);
            if (persistentOrderedSetAdd.equals(persistentSet)) {
                return false;
            }
            StateSetStateRecord stateSetStateRecord3 = this.f8516b;
            stateSetStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = SnapshotStateSetKt.a((StateSetStateRecord) SnapshotKt.v(stateSetStateRecord3, this, snapshotI), i2, persistentOrderedSetAdd);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zA);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        int i2;
        PersistentSet persistentSet;
        Snapshot snapshotI;
        boolean zA;
        do {
            synchronized (SnapshotStateSetKt.f8517a) {
                StateSetStateRecord stateSetStateRecord = this.f8516b;
                stateSetStateRecord.getClass();
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.g(stateSetStateRecord);
                i2 = stateSetStateRecord2.d;
                persistentSet = stateSetStateRecord2.f8539c;
            }
            persistentSet.getClass();
            PersistentSet persistentSetAddAll = persistentSet.addAll(collection);
            if (Intrinsics.c(persistentSetAddAll, persistentSet)) {
                return false;
            }
            StateSetStateRecord stateSetStateRecord3 = this.f8516b;
            stateSetStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = SnapshotStateSetKt.a((StateSetStateRecord) SnapshotKt.v(stateSetStateRecord3, this, snapshotI), i2, persistentSetAddAll);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zA);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        Snapshot snapshotI;
        StateSetStateRecord stateSetStateRecord = this.f8516b;
        stateSetStateRecord.getClass();
        synchronized (SnapshotKt.f8483c) {
            Snapshot.f8462e.getClass();
            snapshotI = SnapshotKt.i();
            StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.v(stateSetStateRecord, this, snapshotI);
            synchronized (SnapshotStateSetKt.f8517a) {
                PersistentOrderedSet.f8355f.getClass();
                stateSetStateRecord2.f8539c = PersistentOrderedSet.g;
                stateSetStateRecord2.d++;
            }
        }
        SnapshotKt.m(snapshotI, this);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        return SnapshotStateSetKt.b(this).f8539c.contains(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return SnapshotStateSetKt.b(this).f8539c.containsAll(collection);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return SnapshotStateSetKt.b(this).f8539c.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new StateSetIterator(this, SnapshotStateSetKt.b(this).f8539c.iterator());
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.f8534b = this.f8516b;
        this.f8516b = (StateSetStateRecord) stateRecord;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        int i2;
        PersistentSet persistentSet;
        Snapshot snapshotI;
        boolean zA;
        do {
            synchronized (SnapshotStateSetKt.f8517a) {
                StateSetStateRecord stateSetStateRecord = this.f8516b;
                stateSetStateRecord.getClass();
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.g(stateSetStateRecord);
                i2 = stateSetStateRecord2.d;
                persistentSet = stateSetStateRecord2.f8539c;
            }
            persistentSet.getClass();
            PersistentOrderedSet persistentOrderedSetRemove = persistentSet.remove(obj);
            if (persistentOrderedSetRemove.equals(persistentSet)) {
                return false;
            }
            StateSetStateRecord stateSetStateRecord3 = this.f8516b;
            stateSetStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = SnapshotStateSetKt.a((StateSetStateRecord) SnapshotKt.v(stateSetStateRecord3, this, snapshotI), i2, persistentOrderedSetRemove);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zA);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        int i2;
        PersistentSet persistentSet;
        Snapshot snapshotI;
        boolean zA;
        do {
            synchronized (SnapshotStateSetKt.f8517a) {
                StateSetStateRecord stateSetStateRecord = this.f8516b;
                stateSetStateRecord.getClass();
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.g(stateSetStateRecord);
                i2 = stateSetStateRecord2.d;
                persistentSet = stateSetStateRecord2.f8539c;
            }
            persistentSet.getClass();
            PersistentSet persistentSetRemoveAll = persistentSet.removeAll(collection);
            if (Intrinsics.c(persistentSetRemoveAll, persistentSet)) {
                return false;
            }
            StateSetStateRecord stateSetStateRecord3 = this.f8516b;
            stateSetStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = SnapshotStateSetKt.a((StateSetStateRecord) SnapshotKt.v(stateSetStateRecord3, this, snapshotI), i2, persistentSetRemoveAll);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zA);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        int i2;
        PersistentSet persistentSet;
        boolean zRetainAll;
        Snapshot snapshotI;
        boolean zA;
        do {
            synchronized (SnapshotStateSetKt.f8517a) {
                StateSetStateRecord stateSetStateRecord = this.f8516b;
                stateSetStateRecord.getClass();
                StateSetStateRecord stateSetStateRecord2 = (StateSetStateRecord) SnapshotKt.g(stateSetStateRecord);
                i2 = stateSetStateRecord2.d;
                persistentSet = stateSetStateRecord2.f8539c;
            }
            if (persistentSet == null) {
                md.k("No set to mutate");
                return false;
            }
            PersistentOrderedSetBuilder persistentOrderedSetBuilderBuilder = persistentSet.builder();
            zRetainAll = persistentOrderedSetBuilderBuilder.retainAll(CollectionsKt.B0(collection));
            PersistentOrderedSet persistentOrderedSetH = persistentOrderedSetBuilderBuilder.h();
            if (persistentOrderedSetH.equals(persistentSet)) {
                break;
            }
            StateSetStateRecord stateSetStateRecord3 = this.f8516b;
            stateSetStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zA = SnapshotStateSetKt.a((StateSetStateRecord) SnapshotKt.v(stateSetStateRecord3, this, snapshotI), i2, persistentOrderedSetH);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zA);
        return zRetainAll;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f8516b;
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return SnapshotStateSetKt.b(this).f8539c.size();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    public final String toString() {
        StateSetStateRecord stateSetStateRecord = this.f8516b;
        stateSetStateRecord.getClass();
        return "SnapshotStateSet(value=" + ((StateSetStateRecord) SnapshotKt.g(stateSetStateRecord)).f8539c + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        PersistentSet persistentSet = SnapshotStateSetKt.b(this).f8539c;
        parcel.writeInt(size());
        Iterator<E> it = persistentSet.iterator();
        if (it.hasNext()) {
            parcel.writeValue(it.next());
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }
}
