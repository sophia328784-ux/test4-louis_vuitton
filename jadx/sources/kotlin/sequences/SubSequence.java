package kotlin.sequences;

import defpackage.b21;
import defpackage.o60;
import defpackage.pq0;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/sequences/SubSequence;", "T", "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "sequence", "", "startIndex", "endIndex", "<init>", "(Lkotlin/sequences/Sequence;II)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SubSequence<T> implements Sequence<T>, DropTakeSequence<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Sequence f74488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f74489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f74490c;

    /* JADX INFO: renamed from: kotlin.sequences.SubSequence$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010(\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/sequences/SubSequence$iterator$1", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class AnonymousClass1 implements Iterator<Object>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterator f74491b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f74492c;

        public AnonymousClass1() {
            this.f74491b = SubSequence.this.f74488a.getF74480a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            SubSequence subSequence;
            Iterator it;
            while (true) {
                int i2 = this.f74492c;
                subSequence = SubSequence.this;
                int i3 = subSequence.f74489b;
                it = this.f74491b;
                if (i2 >= i3 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.f74492c++;
            }
            return this.f74492c < subSequence.f74490c && it.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            SubSequence subSequence;
            Iterator it;
            while (true) {
                int i2 = this.f74492c;
                subSequence = SubSequence.this;
                int i3 = subSequence.f74489b;
                it = this.f74491b;
                if (i2 >= i3 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.f74492c++;
            }
            int i4 = this.f74492c;
            if (i4 < subSequence.f74490c) {
                this.f74492c = i4 + 1;
                return it.next();
            }
            b21.x();
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public SubSequence(Sequence<? extends T> sequence, int i2, int i3) {
        sequence.getClass();
        this.f74488a = sequence;
        this.f74489b = i2;
        this.f74490c = i3;
        if (i2 < 0) {
            b21.n(pq0.k(i2, "startIndex should be non-negative, but is "));
            throw null;
        }
        if (i3 < 0) {
            b21.n(pq0.k(i3, "endIndex should be non-negative, but is "));
            throw null;
        }
        if (i3 >= i2) {
            return;
        }
        b21.n(o60.h(i3, i2, "endIndex should be not less than startIndex, but was ", " < "));
        throw null;
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence a(int i2) {
        int i3 = this.f74490c;
        int i4 = this.f74489b;
        return i2 >= i3 - i4 ? EmptySequence.f74454a : new SubSequence(this.f74488a, i4 + i2, i3);
    }

    @Override // kotlin.sequences.Sequence
    /* JADX INFO: renamed from: iterator */
    public final Iterator getF74480a() {
        return new AnonymousClass1();
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence take() {
        int i2 = this.f74490c;
        int i3 = this.f74489b;
        if (4 >= i2 - i3) {
            return this;
        }
        return new SubSequence(this.f74488a, i3, i3 + 4);
    }
}
