package androidx.navigation3.runtime;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateRecord;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.serialization.NavBackStackSerializer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMutableList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u0011*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u00042\u00060\u0005j\u0002`\u0006:\u0001\u0011B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\t\u0010\nB\t\b\u0016¢\u0006\u0004\b\t\u0010\u000bB\u001d\b\u0016\u0012\u0012\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\f\"\u00028\u0000¢\u0006\u0004\b\t\u0010\u000eR\u000b\u0010\u0010\u001a\u00020\u000f8\u0016X\u0096\u0005¨\u0006\u0012"}, d2 = {"Landroidx/navigation3/runtime/NavBackStack;", "Landroidx/navigation3/runtime/NavKey;", "T", "", "Landroidx/compose/runtime/snapshots/StateObject;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "base", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateList;)V", "()V", "", "elements", "([Landroidx/navigation3/runtime/NavKey;)V", "", "size", "Companion", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable(with = NavBackStackSerializer.class)
public final class NavBackStack<T extends NavKey> implements List<T>, StateObject, RandomAccess, KMutableList {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SnapshotStateList f18396b;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J-\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00050\u0003\"\u0004\b\u0001\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/navigation3/runtime/NavBackStack$Companion;", "", "T", "Lkotlinx/serialization/KSerializer;", "typeSerial0", "Landroidx/navigation3/runtime/NavBackStack;", "serializer", "(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final <T> KSerializer<NavBackStack<T>> serializer(KSerializer<T> typeSerial0) {
            return new NavBackStackSerializer(typeSerial0);
        }
    }

    public NavBackStack(T... tArr) {
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length);
        SnapshotStateList snapshotStateList = new SnapshotStateList();
        snapshotStateList.addAll(ArraysKt.W(objArrCopyOf));
        this(snapshotStateList);
    }

    public final void a(NavKey navKey) {
        this.f18396b.add(navKey);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        return this.f18396b.add((NavKey) obj);
    }

    @Override // java.util.List
    public final boolean addAll(int i2, Collection collection) {
        return this.f18396b.addAll(i2, collection);
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.f18396b.clear();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof NavKey)) {
            return false;
        }
        return this.f18396b.contains((NavKey) obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return this.f18396b.containsAll(collection);
    }

    @Override // java.util.List
    public final Object get(int i2) {
        return (NavKey) this.f18396b.get(i2);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof NavKey)) {
            return -1;
        }
        return this.f18396b.indexOf((NavKey) obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f18396b.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return this.f18396b.listIterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof NavKey)) {
            return -1;
        }
        return this.f18396b.lastIndexOf((NavKey) obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i2) {
        SnapshotStateList snapshotStateList = this.f18396b;
        snapshotStateList.getClass();
        return new StateListIterator(snapshotStateList, i2);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void r(StateRecord stateRecord) {
        this.f18396b.r(stateRecord);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        if (!(obj instanceof NavKey)) {
            return false;
        }
        return this.f18396b.remove((NavKey) obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        return this.f18396b.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        return this.f18396b.retainAll(collection);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord s() {
        return this.f18396b.f8491b;
    }

    @Override // java.util.List
    public final Object set(int i2, Object obj) {
        return (NavKey) this.f18396b.set(i2, (NavKey) obj);
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.f18396b.size();
    }

    @Override // java.util.List
    public final List subList(int i2, int i3) {
        return this.f18396b.subList(i2, i3);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord x(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        this.f18396b.getClass();
        return null;
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        return this.f18396b.addAll(collection);
    }

    @Override // java.util.List
    public final void add(int i2, Object obj) {
        this.f18396b.add(i2, (NavKey) obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return this.f18396b.listIterator();
    }

    @Override // java.util.List
    public final Object remove(int i2) {
        return (NavKey) this.f18396b.remove(i2);
    }

    public NavBackStack(SnapshotStateList<T> snapshotStateList) {
        this.f18396b = snapshotStateList;
    }

    public NavBackStack() {
        this(new SnapshotStateList());
    }
}
