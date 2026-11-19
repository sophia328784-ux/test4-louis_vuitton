package androidx.collection;

import defpackage.b21;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\u0010\b\n\u0002\b\u0004\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/IndexBasedArrayIterator;", "T", "", "", "startingSize", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class IndexBasedArrayIterator<T> implements Iterator<T>, KMutableIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3248c;
    public boolean d;

    public IndexBasedArrayIterator(int i2) {
        this.f3247b = i2;
    }

    public abstract Object a(int i2);

    public abstract void c(int i2);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3248c < this.f3247b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        Object objA = a(this.f3248c);
        this.f3248c++;
        this.d = true;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.d) {
            md.k("Call next() before removing an element.");
            return;
        }
        int i2 = this.f3248c - 1;
        this.f3248c = i2;
        c(i2);
        this.f3247b--;
        this.d = false;
    }
}
