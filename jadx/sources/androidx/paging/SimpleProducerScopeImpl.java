package androidx.paging;

import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/paging/SimpleProducerScopeImpl;", "T", "Landroidx/paging/SimpleProducerScope;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/channels/SendChannel;", "scope", "channel", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/SendChannel;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SimpleProducerScopeImpl<T> implements SimpleProducerScope<T>, CoroutineScope, SendChannel<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SendChannel f18947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f18948c;

    public SimpleProducerScopeImpl(CoroutineScope coroutineScope, SendChannel<? super T> sendChannel) {
        coroutineScope.getClass();
        sendChannel.getClass();
        this.f18947b = sendChannel;
        this.f18948c = coroutineScope;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object b(Object obj) {
        return this.f18947b.b(obj);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getF8068c() {
        return this.f18948c.getF8068c();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean l(Throwable th) {
        return this.f18947b.l(null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.paging.SimpleProducerScope
    public final Object r(PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass3 anonymousClass3, ContinuationImpl continuationImpl) {
        SimpleProducerScopeImpl$awaitClose$1 simpleProducerScopeImpl$awaitClose$1;
        if (continuationImpl instanceof SimpleProducerScopeImpl$awaitClose$1) {
            simpleProducerScopeImpl$awaitClose$1 = (SimpleProducerScopeImpl$awaitClose$1) continuationImpl;
            int i2 = simpleProducerScopeImpl$awaitClose$1.f18952f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                simpleProducerScopeImpl$awaitClose$1.f18952f = i2 - Integer.MIN_VALUE;
            } else {
                simpleProducerScopeImpl$awaitClose$1 = new SimpleProducerScopeImpl$awaitClose$1(this, continuationImpl);
            }
        } else {
            simpleProducerScopeImpl$awaitClose$1 = new SimpleProducerScopeImpl$awaitClose$1(this, continuationImpl);
        }
        Object obj = simpleProducerScopeImpl$awaitClose$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = simpleProducerScopeImpl$awaitClose$1.f18952f;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                CoroutineContext.Element element = this.f18948c.getF8068c().get(Job.Key.f74677b);
                if (element == null) {
                    throw new IllegalStateException("Internal error, context should have a job.");
                }
                Job job = (Job) element;
                simpleProducerScopeImpl$awaitClose$1.f18949b = anonymousClass3;
                simpleProducerScopeImpl$awaitClose$1.f18950c = job;
                simpleProducerScopeImpl$awaitClose$1.f18952f = 1;
                final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(simpleProducerScopeImpl$awaitClose$1), 1);
                cancellableContinuationImpl.initCancellability();
                job.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.paging.SimpleProducerScopeImpl$awaitClose$2$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Result.Companion companion = Result.INSTANCE;
                        Unit unit = Unit.f71739a;
                        cancellableContinuationImpl.resumeWith(unit);
                        return unit;
                    }
                });
                if (cancellableContinuationImpl.getResult() == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                anonymousClass3 = simpleProducerScopeImpl$awaitClose$1.f18949b;
                ResultKt.b(obj);
            }
            anonymousClass3.mo47invoke();
            return Unit.f71739a;
        } catch (Throwable th) {
            anonymousClass3.mo47invoke();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object u(Object obj, Continuation continuation) {
        return this.f18947b.u(obj, continuation);
    }
}
