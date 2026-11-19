package kotlinx.coroutines.flow;

import defpackage.b21;
import defpackage.gt0;
import defpackage.md;
import defpackage.pq0;
import defpackage.r5;
import defpackage.rq;
import defpackage.zy0;
import java.io.Serializable;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NopCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlinx/coroutines/flow/FlowKt__ChannelsKt", "kotlinx/coroutines/flow/FlowKt__DistinctKt", "kotlinx/coroutines/flow/FlowKt__EmittersKt", "kotlinx/coroutines/flow/FlowKt__MergeKt", "kotlinx/coroutines/flow/FlowKt__ShareKt"}, d2 = {}, k = 4, mv = {2, 2, 0}, xi = 48)
public abstract class FlowKt {
    public static final StateFlow A(Flow flow, CoroutineScope coroutineScope, SharingStarted sharingStarted, Object obj) {
        SharingConfig sharingConfigA = FlowKt__ShareKt.a(flow, 1);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(obj);
        CoroutineContext coroutineContext = sharingConfigA.d;
        Flow flow2 = sharingConfigA.f74982a;
        SharingStarted.f74985a.getClass();
        return new ReadonlyStateFlow(mutableStateFlowA, BuildersKt.b(coroutineScope, coroutineContext, Intrinsics.c(sharingStarted, SharingStarted.Companion.f74987b) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(sharingStarted, flow2, mutableStateFlowA, obj, null)));
    }

    public static final ChannelFlowTransformLatest B(Flow flow, Function3 function3) {
        int i2 = FlowKt__MergeKt.f74881a;
        return new ChannelFlowTransformLatest(function3, flow, null, 0, null, 28, null);
    }

    public static final SharedFlow a(SharedFlowImpl sharedFlowImpl) {
        return new ReadonlySharedFlow(sharedFlowImpl, null);
    }

    public static final StateFlow b(MutableStateFlow mutableStateFlow) {
        return new ReadonlyStateFlow(mutableStateFlow, null);
    }

    public static Flow c(Flow flow, int i2) {
        BufferOverflow bufferOverflow = BufferOverflow.SUSPEND;
        if (i2 < 0 && i2 != -2 && i2 != -1) {
            b21.n(pq0.k(i2, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "));
            return null;
        }
        if (i2 == -1) {
            bufferOverflow = BufferOverflow.DROP_OLDEST;
            i2 = 0;
        }
        int i3 = i2;
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if (flow instanceof FusibleFlow) {
            return FusibleFlow.b((FusibleFlow) flow, null, i3, bufferOverflow2, 1);
        }
        return new ChannelFlowOperatorImpl(flow, null, i3, bufferOverflow2, 2, null);
    }

    public static final Flow d(Function2 function2) {
        return new CallbackFlowBuilder(function2, null, 0, null, 14, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Serializable e(Flow flow, FlowCollector flowCollector, ContinuationImpl continuationImpl) throws Throwable {
        FlowKt__ErrorsKt$catchImpl$1 flowKt__ErrorsKt$catchImpl$1;
        Ref$ObjectRef ref$ObjectRef;
        Job job;
        CancellationException cancellationException;
        if (continuationImpl instanceof FlowKt__ErrorsKt$catchImpl$1) {
            flowKt__ErrorsKt$catchImpl$1 = (FlowKt__ErrorsKt$catchImpl$1) continuationImpl;
            int i2 = flowKt__ErrorsKt$catchImpl$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ErrorsKt$catchImpl$1.d = i2 - Integer.MIN_VALUE;
            } else {
                flowKt__ErrorsKt$catchImpl$1 = new FlowKt__ErrorsKt$catchImpl$1(continuationImpl);
            }
        } else {
            flowKt__ErrorsKt$catchImpl$1 = new FlowKt__ErrorsKt$catchImpl$1(continuationImpl);
        }
        Object obj = flowKt__ErrorsKt$catchImpl$1.f74844c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flowKt__ErrorsKt$catchImpl$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            try {
                FlowCollector flowKt__ErrorsKt$catchImpl$2 = new FlowKt__ErrorsKt$catchImpl$2(flowCollector, ref$ObjectRef2);
                flowKt__ErrorsKt$catchImpl$1.f74843b = ref$ObjectRef2;
                flowKt__ErrorsKt$catchImpl$1.d = 1;
                if (flow.f(flowKt__ErrorsKt$catchImpl$2, flowKt__ErrorsKt$catchImpl$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                return null;
            } catch (Throwable th) {
                th = th;
                ref$ObjectRef = ref$ObjectRef2;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = flowKt__ErrorsKt$catchImpl$1.f74843b;
            try {
                ResultKt.b(obj);
                return null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Throwable th3 = (Throwable) ref$ObjectRef.f71921b;
        if ((th3 != null && th3.equals(th)) || ((job = (Job) flowKt__ErrorsKt$catchImpl$1.getContext().get(Job.Key.f74677b)) != null && job.isCancelled() && (cancellationException = job.getCancellationException()) != null && cancellationException.equals(th))) {
            throw th;
        }
        if (th3 == null) {
            return th;
        }
        if (th instanceof CancellationException) {
            ExceptionsKt.a(th3, th);
            throw th3;
        }
        ExceptionsKt.a(th, th3);
        throw th;
    }

    public static final Flow f(Function2 function2) {
        return new ChannelFlowBuilder(function2, null, 0, null, 14, null);
    }

    public static final Object g(Flow flow, Function2 function2, Continuation continuation) {
        Object objF = c(v(flow, function2), 0).f(NopCollector.f75084b, continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (objF != coroutineSingletons) {
            objF = Unit.f71739a;
        }
        return objF == coroutineSingletons ? objF : Unit.f71739a;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1] */
    public static final FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1 h(Flow flow, Flow flow2, Flow flow3, final Function4 function4) {
        final Flow[] flowArr = {flow, flow2, flow3};
        return new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 2, 0})
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2", f = "Zip.kt", l = {329, 258}, m = "invokeSuspend", v = 1)
            public final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<Object>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public FlowCollector f74939b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public int f74940c;
                public /* synthetic */ FlowCollector d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public /* synthetic */ Object[] f74941e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function4 f74942f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function4 function4) {
                    super(3, continuation);
                    this.f74942f = function4;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2((Continuation) obj3, this.f74942f);
                    anonymousClass2.d = (FlowCollector) obj;
                    anonymousClass2.f74941e = (Object[]) obj2;
                    return anonymousClass2.invokeSuspend(Unit.f71739a);
                }

                /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
                
                    if (r0.emit(r8, r7) == r2) goto L15;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                    /*
                        r7 = this;
                        kotlinx.coroutines.flow.FlowCollector r0 = r7.d
                        java.lang.Object[] r1 = r7.f74941e
                        kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r3 = r7.f74940c
                        r4 = 2
                        r5 = 1
                        r6 = 0
                        if (r3 == 0) goto L21
                        if (r3 == r5) goto L1b
                        if (r3 != r4) goto L15
                        kotlin.ResultKt.b(r8)
                        goto L4b
                    L15:
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.md.k(r7)
                        return r6
                    L1b:
                        kotlinx.coroutines.flow.FlowCollector r0 = r7.f74939b
                        kotlin.ResultKt.b(r8)
                        goto L3c
                    L21:
                        kotlin.ResultKt.b(r8)
                        r8 = 0
                        r8 = r1[r8]
                        r3 = r1[r5]
                        r1 = r1[r4]
                        r7.d = r6
                        r7.f74941e = r6
                        r7.f74939b = r0
                        r7.f74940c = r5
                        kotlin.jvm.functions.Function4 r5 = r7.f74942f
                        java.lang.Object r8 = r5.g(r8, r3, r1, r7)
                        if (r8 != r2) goto L3c
                        goto L4a
                    L3c:
                        r7.d = r6
                        r7.f74941e = r6
                        r7.f74939b = r6
                        r7.f74940c = r4
                        java.lang.Object r7 = r0.emit(r8, r7)
                        if (r7 != r2) goto L4b
                    L4a:
                        return r2
                    L4b:
                        kotlin.Unit r7 = kotlin.Unit.f71739a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objA = CombineKt.a(continuation, FlowKt__ZipKt$nullArrayFactory$1.f74961b, new AnonymousClass2(null, function4), flowCollector, flowArr);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
    }

    public static final Flow i(BufferedChannel bufferedChannel) {
        return new ChannelAsFlow(bufferedChannel, true, null, 0, null, 28, null);
    }

    public static final Flow j(Flow flow, long j2) {
        if (j2 < 0) {
            md.n("Debounce timeout should not be negative");
            return null;
        }
        if (j2 == 0) {
            return flow;
        }
        final FlowKt__DelayKt$debounceInternal$1 flowKt__DelayKt$debounceInternal$1 = new FlowKt__DelayKt$debounceInternal$1(new r5(j2, 3), flow, null);
        return new Flow<Object>() { // from class: kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                FlowCoroutineKt$scopedFlow$1$1 flowCoroutineKt$scopedFlow$1$1 = new FlowCoroutineKt$scopedFlow$1$1(flowKt__DelayKt$debounceInternal$1, flowCollector, null);
                FlowCoroutine flowCoroutine = new FlowCoroutine(continuation.getContext(), continuation);
                Object objA = UndispatchedKt.a(flowCoroutine, true, flowCoroutine, flowCoroutineKt$scopedFlow$1$1);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
    }

    public static final Flow k(Flow flow) {
        if (flow instanceof StateFlow) {
            return flow;
        }
        boolean z = flow instanceof DistinctFlowImpl;
        gt0 gt0Var = FlowKt__DistinctKt.f74821a;
        rq rqVar = FlowKt__DistinctKt.f74822b;
        if (z) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) flow;
            if (distinctFlowImpl.f74785c == gt0Var && distinctFlowImpl.d == rqVar) {
                return flow;
            }
        }
        return new DistinctFlowImpl(flow, gt0Var, rqVar);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1] */
    public static final FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 l(final CancellableFlow cancellableFlow, final int i2) {
        if (i2 >= 0) {
            return new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1
                @Override // kotlinx.coroutines.flow.Flow
                public final Object f(FlowCollector flowCollector, Continuation continuation) {
                    Object objF = cancellableFlow.f(new FlowKt__LimitKt$drop$2$1(new Ref$IntRef(), i2, flowCollector), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            };
        }
        b21.n(pq0.k(i2, "Drop count should be non-negative, but had "));
        return null;
    }

    public static final Object m(FlowCollector flowCollector, ReceiveChannel receiveChannel, Continuation continuation) {
        Object objA = FlowKt__ChannelsKt.a(flowCollector, receiveChannel, true, continuation);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    public static final Object n(FlowCollector flowCollector, Flow flow, SuspendLambda suspendLambda) throws Throwable {
        if (flowCollector instanceof ThrowingCollector) {
            throw ((ThrowingCollector) flowCollector).f75022b;
        }
        Object objF = flow.f(flowCollector, suspendLambda);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    public static final Flow o() {
        return EmptyFlow.f74790b;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0070  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1] */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlinx.coroutines.flow.Flow] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v9, types: [kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1] */
    public static final Object p(Flow flow, Continuation continuation) {
        FlowKt__ReduceKt$first$1 flowKt__ReduceKt$first$1;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        ?? r5;
        if (continuation instanceof FlowKt__ReduceKt$first$1) {
            flowKt__ReduceKt$first$1 = (FlowKt__ReduceKt$first$1) continuation;
            int i2 = flowKt__ReduceKt$first$1.f74894e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$1.f74894e = i2 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
            }
        } else {
            flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
        }
        Object obj = flowKt__ReduceKt$first$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flowKt__ReduceKt$first$1.f74894e;
        if (i3 == 0) {
            ResultKt.b(obj);
            final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.f71921b = NullSurrogateKt.f75085a;
            ?? r2 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation2) {
                    ref$ObjectRef2.f71921b = obj2;
                    throw new AbortFlowException(this);
                }
            };
            try {
                flowKt__ReduceKt$first$1.f74892b = ref$ObjectRef2;
                flowKt__ReduceKt$first$1.f74893c = r2;
                flowKt__ReduceKt$first$1.f74894e = 1;
                if (flow.f(r2, flowKt__ReduceKt$first$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                r5 = r2;
                if (e2.f75023b == r5) {
                    throw e2;
                }
                JobKt.d(flowKt__ReduceKt$first$1.getContext());
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r5 = flowKt__ReduceKt$first$1.f74893c;
            ref$ObjectRef = flowKt__ReduceKt$first$1.f74892b;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                if (e2.f75023b == r5) {
                    throw e2;
                }
                JobKt.d(flowKt__ReduceKt$first$1.getContext());
            }
        }
        Object obj2 = ref$ObjectRef.f71921b;
        if (obj2 != NullSurrogateKt.f75085a) {
            return obj2;
        }
        zy0.c("Expected at least one element");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0070  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object q(Flow flow, Function2 function2, ContinuationImpl continuationImpl) {
        FlowKt__ReduceKt$first$3 flowKt__ReduceKt$first$3;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        FlowKt__ReduceKt$first$$inlined$collectWhile$2 flowKt__ReduceKt$first$$inlined$collectWhile$2;
        if (continuationImpl instanceof FlowKt__ReduceKt$first$3) {
            flowKt__ReduceKt$first$3 = (FlowKt__ReduceKt$first$3) continuationImpl;
            int i2 = flowKt__ReduceKt$first$3.f74897e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$3.f74897e = i2 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuationImpl);
            }
        } else {
            flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuationImpl);
        }
        Object obj = flowKt__ReduceKt$first$3.d;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flowKt__ReduceKt$first$3.f74897e;
        if (i3 == 0) {
            ResultKt.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.f71921b = NullSurrogateKt.f75085a;
            FlowKt__ReduceKt$first$$inlined$collectWhile$2 flowKt__ReduceKt$first$$inlined$collectWhile$3 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2(function2, ref$ObjectRef2);
            try {
                flowKt__ReduceKt$first$3.f74895b = ref$ObjectRef2;
                flowKt__ReduceKt$first$3.f74896c = flowKt__ReduceKt$first$$inlined$collectWhile$3;
                flowKt__ReduceKt$first$3.f74897e = 1;
                if (flow.f(flowKt__ReduceKt$first$$inlined$collectWhile$3, flowKt__ReduceKt$first$3) == obj2) {
                    return obj2;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                flowKt__ReduceKt$first$$inlined$collectWhile$2 = flowKt__ReduceKt$first$$inlined$collectWhile$3;
                if (e2.f75023b == flowKt__ReduceKt$first$$inlined$collectWhile$2) {
                    throw e2;
                }
                JobKt.d(flowKt__ReduceKt$first$3.getContext());
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            flowKt__ReduceKt$first$$inlined$collectWhile$2 = flowKt__ReduceKt$first$3.f74896c;
            ref$ObjectRef = flowKt__ReduceKt$first$3.f74895b;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                if (e2.f75023b == flowKt__ReduceKt$first$$inlined$collectWhile$2) {
                    throw e2;
                }
                JobKt.d(flowKt__ReduceKt$first$3.getContext());
            }
        }
        Object obj3 = ref$ObjectRef.f71921b;
        if (obj3 != NullSurrogateKt.f75085a) {
            return obj3;
        }
        zy0.c("Expected at least one element matching the predicate");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:30:0x0062  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1] */
    /* JADX WARN: Type inference failed for: r4v0, types: [kotlinx.coroutines.flow.Flow] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v9, types: [kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1] */
    public static final Object r(Flow flow, ContinuationImpl continuationImpl) {
        FlowKt__ReduceKt$firstOrNull$1 flowKt__ReduceKt$firstOrNull$1;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        ?? r4;
        if (continuationImpl instanceof FlowKt__ReduceKt$firstOrNull$1) {
            flowKt__ReduceKt$firstOrNull$1 = (FlowKt__ReduceKt$firstOrNull$1) continuationImpl;
            int i2 = flowKt__ReduceKt$firstOrNull$1.f74906e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$1.f74906e = i2 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuationImpl);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuationImpl);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flowKt__ReduceKt$firstOrNull$1.f74906e;
        if (i3 == 0) {
            ResultKt.b(obj);
            final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ?? r2 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    ref$ObjectRef2.f71921b = obj2;
                    throw new AbortFlowException(this);
                }
            };
            try {
                flowKt__ReduceKt$firstOrNull$1.f74904b = ref$ObjectRef2;
                flowKt__ReduceKt$firstOrNull$1.f74905c = r2;
                flowKt__ReduceKt$firstOrNull$1.f74906e = 1;
                if (flow.f(r2, flowKt__ReduceKt$firstOrNull$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                r4 = r2;
                if (e2.f75023b == r4) {
                    throw e2;
                }
                JobKt.d(flowKt__ReduceKt$firstOrNull$1.getContext());
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r4 = flowKt__ReduceKt$firstOrNull$1.f74905c;
            ref$ObjectRef = flowKt__ReduceKt$firstOrNull$1.f74904b;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                if (e2.f75023b == r4) {
                    throw e2;
                }
                JobKt.d(flowKt__ReduceKt$firstOrNull$1.getContext());
            }
        }
        return ref$ObjectRef.f71921b;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:30:0x0062  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object s(ChannelLimitedFlowMerge channelLimitedFlowMerge, Function2 function2, ContinuationImpl continuationImpl) {
        FlowKt__ReduceKt$firstOrNull$3 flowKt__ReduceKt$firstOrNull$3;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e2;
        FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
        if (continuationImpl instanceof FlowKt__ReduceKt$firstOrNull$3) {
            flowKt__ReduceKt$firstOrNull$3 = (FlowKt__ReduceKt$firstOrNull$3) continuationImpl;
            int i2 = flowKt__ReduceKt$firstOrNull$3.f74909e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$3.f74909e = i2 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$3 = new FlowKt__ReduceKt$firstOrNull$3(continuationImpl);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$3 = new FlowKt__ReduceKt$firstOrNull$3(continuationImpl);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$3.d;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flowKt__ReduceKt$firstOrNull$3.f74909e;
        if (i3 == 0) {
            ResultKt.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$3 = new FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2(function2, ref$ObjectRef2);
            try {
                flowKt__ReduceKt$firstOrNull$3.f74907b = ref$ObjectRef2;
                flowKt__ReduceKt$firstOrNull$3.f74908c = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$3;
                flowKt__ReduceKt$firstOrNull$3.f74909e = 1;
                if (channelLimitedFlowMerge.f(flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$3, flowKt__ReduceKt$firstOrNull$3) == obj2) {
                    return obj2;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e3) {
                ref$ObjectRef = ref$ObjectRef2;
                e2 = e3;
                flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$3;
                if (e2.f75023b == flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2) {
                    throw e2;
                }
                JobKt.d(flowKt__ReduceKt$firstOrNull$3.getContext());
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 = flowKt__ReduceKt$firstOrNull$3.f74908c;
            ref$ObjectRef = flowKt__ReduceKt$firstOrNull$3.f74907b;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e4) {
                e2 = e4;
                if (e2.f75023b == flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2) {
                    throw e2;
                }
                JobKt.d(flowKt__ReduceKt$firstOrNull$3.getContext());
            }
        }
        return ref$ObjectRef.f71921b;
    }

    public static final Flow t(Function2 function2) {
        return new SafeFlow(function2);
    }

    public static final void u(Flow flow, CoroutineScope coroutineScope) {
        BuildersKt.c(coroutineScope, null, null, new FlowKt__CollectKt$launchIn$1(flow, null), 3);
    }

    public static final ChannelFlowTransformLatest v(Flow flow, Function2 function2) {
        int i2 = FlowKt__MergeKt.f74881a;
        return B(flow, new FlowKt__MergeKt$mapLatest$1(function2, null));
    }

    public static final ChannelLimitedFlowMerge w(Flow... flowArr) {
        int i2 = FlowKt__MergeKt.f74881a;
        return new ChannelLimitedFlowMerge(flowArr.length == 0 ? EmptyList.f71768b : new ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1(flowArr), null, 0, null, 14, null);
    }

    public static final SharedFlow x(SharedFlowImpl sharedFlowImpl, Function2 function2) {
        return new SubscribedSharedFlow(sharedFlowImpl, function2);
    }

    public static final Flow y(ReceiveChannel receiveChannel) {
        return new ChannelAsFlow(receiveChannel, false, null, 0, null, 28, null);
    }

    public static final SharedFlow z(Flow flow, CoroutineScope coroutineScope, SharingStarted sharingStarted, int i2) {
        SharingConfig sharingConfigA = FlowKt__ShareKt.a(flow, i2);
        SharedFlowImpl sharedFlowImplA = SharedFlowKt.a(i2, sharingConfigA.f74983b, sharingConfigA.f74984c);
        CoroutineContext coroutineContext = sharingConfigA.d;
        Flow flow2 = sharingConfigA.f74982a;
        Symbol symbol = SharedFlowKt.f74979a;
        SharingStarted.f74985a.getClass();
        return new ReadonlySharedFlow(sharedFlowImplA, BuildersKt.b(coroutineScope, coroutineContext, Intrinsics.c(sharingStarted, SharingStarted.Companion.f74987b) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new FlowKt__ShareKt$launchSharing$1(sharingStarted, flow2, sharedFlowImplA, symbol, null)));
    }
}
