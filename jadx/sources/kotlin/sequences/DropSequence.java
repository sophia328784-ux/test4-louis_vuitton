package kotlin.sequences;

import com.batch.android.s.b;
import defpackage.b21;
import defpackage.n00;
import io.jsonwebtoken.JwtParser;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/sequences/DropSequence;", "T", "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "sequence", "", b.a.f24018f, "<init>", "(Lkotlin/sequences/Sequence;I)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class DropSequence<T> implements Sequence<T>, DropTakeSequence<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Sequence f74450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f74451b;

    /* JADX INFO: renamed from: kotlin.sequences.DropSequence$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010(\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlin/sequences/DropSequence$iterator$1", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class AnonymousClass1 implements Iterator<Object>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterator f74452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f74453c;

        public AnonymousClass1(DropSequence dropSequence) {
            this.f74452b = dropSequence.f74450a.getF74480a();
            this.f74453c = dropSequence.f74451b;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Iterator it;
            while (true) {
                int i2 = this.f74453c;
                it = this.f74452b;
                if (i2 <= 0 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.f74453c--;
            }
            return it.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Iterator it;
            while (true) {
                int i2 = this.f74453c;
                it = this.f74452b;
                if (i2 <= 0 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.f74453c--;
            }
            return it.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public DropSequence(Sequence<? extends T> sequence, int i2) {
        sequence.getClass();
        this.f74450a = sequence;
        this.f74451b = i2;
        if (i2 >= 0) {
            return;
        }
        b21.n(n00.q("count must be non-negative, but was ", i2, JwtParser.SEPARATOR_CHAR));
        throw null;
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence a(int i2) {
        int i3 = this.f74451b + i2;
        return i3 < 0 ? new DropSequence(this, i2) : new DropSequence(this.f74450a, i3);
    }

    @Override // kotlin.sequences.Sequence
    /* JADX INFO: renamed from: iterator */
    public final Iterator getF74480a() {
        return new AnonymousClass1(this);
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence take() {
        int i2 = this.f74451b;
        int i3 = i2 + 4;
        return i3 < 0 ? new TakeSequence(this, 4) : new SubSequence(this.f74450a, i2, i3);
    }
}
