package androidx.paging;

import defpackage.md;
import defpackage.v40;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T1", "T2", "R", "Landroidx/paging/SimpleProducerScope;", "", "<anonymous>", "(Landroidx/paging/SimpleProducerScope;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1", f = "PageFetcher.kt", l = {161}, m = "invokeSuspend")
public final class PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1 extends SuspendLambda implements Function2<SimpleProducerScope<PageEvent<Object>>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f18714c;
    public final /* synthetic */ Flow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Flow f18715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableLoadStateCollection f18716f;

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u008a@"}, d2 = {"T1", "T2", "R", "t1", "t2", "Landroidx/paging/CombineSource;", "updateFrom", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$1", f = "PageFetcher.kt", l = {141}, m = "invokeSuspend")
    public final class AnonymousClass1 extends SuspendLambda implements Function4<LoadStates, PageEvent<Object>, CombineSource, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f18717b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f18718c;
        public /* synthetic */ Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ CombineSource f18719e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ SimpleProducerScope f18720f;
        public final /* synthetic */ MutableLoadStateCollection g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SimpleProducerScope simpleProducerScope, Continuation continuation, MutableLoadStateCollection mutableLoadStateCollection) {
            super(4, continuation);
            this.g = mutableLoadStateCollection;
            this.f18720f = simpleProducerScope;
        }

        @Override // kotlin.jvm.functions.Function4
        public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f18720f, (Continuation) obj4, this.g);
            anonymousClass1.f18718c = obj;
            anonymousClass1.d = obj2;
            anonymousClass1.f18719e = (CombineSource) obj3;
            return anonymousClass1.invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f18717b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Object obj2 = this.f18718c;
                Object obj3 = this.d;
                CombineSource combineSource = this.f18719e;
                Object loadStateUpdate = (PageEvent) obj3;
                LoadStates loadStates = (LoadStates) obj2;
                CombineSource combineSource2 = CombineSource.RECEIVER;
                MutableLoadStateCollection mutableLoadStateCollection = this.g;
                if (combineSource == combineSource2) {
                    loadStateUpdate = new PageEvent.LoadStateUpdate(mutableLoadStateCollection.d(), loadStates);
                } else if (loadStateUpdate instanceof PageEvent.Insert) {
                    PageEvent.Insert insert = (PageEvent.Insert) loadStateUpdate;
                    LoadStates loadStates2 = insert.f18671e;
                    mutableLoadStateCollection.b(loadStates2);
                    LoadType loadType = insert.f18668a;
                    List list = insert.f18669b;
                    int i3 = insert.f18670c;
                    int i4 = insert.d;
                    loadType.getClass();
                    list.getClass();
                    loadStateUpdate = new PageEvent.Insert(loadType, list, i3, i4, loadStates2, loadStates);
                } else if (loadStateUpdate instanceof PageEvent.Drop) {
                    LoadType loadType2 = ((PageEvent.Drop) loadStateUpdate).f18663a;
                    LoadState.NotLoading.f18636b.getClass();
                    mutableLoadStateCollection.c(loadType2, LoadState.NotLoading.d);
                } else {
                    if (!(loadStateUpdate instanceof PageEvent.LoadStateUpdate)) {
                        if (loadStateUpdate instanceof PageEvent.StaticList) {
                            md.k("Paging generated an event to display a static list that\n originated from a paginated source. If you see this\n exception, it is most likely a bug in the library.\n Please file a bug so we can fix it at:\n https://issuetracker.google.com/issues/new?component=413106");
                            return null;
                        }
                        v40.g();
                        return null;
                    }
                    LoadStates loadStates3 = ((PageEvent.LoadStateUpdate) loadStateUpdate).f18673a;
                    mutableLoadStateCollection.b(loadStates3);
                    loadStateUpdate = new PageEvent.LoadStateUpdate(loadStates3, loadStates);
                }
                this.f18717b = 1;
                if (this.f18720f.u(loadStateUpdate, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$1$1", f = "FlowExt.kt", l = {147}, m = "invokeSuspend")
    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f18721b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SimpleProducerScope f18722c;
        public final /* synthetic */ Flow d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ AtomicInteger f18723e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ UnbatchedFlowCombiner f18724f;
        public final /* synthetic */ int g;

        /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\b\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"T1", "T2", "R", "", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
        public final class AnonymousClass1<T> implements FlowCollector {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ UnbatchedFlowCombiner f18725b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ int f18726c;

            /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            final class C00301 extends ContinuationImpl {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public /* synthetic */ Object f18727b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public int f18728c;

                public C00301(Continuation continuation) {
                    super(continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f18727b = obj;
                    this.f18728c |= Integer.MIN_VALUE;
                    return AnonymousClass1.this.emit(null, this);
                }
            }

            public AnonymousClass1(UnbatchedFlowCombiner unbatchedFlowCombiner, int i2) {
                this.f18725b = unbatchedFlowCombiner;
                this.f18726c = i2;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
            
                if (kotlinx.coroutines.YieldKt.a(r0) == r1) goto L21;
             */
            @Override // kotlinx.coroutines.flow.FlowCollector
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                /*
                    r5 = this;
                    boolean r0 = r7 instanceof androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.C00301
                    if (r0 == 0) goto L13
                    r0 = r7
                    androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1 r0 = (androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.C00301) r0
                    int r1 = r0.f18728c
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f18728c = r1
                    goto L18
                L13:
                    androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1 r0 = new androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1
                    r0.<init>(r7)
                L18:
                    java.lang.Object r7 = r0.f18727b
                    kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                    int r2 = r0.f18728c
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L35
                    if (r2 == r4) goto L31
                    if (r2 != r3) goto L2a
                    kotlin.ResultKt.b(r7)
                    goto L4e
                L2a:
                    java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.md.k(r5)
                    r5 = 0
                    return r5
                L31:
                    kotlin.ResultKt.b(r7)
                    goto L45
                L35:
                    kotlin.ResultKt.b(r7)
                    r0.f18728c = r4
                    androidx.paging.UnbatchedFlowCombiner r7 = r5.f18725b
                    int r5 = r5.f18726c
                    java.lang.Object r5 = r7.a(r5, r6, r0)
                    if (r5 != r1) goto L45
                    goto L4d
                L45:
                    r0.f18728c = r3
                    java.lang.Object r5 = kotlinx.coroutines.YieldKt.a(r0)
                    if (r5 != r1) goto L4e
                L4d:
                    return r1
                L4e:
                    kotlin.Unit r5 = kotlin.Unit.f71739a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Flow flow, AtomicInteger atomicInteger, SimpleProducerScope simpleProducerScope, UnbatchedFlowCombiner unbatchedFlowCombiner, int i2, Continuation continuation) {
            super(2, continuation);
            this.d = flow;
            this.f18723e = atomicInteger;
            this.f18724f = unbatchedFlowCombiner;
            this.g = i2;
            this.f18722c = simpleProducerScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.d, this.f18723e, this.f18722c, this.f18724f, this.g, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f18721b;
            SimpleProducerScope simpleProducerScope = this.f18722c;
            AtomicInteger atomicInteger = this.f18723e;
            try {
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Flow flow = this.d;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f18724f, this.g);
                    this.f18721b = 1;
                    if (flow.f(anonymousClass1, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    simpleProducerScope.l(null);
                }
                return Unit.f71739a;
            } catch (Throwable th) {
                if (atomicInteger.decrementAndGet() == 0) {
                    simpleProducerScope.l(null);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1(Flow flow, Flow flow2, Continuation continuation, MutableLoadStateCollection mutableLoadStateCollection) {
        super(2, continuation);
        this.d = flow;
        this.f18715e = flow2;
        this.f18716f = mutableLoadStateCollection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1 pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1 = new PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1(this.d, this.f18715e, continuation, this.f18716f);
        pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.f18714c = obj;
        return pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1) create((SimpleProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v3, types: [androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$3] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18713b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.f18714c;
            AtomicInteger atomicInteger = new AtomicInteger(2);
            UnbatchedFlowCombiner unbatchedFlowCombiner = new UnbatchedFlowCombiner(new AnonymousClass1(simpleProducerScope, null, this.f18716f));
            final JobImpl jobImplA = JobKt.a();
            Flow[] flowArr = {this.d, this.f18715e};
            int i3 = 0;
            int i4 = 0;
            while (i4 < 2) {
                BuildersKt.c(simpleProducerScope, jobImplA, null, new AnonymousClass2(flowArr[i4], atomicInteger, simpleProducerScope, unbatchedFlowCombiner, i3, null), 2);
                i4++;
                i3++;
            }
            ?? r15 = new Function0<Unit>() { // from class: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.3
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    jobImplA.cancel(null);
                    return Unit.f71739a;
                }
            };
            this.f18713b = 1;
            if (simpleProducerScope.r(r15, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
