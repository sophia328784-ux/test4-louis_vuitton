package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import defpackage.r81;
import defpackage.v7;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetMutableIterator;", "E", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetIterator;", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;", "builder", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PersistentOrderedSetMutableIterator<E> extends PersistentOrderedSetIterator<E> implements Iterator<E>, KMutableIterator {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PersistentOrderedSetBuilder f8363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f8364f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8365h;

    /* JADX WARN: Illegal instructions before constructor call */
    public PersistentOrderedSetMutableIterator(PersistentOrderedSetBuilder<E> persistentOrderedSetBuilder) {
        Object obj = persistentOrderedSetBuilder.f8359c;
        PersistentHashMapBuilder persistentHashMapBuilder = persistentOrderedSetBuilder.f8360e;
        super(obj, persistentHashMapBuilder);
        this.f8363e = persistentOrderedSetBuilder;
        this.f8365h = persistentHashMapBuilder.f8332f;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator, java.util.Iterator
    public final Object next() {
        if (this.f8363e.f8360e.f8332f != this.f8365h) {
            v7.c();
            return null;
        }
        Object next = super.next();
        this.f8364f = next;
        this.g = true;
        return next;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator, java.util.Iterator
    public final void remove() {
        if (!this.g) {
            r81.b();
            return;
        }
        Object obj = this.f8364f;
        PersistentOrderedSetBuilder persistentOrderedSetBuilder = this.f8363e;
        TypeIntrinsics.a(persistentOrderedSetBuilder).remove(obj);
        this.f8364f = null;
        this.g = false;
        this.f8365h = persistentOrderedSetBuilder.f8360e.f8332f;
        this.d--;
    }
}
