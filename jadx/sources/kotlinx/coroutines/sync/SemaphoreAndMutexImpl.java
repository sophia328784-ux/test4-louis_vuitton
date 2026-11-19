package kotlinx.coroutines.sync;

import defpackage.b21;
import defpackage.mt;
import defpackage.no0;
import defpackage.o91;
import defpackage.pq0;
import defpackage.xe0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004R\u000b\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004R\u0011\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004R\u000b\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004R\u000b\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;", "", "", "permits", "acquiredPermits", "<init>", "(II)V", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/sync/SemaphoreSegment;", "head", "Lkotlinx/atomicfu/AtomicLong;", "deqIdx", "tail", "enqIdx", "Lkotlinx/atomicfu/AtomicInt;", "_availablePermits", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class SemaphoreAndMutexImpl {
    public static final /* synthetic */ AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f75211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75212f;
    public static final /* synthetic */ AtomicLongFieldUpdater g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f75213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ long f75214i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ long f75215j;
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f75216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final xe0 f75217c;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    static {
        Unsafe unsafe = o91.f76733a;
        f75214i = unsafe.objectFieldOffset(SemaphoreAndMutexImpl.class.getDeclaredField("head$volatile"));
        f75211e = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");
        f75212f = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");
        f75215j = unsafe.objectFieldOffset(SemaphoreAndMutexImpl.class.getDeclaredField("tail$volatile"));
        g = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");
        f75213h = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    }

    public SemaphoreAndMutexImpl(int i2, int i3) {
        this.f75216b = i2;
        if (i2 <= 0) {
            b21.n(pq0.k(i2, "Semaphore should have at least 1 permit, but had "));
            throw null;
        }
        if (i3 < 0 || i3 > i2) {
            b21.n(pq0.k(i2, "The number of acquired permits should be in 0.."));
            throw null;
        }
        SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
        this.head$volatile = semaphoreSegment;
        this.tail$volatile = semaphoreSegment;
        this._availablePermits$volatile = i2 - i3;
        this.f75217c = new xe0(this, 15);
    }

    public final Object a(ContinuationImpl continuationImpl) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int andDecrement;
        int i2;
        do {
            atomicIntegerFieldUpdater = f75213h;
            andDecrement = atomicIntegerFieldUpdater.getAndDecrement(this);
            i2 = this.f75216b;
        } while (andDecrement > i2);
        if (andDecrement > 0) {
            return Unit.f71739a;
        }
        CancellableContinuationImpl cancellableContinuationImplB = CancellableContinuationKt.b(IntrinsicsKt.b(continuationImpl));
        try {
            if (!b(cancellableContinuationImplB)) {
                while (true) {
                    int andDecrement2 = atomicIntegerFieldUpdater.getAndDecrement(this);
                    if (andDecrement2 <= i2) {
                        if (andDecrement2 > 0) {
                            cancellableContinuationImplB.resume(Unit.f71739a, this.f75217c);
                            break;
                        }
                        if (b(cancellableContinuationImplB)) {
                            break;
                        }
                    }
                }
            }
            Object result = cancellableContinuationImplB.getResult();
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (result != coroutineSingletons) {
                result = Unit.f71739a;
            }
            return result == coroutineSingletons ? result : Unit.f71739a;
        } catch (Throwable th) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    public final boolean b(Waiter waiter) {
        Object objA;
        Unsafe unsafe;
        SemaphoreAndMutexImpl semaphoreAndMutexImpl = this;
        f75212f.getClass();
        Unsafe unsafe2 = o91.f76733a;
        long j2 = f75215j;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) unsafe2.getObjectVolatile(semaphoreAndMutexImpl, j2);
        long andIncrement = g.getAndIncrement(semaphoreAndMutexImpl);
        SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1.f75218b;
        long j3 = andIncrement / ((long) SemaphoreKt.f75224f);
        loop0: while (true) {
            objA = ConcurrentLinkedListKt.a(semaphoreSegment, j3, semaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1);
            if (SegmentOrClosed.b(objA)) {
                break;
            }
            Segment segmentA = SegmentOrClosed.a(objA);
            while (true) {
                Segment segment = (Segment) o91.f76733a.getObjectVolatile(semaphoreAndMutexImpl, j2);
                if (segment.f75137f >= segmentA.f75137f) {
                    semaphoreAndMutexImpl = this;
                    break loop0;
                }
                if (!segmentA.o()) {
                    break;
                }
                do {
                    unsafe = o91.f76733a;
                    semaphoreAndMutexImpl = this;
                    if (unsafe.compareAndSwapObject(semaphoreAndMutexImpl, f75215j, segment, segmentA)) {
                        if (!segment.k()) {
                            break loop0;
                        }
                        segment.i();
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(semaphoreAndMutexImpl, j2) == segment);
                if (segmentA.k()) {
                    segmentA.i();
                }
            }
            semaphoreAndMutexImpl = this;
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.a(objA);
        AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.f75225h;
        int i2 = (int) (andIncrement % ((long) SemaphoreKt.f75224f));
        while (!atomicReferenceArray.compareAndSet(i2, null, waiter)) {
            if (atomicReferenceArray.get(i2) != null) {
                Symbol symbol = SemaphoreKt.f75221b;
                Symbol symbol2 = SemaphoreKt.f75222c;
                while (!atomicReferenceArray.compareAndSet(i2, symbol, symbol2)) {
                    if (atomicReferenceArray.get(i2) != symbol) {
                        return false;
                    }
                }
                ((CancellableContinuation) waiter).resume(Unit.f71739a, semaphoreAndMutexImpl.f75217c);
                return true;
            }
        }
        waiter.invokeOnCancellation(semaphoreSegment2, i2);
        return true;
    }

    public final boolean e() {
        Object objA;
        Unsafe unsafe;
        d.getClass();
        Unsafe unsafe2 = o91.f76733a;
        long j2 = f75214i;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) unsafe2.getObjectVolatile(this, j2);
        long andIncrement = f75211e.getAndIncrement(this);
        long j3 = andIncrement / ((long) SemaphoreKt.f75224f);
        SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1.f75219b;
        loop0: while (true) {
            objA = ConcurrentLinkedListKt.a(semaphoreSegment, j3, semaphoreAndMutexImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (SegmentOrClosed.b(objA)) {
                break;
            }
            Segment segmentA = SegmentOrClosed.a(objA);
            while (true) {
                Segment segment = (Segment) o91.f76733a.getObjectVolatile(this, j2);
                if (segment.f75137f >= segmentA.f75137f) {
                    break loop0;
                }
                if (!segmentA.o()) {
                    break;
                }
                do {
                    unsafe = o91.f76733a;
                    if (unsafe.compareAndSwapObject(this, f75214i, segment, segmentA)) {
                        if (!segment.k()) {
                            break loop0;
                        }
                        segment.i();
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(this, j2) == segment);
                if (segmentA.k()) {
                    segmentA.i();
                }
            }
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.a(objA);
        AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.f75225h;
        semaphoreSegment2.b();
        boolean z = false;
        if (semaphoreSegment2.f75137f <= j3) {
            int i2 = (int) (andIncrement % ((long) SemaphoreKt.f75224f));
            Object andSet = atomicReferenceArray.getAndSet(i2, SemaphoreKt.f75221b);
            if (andSet == null) {
                int i3 = SemaphoreKt.f75220a;
                for (int i4 = 0; i4 < i3; i4++) {
                    if (atomicReferenceArray.get(i2) == SemaphoreKt.f75222c) {
                        return true;
                    }
                }
                Symbol symbol = SemaphoreKt.f75221b;
                Symbol symbol2 = SemaphoreKt.d;
                while (!atomicReferenceArray.compareAndSet(i2, symbol, symbol2)) {
                    if (atomicReferenceArray.get(i2) != symbol) {
                        return !z;
                    }
                }
                z = true;
                return !z;
            }
            if (andSet != SemaphoreKt.f75223e) {
                if (!(andSet instanceof CancellableContinuation)) {
                    if (andSet instanceof SelectInstance) {
                        return ((SelectInstance) andSet).d(this, Unit.f71739a);
                    }
                    mt.f(andSet, "unexpected: ");
                    return false;
                }
                CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                Object objTryResume = cancellableContinuation.tryResume(Unit.f71739a, null, this.f75217c);
                if (objTryResume != null) {
                    cancellableContinuation.completeResume(objTryResume);
                    return true;
                }
            }
        }
        return false;
    }

    public final void release() {
        int i2;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f75213h;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i3 = this.f75216b;
            if (andIncrement >= i3) {
                do {
                    i2 = atomicIntegerFieldUpdater.get(this);
                    if (i2 <= i3) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, i3));
                no0.i(i3, "The number of released permits cannot be greater than ");
                return;
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!e());
    }
}
