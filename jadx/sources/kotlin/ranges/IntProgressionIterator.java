package kotlin.ranges;

import defpackage.b21;
import kotlin.Metadata;
import kotlin.collections.IntIterator;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/ranges/IntProgressionIterator;", "Lkotlin/collections/IntIterator;", "", "first", "last", "step", "<init>", "(III)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class IntProgressionIterator extends IntIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f71953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f71954c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f71955e;

    public IntProgressionIterator(int i2, int i3, int i4) {
        this.f71953b = i4;
        this.f71954c = i3;
        boolean z = false;
        if (i4 <= 0 ? i2 >= i3 : i2 <= i3) {
            z = true;
        }
        this.d = z;
        this.f71955e = z ? i2 : i3;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d;
    }

    @Override // kotlin.collections.IntIterator
    public final int nextInt() {
        int i2 = this.f71955e;
        if (i2 != this.f71954c) {
            this.f71955e = this.f71953b + i2;
            return i2;
        }
        if (this.d) {
            this.d = false;
            return i2;
        }
        b21.x();
        return 0;
    }
}
