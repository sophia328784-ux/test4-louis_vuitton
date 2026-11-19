package androidx.compose.runtime.snapshots;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import defpackage.d2;
import defpackage.ze;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\u00060\u0005j\u0002`\u0006:\u0001\fB\u0017\b\u0000\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\t\u0010\nB\t\b\u0016¢\u0006\u0004\b\t\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateList;", "T", "Landroid/os/Parcelable;", "Landroidx/compose/runtime/snapshots/StateObject;", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;", "persistentList", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;)V", "()V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotStateList<T> implements Parcelable, StateObject, List<T>, RandomAccess, KMutableList {
    public static final Parcelable.Creator<SnapshotStateList<Object>> CREATOR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StateListStateRecord f8491b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\"\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateList$Companion;", "", "Landroid/os/Parcelable$Creator;", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "CREATOR", "Landroid/os/Parcelable$Creator;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        CREATOR = new SnapshotStateList$Companion$CREATOR$1();
    }

    public SnapshotStateList(PersistentList<? extends T> persistentList) {
        Snapshot snapshotI = SnapshotKt.i();
        StateListStateRecord stateListStateRecord = new StateListStateRecord(snapshotI.getF8464b(), persistentList);
        if (!(snapshotI instanceof GlobalSnapshot)) {
            stateListStateRecord.f8534b = new StateListStateRecord(1L, persistentList);
        }
        this.f8491b = stateListStateRecord;
    }

    public final void a(int i2, int i3) {
        int i4;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = this.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i4 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentVectorBuilder persistentVectorBuilderBuilder = persistentList.builder();
            persistentVectorBuilderBuilder.subList(i2, i3).clear();
            PersistentList persistentListI = persistentVectorBuilderBuilder.i();
            if (Intrinsics.c(persistentListI, persistentList)) {
                return;
            }
            StateListStateRecord stateListStateRecord3 = this.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, snapshotI), i4, persistentListI, true);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zB);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        int i2;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = this.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentList persistentListAdd = persistentList.add(obj);
            if (persistentListAdd.equals(persistentList)) {
                return false;
            }
            StateListStateRecord stateListStateRecord3 = this.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, snapshotI), i2, persistentListAdd, true);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zB);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        int i2;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = this.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentList persistentListAddAll = persistentList.addAll(collection);
            if (Intrinsics.c(persistentListAddAll, persistentList)) {
                return false;
            }
            StateListStateRecord stateListStateRecord3 = this.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, snapshotI), i2, persistentListAddAll, true);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zB);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        Snapshot snapshotI;
        StateListStateRecord stateListStateRecord = this.f8491b;
        stateListStateRecord.getClass();
        synchronized (SnapshotKt.f8483c) {
            Snapshot.f8462e.getClass();
            snapshotI = SnapshotKt.i();
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.v(stateListStateRecord, this, snapshotI);
            synchronized (SnapshotStateListKt.f8492a) {
                SmallPersistentVector.f8317e.getClass();
                stateListStateRecord2.f8524c = SmallPersistentVector.f8318f;
                stateListStateRecord2.d++;
                stateListStateRecord2.f8525e++;
            }
        }
        SnapshotKt.m(snapshotI, this);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return SnapshotStateListKt.c(this).f8524c.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return SnapshotStateListKt.c(this).f8524c.containsAll(collection);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        return SnapshotStateListKt.c(this).f8524c.get(i2);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return SnapshotStateListKt.c(this).f8524c.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return SnapshotStateListKt.c(this).f8524c.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return SnapshotStateListKt.c(this).f8524c.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new StateListIterator(this, 0);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        stateRecord.f8534b = this.f8491b;
        this.f8491b = (StateListStateRecord) stateRecord;
    }

    @Override // java.util.List
    public final Object remove(int i2) {
        int i3;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        Object obj = get(i2);
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = this.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i3 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentList persistentListB = persistentList.B(i2);
            if (Intrinsics.c(persistentListB, persistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = this.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, snapshotI), i3, persistentListB, true);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zB);
        return obj;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        int i2;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = this.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentList persistentListRemoveAll = persistentList.removeAll(collection);
            if (Intrinsics.c(persistentListRemoveAll, persistentList)) {
                return false;
            }
            StateListStateRecord stateListStateRecord3 = this.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, snapshotI), i2, persistentListRemoveAll, true);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zB);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        return SnapshotStateListKt.e(this, new d2(collection, 2));
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f8491b;
    }

    @Override // java.util.List
    public final Object set(int i2, Object obj) {
        int i3;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        Object obj2 = get(i2);
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = this.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i3 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentList persistentList2 = persistentList.set(i2, obj);
            if (persistentList2.equals(persistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = this.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, snapshotI), i3, persistentList2, false);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zB);
        return obj2;
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return SnapshotStateListKt.c(this).f8524c.size();
    }

    @Override // java.util.List
    public final List subList(int i2, int i3) {
        if (!(i2 >= 0 && i2 <= i3 && i3 <= size())) {
            PreconditionsKt.a("fromIndex or toIndex are out of bounds");
        }
        return new SubList(this, i2, i3);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    public final String toString() {
        StateListStateRecord stateListStateRecord = this.f8491b;
        stateListStateRecord.getClass();
        return "SnapshotStateList(value=" + ((StateListStateRecord) SnapshotKt.g(stateListStateRecord)).f8524c + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        PersistentList persistentList = SnapshotStateListKt.c(this).f8524c;
        int size = persistentList.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeValue(persistentList.get(i3));
        }
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i2) {
        return new StateListIterator(this, i2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SnapshotStateList() {
        this(SmallPersistentVector.f8318f);
        SmallPersistentVector.f8317e.getClass();
    }

    @Override // java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = this.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i3 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentList persistentListAdd = persistentList.add(i2, obj);
            if (persistentListAdd.equals(persistentList)) {
                return;
            }
            StateListStateRecord stateListStateRecord3 = this.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, snapshotI), i3, persistentListAdd, true);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zB);
    }

    @Override // java.util.List
    public final boolean addAll(int i2, Collection collection) {
        return SnapshotStateListKt.e(this, new ze(i2, collection, 10));
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        int i2;
        PersistentList persistentList;
        Snapshot snapshotI;
        boolean zB;
        do {
            synchronized (SnapshotStateListKt.f8492a) {
                StateListStateRecord stateListStateRecord = this.f8491b;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.f8524c;
            }
            persistentList.getClass();
            PersistentList persistentListRemove = persistentList.remove(obj);
            if (Intrinsics.c(persistentListRemove, persistentList)) {
                return false;
            }
            StateListStateRecord stateListStateRecord3 = this.f8491b;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.f8483c) {
                Snapshot.f8462e.getClass();
                snapshotI = SnapshotKt.i();
                zB = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, snapshotI), i2, persistentListRemove, true);
            }
            SnapshotKt.m(snapshotI, this);
        } while (!zB);
        return true;
    }
}
