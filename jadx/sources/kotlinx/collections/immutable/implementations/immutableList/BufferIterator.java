package kotlinx.collections.immutable.implementations.immutableList;

import defpackage.b21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/collections/immutable/implementations/immutableList/BufferIterator;", "T", "Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;", "", "buffer", "", "index", "size", "<init>", "([Ljava/lang/Object;II)V", "kotlinx-collections-immutable"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BufferIterator<T> extends AbstractListIterator<T> {
    public final Object[] d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferIterator(T[] tArr, int i2, int i3) {
        super(i2, i3);
        tArr.getClass();
        this.d = tArr;
    }

    @Override // kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        int i2 = this.f74604b;
        this.f74604b = i2 + 1;
        return this.d[i2];
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            b21.x();
            return null;
        }
        int i2 = this.f74604b - 1;
        this.f74604b = i2;
        return this.d[i2];
    }
}
