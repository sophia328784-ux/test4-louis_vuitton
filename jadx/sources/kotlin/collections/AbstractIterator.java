package kotlin.collections;

import defpackage.b21;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/collections/AbstractIterator;", "T", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class AbstractIterator<T> implements Iterator<T>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f71742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f71743c;

    public abstract void a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.f71742b;
        if (i2 == 0) {
            this.f71742b = 3;
            a();
            return this.f71742b == 1;
        }
        if (i2 == 1) {
            return true;
        }
        if (i2 == 2) {
            return false;
        }
        md.n("hasNext called when the iterator is in the FAILED state.");
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i2 = this.f71742b;
        if (i2 == 1) {
            this.f71742b = 0;
            return this.f71743c;
        }
        if (i2 != 2) {
            this.f71742b = 3;
            a();
            if (this.f71742b == 1) {
                this.f71742b = 0;
                return this.f71743c;
            }
        }
        b21.x();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
