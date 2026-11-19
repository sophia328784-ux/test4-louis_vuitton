package kotlinx.coroutines.flow.internal;

import defpackage.ll0;
import defpackage.xq0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "collector", "Lkotlin/coroutines/CoroutineContext;", "collectContext", "<init>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SafeCollector<T> extends ContinuationImpl implements FlowCollector<T>, CoroutineStackFrame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlowCollector f75088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineContext f75089c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CoroutineContext f75090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Continuation f75091f;

    public SafeCollector(FlowCollector<? super T> flowCollector, CoroutineContext coroutineContext) {
        super(NoOpContinuation.f75082b, EmptyCoroutineContext.f71840b);
        this.f75088b = flowCollector;
        this.f75089c = coroutineContext;
        this.d = ((Number) coroutineContext.fold(0, new xq0(4, (byte) 0))).intValue();
    }

    public final Object b(Continuation continuation, Object obj) {
        CoroutineContext context = continuation.getContext();
        JobKt.d(context);
        CoroutineContext coroutineContext = this.f75090e;
        if (coroutineContext != context) {
            if (coroutineContext instanceof DownstreamExceptionContext) {
                throw new IllegalStateException(StringsKt.b0("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((DownstreamExceptionContext) coroutineContext).f75077c + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) context.fold(0, new ll0(this, 12))).intValue() != this.d) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.f75089c + ",\n\t\tbut emission happened in " + context + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.f75090e = context;
        }
        this.f75091f = continuation;
        Function3 function3 = SafeCollectorKt.f75092a;
        FlowCollector flowCollector = this.f75088b;
        flowCollector.getClass();
        Object objA = function3.A(flowCollector, obj, this);
        if (!Intrinsics.c(objA, CoroutineSingletons.COROUTINE_SUSPENDED)) {
            this.f75091f = null;
        }
        return objA;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        try {
            Object objB = b(continuation, obj);
            return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
        } catch (Throwable th) {
            this.f75090e = new DownstreamExceptionContext(th, continuation.getContext());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.f75091f;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        CoroutineContext coroutineContext = this.f75090e;
        return coroutineContext == null ? EmptyCoroutineContext.f71840b : coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Throwable thA = Result.a(obj);
        if (thA != null) {
            this.f75090e = new DownstreamExceptionContext(thA, getContext());
        }
        Continuation continuation = this.f75091f;
        if (continuation != null) {
            continuation.resumeWith(obj);
        }
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
