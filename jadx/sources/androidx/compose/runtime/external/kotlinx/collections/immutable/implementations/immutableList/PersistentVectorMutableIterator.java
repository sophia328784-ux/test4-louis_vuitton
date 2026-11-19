package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import defpackage.b21;
import defpackage.r81;
import defpackage.v7;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;", "T", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;", "builder", "", "index", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PersistentVectorMutableIterator<T> extends AbstractListIterator<T> implements ListIterator<T>, KMutableListIterator {
    public final PersistentVectorBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TrieIterator f8316f;
    public int g;

    public PersistentVectorMutableIterator(PersistentVectorBuilder<T> persistentVectorBuilder, int i2) {
        super(i2, persistentVectorBuilder.getF74615i());
        this.d = persistentVectorBuilder;
        this.f8315e = persistentVectorBuilder.n();
        this.g = -1;
        c();
    }

    public final void a() {
        if (this.f8315e == this.d.n()) {
            return;
        }
        v7.c();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public final void add(Object obj) {
        a();
        int i2 = this.f8301b;
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        persistentVectorBuilder.add(i2, obj);
        this.f8301b++;
        this.f8302c = persistentVectorBuilder.getF74615i();
        this.f8315e = persistentVectorBuilder.n();
        this.g = -1;
        c();
    }

    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public final void c() {
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        Object[] objArr = persistentVectorBuilder.g;
        if (objArr == null) {
            this.f8316f = null;
            return;
        }
        int i2 = (persistentVectorBuilder.f8313i - 1) & (-32);
        int i3 = this.f8301b;
        if (i3 > i2) {
            i3 = i2;
        }
        int i4 = (persistentVectorBuilder.f8310e / 5) + 1;
        TrieIterator trieIterator = this.f8316f;
        if (trieIterator == null) {
            this.f8316f = new TrieIterator(objArr, i3, i2, i4);
            return;
        }
        trieIterator.f8301b = i3;
        trieIterator.f8302c = i2;
        trieIterator.d = i4;
        if (trieIterator.f8319e.length < i4) {
            trieIterator.f8319e = new Object[i4];
        }
        trieIterator.f8319e[0] = objArr;
        ?? r0 = i3 == i2 ? 1 : 0;
        trieIterator.f8320f = r0;
        trieIterator.c(i3 - r0, 1);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public final Object next() {
        a();
        if (!hasNext()) {
            b21.x();
            return null;
        }
        int i2 = this.f8301b;
        this.g = i2;
        TrieIterator trieIterator = this.f8316f;
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        if (trieIterator == null) {
            Object[] objArr = persistentVectorBuilder.f8312h;
            this.f8301b = i2 + 1;
            return objArr[i2];
        }
        if (trieIterator.hasNext()) {
            this.f8301b++;
            return trieIterator.next();
        }
        Object[] objArr2 = persistentVectorBuilder.f8312h;
        int i3 = this.f8301b;
        this.f8301b = i3 + 1;
        return objArr2[i3 - trieIterator.f8302c];
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        if (!hasPrevious()) {
            b21.x();
            return null;
        }
        int i2 = this.f8301b;
        this.g = i2 - 1;
        TrieIterator trieIterator = this.f8316f;
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        if (trieIterator == null) {
            Object[] objArr = persistentVectorBuilder.f8312h;
            int i3 = i2 - 1;
            this.f8301b = i3;
            return objArr[i3];
        }
        int i4 = trieIterator.f8302c;
        if (i2 <= i4) {
            this.f8301b = i2 - 1;
            return trieIterator.previous();
        }
        Object[] objArr2 = persistentVectorBuilder.f8312h;
        int i5 = i2 - 1;
        this.f8301b = i5;
        return objArr2[i5 - i4];
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public final void remove() {
        a();
        int i2 = this.g;
        if (i2 == -1) {
            r81.b();
            return;
        }
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        persistentVectorBuilder.h(i2);
        int i3 = this.g;
        if (i3 < this.f8301b) {
            this.f8301b = i3;
        }
        this.f8302c = persistentVectorBuilder.getF74615i();
        this.f8315e = persistentVectorBuilder.n();
        this.g = -1;
        c();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public final void set(Object obj) {
        a();
        int i2 = this.g;
        if (i2 == -1) {
            r81.b();
            return;
        }
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        persistentVectorBuilder.set(i2, obj);
        this.f8315e = persistentVectorBuilder.n();
        c();
    }
}
