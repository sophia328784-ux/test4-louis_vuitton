package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.b21;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004B;\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u001e\u0010\t\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBaseIterator;", "K", "V", "T", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;", "node", "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;", "path", "<init>", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;[Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNodeBaseIterator;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class PersistentHashMapBaseIterator<K, V, T> implements Iterator<T>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TrieNodeBaseIterator[] f8327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8328c;
    public boolean d = true;

    public PersistentHashMapBaseIterator(TrieNode<K, V> trieNode, TrieNodeBaseIterator<K, V, T>[] trieNodeBaseIteratorArr) {
        this.f8327b = trieNodeBaseIteratorArr;
        trieNodeBaseIteratorArr[0].a(Integer.bitCount(trieNode.f8345a) * 2, 0, trieNode.d);
        this.f8328c = 0;
        a();
    }

    public final void a() {
        int i2 = this.f8328c;
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = this.f8327b;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i2];
        if (trieNodeBaseIterator.d < trieNodeBaseIterator.f8351c) {
            return;
        }
        while (-1 < i2) {
            int iC = c(i2);
            if (iC == -1) {
                TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i2];
                int i3 = trieNodeBaseIterator2.d;
                Object[] objArr = trieNodeBaseIterator2.f8350b;
                if (i3 < objArr.length) {
                    int length = objArr.length;
                    trieNodeBaseIterator2.d = i3 + 1;
                    iC = c(i2);
                }
            }
            if (iC != -1) {
                this.f8328c = iC;
                return;
            }
            if (i2 > 0) {
                TrieNodeBaseIterator trieNodeBaseIterator3 = trieNodeBaseIteratorArr[i2 - 1];
                int i4 = trieNodeBaseIterator3.d;
                int length2 = trieNodeBaseIterator3.f8350b.length;
                trieNodeBaseIterator3.d = i4 + 1;
            }
            TrieNodeBaseIterator trieNodeBaseIterator4 = trieNodeBaseIteratorArr[i2];
            TrieNode.f8343e.getClass();
            trieNodeBaseIterator4.a(0, 0, TrieNode.f8344f.d);
            i2--;
        }
        this.d = false;
    }

    public final int c(int i2) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = this.f8327b;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i2];
        int i3 = trieNodeBaseIterator.d;
        if (i3 < trieNodeBaseIterator.f8351c) {
            return i2;
        }
        Object[] objArr = trieNodeBaseIterator.f8350b;
        if (i3 >= objArr.length) {
            return -1;
        }
        int length = objArr.length;
        Object obj = objArr[i3];
        obj.getClass();
        TrieNode trieNode = (TrieNode) obj;
        if (i2 == 6) {
            TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i2 + 1];
            Object[] objArr2 = trieNode.d;
            trieNodeBaseIterator2.a(objArr2.length, 0, objArr2);
        } else {
            trieNodeBaseIteratorArr[i2 + 1].a(Integer.bitCount(trieNode.f8345a) * 2, 0, trieNode.d);
        }
        return c(i2 + 1);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!this.d) {
            b21.x();
            return null;
        }
        T next = this.f8327b[this.f8328c].next();
        a();
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
