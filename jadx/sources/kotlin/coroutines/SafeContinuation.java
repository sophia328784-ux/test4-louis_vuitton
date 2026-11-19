package kotlin.coroutines;

import defpackage.md;
import defpackage.o91;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.DefaultConstructorMarker;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\t\b\u0001\u0018\u0000 \f*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003:\u0001\rB!\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB\u0017\b\u0011\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0007\u0010\tR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lkotlin/coroutines/SafeContinuation;", "T", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "delegate", "", "initialResult", "<init>", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "(Lkotlin/coroutines/Continuation;)V", "result", "Ljava/lang/Object;", "c", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SafeContinuation<T> implements Continuation<T>, CoroutineStackFrame {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Companion f71841c = new Companion(null);
    public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(SafeContinuation.class, Object.class, "result");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ long f71842e = o91.f76733a.objectFieldOffset(SafeContinuation.class.getDeclaredField("result"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Continuation f71843b;
    private volatile Object result;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/coroutines/SafeContinuation$Companion;", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public SafeContinuation(Continuation<? super T> continuation, Object obj) {
        continuation.getClass();
        this.f71843b = continuation;
        this.result = obj;
    }

    public final Object a() {
        Object obj = this.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
        if (obj == coroutineSingletons) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
            while (true) {
                atomicReferenceFieldUpdater.getClass();
                Unsafe unsafe = o91.f76733a;
                long j2 = f71842e;
                SafeContinuation<T> safeContinuation = this;
                if (unsafe.compareAndSwapObject(safeContinuation, j2, coroutineSingletons, coroutineSingletons2)) {
                    return CoroutineSingletons.COROUTINE_SUSPENDED;
                }
                if (unsafe.getObjectVolatile(safeContinuation, j2) != coroutineSingletons) {
                    obj = safeContinuation.result;
                    break;
                }
                this = safeContinuation;
            }
        }
        if (obj == CoroutineSingletons.RESUMED) {
            return CoroutineSingletons.COROUTINE_SUSPENDED;
        }
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).f71709b;
        }
        return obj;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f71843b;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.f71843b.getContext();
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        SafeContinuation<T> safeContinuation;
        Object obj2;
        Unsafe unsafe;
        long j2;
        while (true) {
            Object obj3 = this.result;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
            if (obj3 == coroutineSingletons) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
                while (true) {
                    atomicReferenceFieldUpdater.getClass();
                    Unsafe unsafe2 = o91.f76733a;
                    long j3 = f71842e;
                    safeContinuation = this;
                    obj2 = obj;
                    if (unsafe2.compareAndSwapObject(safeContinuation, j3, coroutineSingletons, obj2)) {
                        return;
                    }
                    if (unsafe2.getObjectVolatile(safeContinuation, j3) != coroutineSingletons) {
                        break;
                    }
                    this = safeContinuation;
                    obj = obj2;
                }
            } else {
                safeContinuation = this;
                obj2 = obj;
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (obj3 != coroutineSingletons2) {
                    md.k("Already resumed");
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = d;
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.RESUMED;
                do {
                    atomicReferenceFieldUpdater2.getClass();
                    unsafe = o91.f76733a;
                    j2 = f71842e;
                    if (unsafe.compareAndSwapObject(safeContinuation, j2, coroutineSingletons2, coroutineSingletons3)) {
                        safeContinuation.f71843b.resumeWith(obj2);
                        return;
                    }
                } while (unsafe.getObjectVolatile(safeContinuation, j2) == coroutineSingletons2);
            }
            this = safeContinuation;
            obj = obj2;
        }
    }

    public final String toString() {
        return "SafeContinuation for " + this.f71843b;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SafeContinuation(Continuation<? super T> continuation) {
        this(continuation, CoroutineSingletons.UNDECIDED);
        continuation.getClass();
    }
}
