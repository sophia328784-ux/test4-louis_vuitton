package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import defpackage.b21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0001\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B/\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/TrieIterator;", "E", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;", "", "", "root", "", "index", "size", "height", "<init>", "([Ljava/lang/Object;III)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TrieIterator<E> extends AbstractListIterator<E> {
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object[] f8319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8320f;

    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public TrieIterator(Object[] objArr, int i2, int i3, int i4) {
        super(i2, i3);
        this.d = i4;
        Object[] objArr2 = new Object[i4];
        this.f8319e = objArr2;
        ?? r5 = i2 == i3 ? 1 : 0;
        this.f8320f = r5;
        objArr2[0] = objArr;
        c(i2 - r5, 1);
    }

    public final Object a() {
        int i2 = this.f8301b & 31;
        Object obj = this.f8319e[this.d - 1];
        obj.getClass();
        return ((Object[]) obj)[i2];
    }

    public final void c(int i2, int i3) {
        int i4 = (this.d - i3) * 5;
        while (i3 < this.d) {
            Object[] objArr = this.f8319e;
            Object obj = objArr[i3 - 1];
            obj.getClass();
            objArr[i3] = ((Object[]) obj)[UtilsKt.a(i2, i4)];
            i4 -= 5;
            i3++;
        }
    }

    public final void d(int i2) {
        int i3 = 0;
        while (UtilsKt.a(this.f8301b, i3) == i2) {
            i3 += 5;
        }
        if (i3 > 0) {
            c(this.f8301b, ((this.d - 1) - (i3 / 5)) + 1);
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        Object objA = a();
        int i2 = this.f8301b + 1;
        this.f8301b = i2;
        if (i2 == this.f8302c) {
            this.f8320f = true;
            return objA;
        }
        d(0);
        return objA;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            b21.x();
            return null;
        }
        this.f8301b--;
        if (this.f8320f) {
            this.f8320f = false;
            return a();
        }
        d(31);
        return a();
    }
}
