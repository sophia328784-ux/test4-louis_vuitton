package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.b21;
import defpackage.r81;
import defpackage.v7;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00020\u00042\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0005B;\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u001e\u0010\n\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilderBaseIterator;", "K", "V", "T", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBaseIterator;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;", "builder", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;", "path", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;[Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class PersistentHashMapBuilderBaseIterator<K, V, T> extends PersistentHashMapBaseIterator<K, V, T> implements Iterator<T>, KMutableIterator {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PersistentHashMapBuilder f8333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f8334f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8335h;

    public PersistentHashMapBuilderBaseIterator(PersistentHashMapBuilder<K, V> persistentHashMapBuilder, TrieNodeBaseIterator<K, V, T>[] trieNodeBaseIteratorArr) {
        super(persistentHashMapBuilder.d, trieNodeBaseIteratorArr);
        this.f8333e = persistentHashMapBuilder;
        this.f8335h = persistentHashMapBuilder.f8332f;
    }

    public final void d(int i2, TrieNode trieNode, Object obj, int i3) {
        int i4 = i3 * 5;
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = this.f8327b;
        if (i4 <= 30) {
            int iD = 1 << TrieNodeKt.d(i2, i4);
            if (trieNode.h(iD)) {
                trieNodeBaseIteratorArr[i3].a(Integer.bitCount(trieNode.f8345a) * 2, trieNode.f(iD), trieNode.d);
                this.f8328c = i3;
                return;
            }
            int iT = trieNode.t(iD);
            TrieNode trieNodeS = trieNode.s(iT);
            trieNodeBaseIteratorArr[i3].a(Integer.bitCount(trieNode.f8345a) * 2, iT, trieNode.d);
            d(i2, trieNodeS, obj, i3 + 1);
            return;
        }
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i3];
        Object[] objArr = trieNode.d;
        trieNodeBaseIterator.a(objArr.length, 0, objArr);
        while (true) {
            TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i3];
            if (Intrinsics.c(trieNodeBaseIterator2.f8350b[trieNodeBaseIterator2.d], obj)) {
                this.f8328c = i3;
                return;
            } else {
                trieNodeBaseIteratorArr[i3].d += 2;
            }
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public final Object next() {
        if (this.f8333e.f8332f != this.f8335h) {
            v7.c();
            return null;
        }
        if (!this.d) {
            b21.x();
            return null;
        }
        TrieNodeBaseIterator trieNodeBaseIterator = this.f8327b[this.f8328c];
        this.f8334f = trieNodeBaseIterator.f8350b[trieNodeBaseIterator.d];
        this.g = true;
        return super.next();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public final void remove() {
        if (!this.g) {
            r81.b();
            return;
        }
        boolean z = this.d;
        PersistentHashMapBuilder persistentHashMapBuilder = this.f8333e;
        if (!z) {
            TypeIntrinsics.c(persistentHashMapBuilder).remove(this.f8334f);
        } else {
            if (!z) {
                b21.x();
                return;
            }
            TrieNodeBaseIterator trieNodeBaseIterator = this.f8327b[this.f8328c];
            Object obj = trieNodeBaseIterator.f8350b[trieNodeBaseIterator.d];
            TypeIntrinsics.c(persistentHashMapBuilder).remove(this.f8334f);
            d(obj != null ? obj.hashCode() : 0, persistentHashMapBuilder.d, obj, 0);
        }
        this.f8334f = null;
        this.g = false;
        this.f8335h = persistentHashMapBuilder.f8332f;
    }
}
