package kotlinx.coroutines.sync;

import defpackage.lc0;
import defpackage.md;
import defpackage.o60;
import defpackage.o91;
import defpackage.tg0;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\nB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0013\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00078\u0002X\u0082\u0004¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl;", "Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;", "Lkotlinx/coroutines/sync/Mutex;", "", "locked", "<init>", "(Z)V", "Lkotlinx/atomicfu/AtomicRef;", "", "owner", "CancellableContinuationWithOwner", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class MutexImpl extends SemaphoreAndMutexImpl implements Mutex {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f75207k = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    public static final /* synthetic */ long l = o91.f76733a.objectFieldOffset(MutexImpl.class.getDeclaredField("owner$volatile"));
    private volatile /* synthetic */ Object owner$volatile;

    public MutexImpl(boolean z) {
        super(1, z ? 1 : 0);
        this.owner$volatile = z ? null : MutexKt.f75210a;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final Object c(Continuation continuation) {
        if (g()) {
            return Unit.f71739a;
        }
        CancellableContinuationImpl cancellableContinuationImplB = CancellableContinuationKt.b(IntrinsicsKt.b(continuation));
        try {
            CancellableContinuationWithOwner cancellableContinuationWithOwner = new CancellableContinuationWithOwner(cancellableContinuationImplB, null);
            while (true) {
                int andDecrement = SemaphoreAndMutexImpl.f75213h.getAndDecrement(this);
                if (andDecrement <= this.f75216b) {
                    if (andDecrement > 0) {
                        cancellableContinuationWithOwner.resume(Unit.f71739a, this.f75217c);
                        break;
                    }
                    if (b(cancellableContinuationWithOwner)) {
                        break;
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

    @Override // kotlinx.coroutines.sync.Mutex
    public final void d(Object obj) {
        while (this.f()) {
            f75207k.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = l;
            Object objectVolatile = unsafe.getObjectVolatile(this, j2);
            Symbol symbol = MutexKt.f75210a;
            if (objectVolatile != symbol) {
                if (objectVolatile != obj && obj != null) {
                    lc0.k(objectVolatile, ", but ", obj, " is expected", "This mutex is locked by ");
                    return;
                }
                while (true) {
                    Unsafe unsafe2 = o91.f76733a;
                    MutexImpl mutexImpl = this;
                    if (unsafe2.compareAndSwapObject(mutexImpl, l, objectVolatile, symbol)) {
                        mutexImpl.release();
                        return;
                    } else {
                        if (unsafe2.getObjectVolatile(mutexImpl, j2) != objectVolatile) {
                            this = mutexImpl;
                            break;
                        }
                        this = mutexImpl;
                    }
                }
            }
        }
        md.k("This mutex is not locked");
    }

    public final boolean f() {
        return Math.max(SemaphoreAndMutexImpl.f75213h.get(this), 0) == 0;
    }

    public final boolean g() {
        int iH = h();
        if (iH == 0) {
            return true;
        }
        if (iH == 1) {
            return false;
        }
        if (iH != 2) {
            md.k("unexpected");
            return false;
        }
        tg0.c("This mutex is already locked by the specified owner: null");
        return false;
    }

    public final int h() {
        int i2;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = SemaphoreAndMutexImpl.f75213h;
            int i3 = atomicIntegerFieldUpdater.get(this);
            int i4 = this.f75216b;
            if (i3 > i4) {
                do {
                    i2 = atomicIntegerFieldUpdater.get(this);
                    if (i2 <= i4) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, i4));
            } else {
                if (i3 <= 0) {
                    return 1;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i3, i3 - 1)) {
                    f75207k.getClass();
                    o91.f76733a.putObjectVolatile(this, l, (Object) null);
                    return 0;
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(DebugStringsKt.a(this));
        sb.append("[isLocked=");
        sb.append(f());
        sb.append(",owner=");
        f75207k.getClass();
        return o60.r(sb, o91.f76733a.getObjectVolatile(this, l), ']');
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u001f\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;", "Lkotlinx/coroutines/CancellableContinuation;", "", "Lkotlinx/coroutines/Waiter;", "Lkotlinx/coroutines/CancellableContinuationImpl;", "cont", "", "owner", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class CancellableContinuationWithOwner implements CancellableContinuation<Unit>, Waiter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CancellableContinuationImpl f75208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f75209c;

        public CancellableContinuationWithOwner(CancellableContinuationImpl<? super Unit> cancellableContinuationImpl, Object obj) {
            this.f75208b = cancellableContinuationImpl;
            this.f75209c = obj;
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final boolean cancel(Throwable th) {
            return this.f75208b.cancel(th);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void completeResume(Object obj) {
            this.f75208b.completeResume(obj);
        }

        @Override // kotlin.coroutines.Continuation
        public final CoroutineContext getContext() {
            return this.f75208b.getContext();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void invokeOnCancellation(Function1 function1) {
            this.f75208b.invokeOnCancellation(function1);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final boolean isActive() {
            return this.f75208b.isActive();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final boolean isCompleted() {
            return this.f75208b.isCompleted();
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void resume(Object obj, Function3 function3) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.f75207k;
            Object obj2 = this.f75209c;
            final MutexImpl mutexImpl = MutexImpl.this;
            atomicReferenceFieldUpdater.set(mutexImpl, obj2);
            Function1<? super Throwable, Unit> function1 = new Function1() { // from class: kotlinx.coroutines.sync.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    mutexImpl.d(this.f75209c);
                    return Unit.f71739a;
                }
            };
            this.f75208b.resume((Unit) obj, function1);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, Object obj) {
            this.f75208b.resumeUndispatched(coroutineDispatcher, (Unit) obj);
        }

        @Override // kotlin.coroutines.Continuation
        public final void resumeWith(Object obj) {
            this.f75208b.resumeWith(obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final Object tryResume(Object obj, Object obj2, Function3 function3) {
            final MutexImpl mutexImpl = MutexImpl.this;
            Function3 function4 = new Function3() { // from class: kotlinx.coroutines.sync.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj3, Object obj4, Object obj5) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.f75207k;
                    Object obj6 = this.f75209c;
                    MutexImpl mutexImpl2 = mutexImpl;
                    atomicReferenceFieldUpdater.set(mutexImpl2, obj6);
                    mutexImpl2.d(obj6);
                    return Unit.f71739a;
                }
            };
            Object objTryResume = this.f75208b.tryResume((Unit) obj, null, function4);
            if (objTryResume != null) {
                MutexImpl.f75207k.set(mutexImpl, this.f75209c);
            }
            return objTryResume;
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final Object tryResumeWithException(Throwable th) {
            return this.f75208b.tryResumeWithException(th);
        }

        @Override // kotlinx.coroutines.Waiter
        public final void invokeOnCancellation(Segment segment, int i2) {
            this.f75208b.invokeOnCancellation(segment, i2);
        }
    }
}
