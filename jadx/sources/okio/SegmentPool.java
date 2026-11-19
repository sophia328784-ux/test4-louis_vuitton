package okio;

import defpackage.md;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/SegmentPool;", "", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SegmentPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Segment f77451a = new Segment(new byte[0], 0, 0, false, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f77452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference[] f77453c;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f77452b = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i2 = 0; i2 < iHighestOneBit; i2++) {
            atomicReferenceArr[i2] = new AtomicReference();
        }
        f77453c = atomicReferenceArr;
    }

    public static final void a(Segment segment) {
        segment.getClass();
        if (segment.f77450f != null || segment.g != null) {
            md.n("Failed requirement.");
            return;
        }
        if (segment.d) {
            return;
        }
        AtomicReference atomicReference = f77453c[(int) (Thread.currentThread().getId() & (((long) f77452b) - 1))];
        Segment segment2 = f77451a;
        Segment segment3 = (Segment) atomicReference.getAndSet(segment2);
        if (segment3 == segment2) {
            return;
        }
        int i2 = segment3 != null ? segment3.f77448c : 0;
        if (i2 >= 65536) {
            atomicReference.set(segment3);
            return;
        }
        segment.f77450f = segment3;
        segment.f77447b = 0;
        segment.f77448c = i2 + 8192;
        atomicReference.set(segment);
    }

    public static final Segment b() {
        AtomicReference atomicReference = f77453c[(int) (Thread.currentThread().getId() & (((long) f77452b) - 1))];
        Segment segment = f77451a;
        Segment segment2 = (Segment) atomicReference.getAndSet(segment);
        if (segment2 == segment) {
            return new Segment();
        }
        if (segment2 == null) {
            atomicReference.set(null);
            return new Segment();
        }
        atomicReference.set(segment2.f77450f);
        segment2.f77450f = null;
        segment2.f77448c = 0;
        return segment2;
    }
}
