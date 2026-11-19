package kotlinx.collections.immutable.implementations.immutableList;

import defpackage.b21;
import defpackage.r81;
import defpackage.v7;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;", "T", "", "Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;", "Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;", "builder", "", "index", "<init>", "(Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;I)V", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PersistentVectorMutableIterator<T> extends AbstractListIterator<T> implements ListIterator<T>, KMutableListIterator {
    public final PersistentVectorBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f74618e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TrieIterator f74619f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersistentVectorMutableIterator(PersistentVectorBuilder<T> persistentVectorBuilder, int i2) {
        super(i2, persistentVectorBuilder.getF74615i());
        persistentVectorBuilder.getClass();
        this.d = persistentVectorBuilder;
        this.f74618e = persistentVectorBuilder.m();
        this.g = -1;
        d();
    }

    public final void a() {
        if (this.f74618e == this.d.m()) {
            return;
        }
        v7.c();
    }

    @Override // kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public final void add(Object obj) {
        a();
        this.d.add(this.f74604b, obj);
        this.f74604b++;
        c();
    }

    public final void c() {
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        this.f74605c = persistentVectorBuilder.getF74615i();
        this.f74618e = persistentVectorBuilder.m();
        this.g = -1;
        d();
    }

    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public final void d() {
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        Object[] objArr = persistentVectorBuilder.g;
        if (objArr == null) {
            this.f74619f = null;
            return;
        }
        int i2 = (persistentVectorBuilder.f74615i - 1) & (-32);
        int i3 = this.f74604b;
        if (i3 > i2) {
            i3 = i2;
        }
        int i4 = (persistentVectorBuilder.f74612e / 5) + 1;
        TrieIterator trieIterator = this.f74619f;
        if (trieIterator == null) {
            this.f74619f = new TrieIterator(objArr, i3, i2, i4);
            return;
        }
        trieIterator.f74604b = i3;
        trieIterator.f74605c = i2;
        trieIterator.d = i4;
        if (trieIterator.f74622e.length < i4) {
            trieIterator.f74622e = new Object[i4];
        }
        trieIterator.f74622e[0] = objArr;
        ?? r0 = i3 == i2 ? 1 : 0;
        trieIterator.f74623f = r0;
        trieIterator.c(i3 - r0, 1);
    }

    @Override // kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public final Object next() {
        a();
        if (!hasNext()) {
            b21.x();
            return null;
        }
        int i2 = this.f74604b;
        this.g = i2;
        TrieIterator trieIterator = this.f74619f;
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        if (trieIterator == null) {
            Object[] objArr = persistentVectorBuilder.f74614h;
            this.f74604b = i2 + 1;
            return objArr[i2];
        }
        if (trieIterator.hasNext()) {
            this.f74604b++;
            return trieIterator.next();
        }
        Object[] objArr2 = persistentVectorBuilder.f74614h;
        int i3 = this.f74604b;
        this.f74604b = i3 + 1;
        return objArr2[i3 - trieIterator.f74605c];
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        if (!hasPrevious()) {
            b21.x();
            return null;
        }
        int i2 = this.f74604b;
        this.g = i2 - 1;
        TrieIterator trieIterator = this.f74619f;
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        if (trieIterator == null) {
            Object[] objArr = persistentVectorBuilder.f74614h;
            int i3 = i2 - 1;
            this.f74604b = i3;
            return objArr[i3];
        }
        int i4 = trieIterator.f74605c;
        if (i2 <= i4) {
            this.f74604b = i2 - 1;
            return trieIterator.previous();
        }
        Object[] objArr2 = persistentVectorBuilder.f74614h;
        int i5 = i2 - 1;
        this.f74604b = i5;
        return objArr2[i5 - i4];
    }

    @Override // kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public final void remove() {
        a();
        int i2 = this.g;
        if (i2 == -1) {
            r81.b();
            return;
        }
        this.d.h(i2);
        int i3 = this.g;
        if (i3 < this.f74604b) {
            this.f74604b = i3;
        }
        c();
    }

    @Override // kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public final void set(Object obj) {
        a();
        int i2 = this.g;
        if (i2 == -1) {
            r81.b();
            return;
        }
        PersistentVectorBuilder persistentVectorBuilder = this.d;
        persistentVectorBuilder.set(i2, obj);
        this.f74618e = persistentVectorBuilder.m();
        d();
    }
}
