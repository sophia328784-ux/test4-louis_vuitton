package androidx.paging;

import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: Add missing generic type declarations: [Value] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00060\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Landroidx/paging/SimpleProducerScope;", "Landroidx/paging/PagingData;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcher$flow$1", f = "PageFetcher.kt", l = {136}, m = "invokeSuspend")
public final class PageFetcher$flow$1<Value> extends SuspendLambda implements Function2<SimpleProducerScope<PagingData<Value>>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f18690c;
    public final /* synthetic */ RemoteMediator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PageFetcher f18691e;

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00060\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.paging.PageFetcher$flow$1$1", f = "PageFetcher.kt", l = {63, 63}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super Boolean>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f18692b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f18693c;
        public final /* synthetic */ RemoteMediatorAccessor d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(RemoteMediatorAccessor remoteMediatorAccessor, Continuation continuation) {
            super(2, continuation);
            this.d = remoteMediatorAccessor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, continuation);
            anonymousClass1.f18693c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x003f  */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        
            if (r7 == r0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
        
            if (r1.emit(r7, r6) == r0) goto L23;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r6.f18692b
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1f
                if (r1 == r4) goto L17
                if (r1 != r3) goto L11
                kotlin.ResultKt.b(r7)
                goto L4f
            L11:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r6)
                return r2
            L17:
                java.lang.Object r1 = r6.f18693c
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                kotlin.ResultKt.b(r7)
                goto L36
            L1f:
                kotlin.ResultKt.b(r7)
                java.lang.Object r7 = r6.f18693c
                r1 = r7
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                androidx.paging.RemoteMediatorAccessor r7 = r6.d
                if (r7 == 0) goto L39
                r6.f18693c = r1
                r6.f18692b = r4
                java.lang.Object r7 = r7.d(r6)
                if (r7 != r0) goto L36
                goto L4e
            L36:
                androidx.paging.RemoteMediator$InitializeAction r7 = (androidx.paging.RemoteMediator.InitializeAction) r7
                goto L3a
            L39:
                r7 = r2
            L3a:
                androidx.paging.RemoteMediator$InitializeAction r5 = androidx.paging.RemoteMediator.InitializeAction.LAUNCH_INITIAL_REFRESH
                if (r7 != r5) goto L3f
                goto L40
            L3f:
                r4 = 0
            L40:
                java.lang.Boolean r7 = java.lang.Boolean.valueOf(r4)
                r6.f18693c = r2
                r6.f18692b = r3
                java.lang.Object r6 = r1.emit(r7, r6)
                if (r6 != r0) goto L4f
            L4e:
                return r0
            L4f:
                kotlin.Unit r6 = kotlin.Unit.f71739a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$flow$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0004\"\b\b\u0001\u0010\u0003*\u00020\u00042\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u008a@"}, d2 = {"<anonymous>", "Landroidx/paging/PageFetcher$GenerationInfo;", "Key", "Value", "", "previousGeneration", "triggerRemoteRefresh", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.paging.PageFetcher$flow$1$2", f = "PageFetcher.kt", l = {73, EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "invokeSuspend")
    final class AnonymousClass2 extends SuspendLambda implements Function3<PageFetcher.GenerationInfo<Object, Object>, Boolean, Continuation<? super PageFetcher.GenerationInfo<Object, Object>>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public PagingSource f18694b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18695c;
        public /* synthetic */ Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ boolean f18696e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ RemoteMediatorAccessor f18697f;
        public final /* synthetic */ PageFetcher g;

        /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$2$1, reason: invalid class name */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0<Unit> {
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ((PageFetcher) this.receiver).d.a(Boolean.TRUE);
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, PageFetcher pageFetcher, RemoteMediatorAccessor remoteMediatorAccessor) {
            super(3, continuation);
            this.f18697f = remoteMediatorAccessor;
            this.g = pageFetcher;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object A(Object obj, Object obj2, Object obj3) {
            boolean zBooleanValue = ((Boolean) obj2).booleanValue();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2((Continuation) obj3, this.g, this.f18697f);
            anonymousClass2.d = (PageFetcher.GenerationInfo) obj;
            anonymousClass2.f18696e = zBooleanValue;
            return anonymousClass2.invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:34:0x006d  */
        /* JADX WARN: Code duplicated, block: B:35:0x0070  */
        /* JADX WARN: Code duplicated, block: B:49:0x0091  */
        /* JADX WARN: Code duplicated, block: B:50:0x0094  */
        /* JADX WARN: Code duplicated, block: B:52:0x0097  */
        /* JADX WARN: Code duplicated, block: B:56:0x00a0  */
        /* JADX WARN: Code duplicated, block: B:58:0x00a3  */
        /* JADX WARN: Code duplicated, block: B:61:0x00a8  */
        /* JADX WARN: Code duplicated, block: B:62:0x00ab  */
        /* JADX WARN: Code duplicated, block: B:64:0x00b6  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            PageFetcher.GenerationInfo generationInfo;
            Object objA;
            PageFetcherSnapshot pageFetcherSnapshot;
            RemoteMediatorAccessor remoteMediatorAccessor;
            PagingState pagingState;
            PagingSource pagingSource;
            PageFetcherSnapshot pageFetcherSnapshot2;
            Object objE;
            List list;
            List list2;
            PagingState pagingState2;
            List list3;
            Integer num;
            PagingState pagingState3;
            Object objA2;
            Job job;
            PageFetcherSnapshot pageFetcherSnapshot3;
            Integer num2;
            PagingState pagingState4;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f18695c;
            PageFetcher pageFetcher = this.g;
            if (i2 == 0) {
                ResultKt.b(obj);
                generationInfo = (PageFetcher.GenerationInfo) this.d;
                if (this.f18696e && (remoteMediatorAccessor = this.f18697f) != null) {
                    remoteMediatorAccessor.a();
                }
                PagingSource pagingSource2 = (generationInfo == null || (pageFetcherSnapshot = generationInfo.f18683a) == null) ? null : pageFetcherSnapshot.f18731b;
                this.d = generationInfo;
                this.f18695c = 1;
                objA = PageFetcher.a(pageFetcher, pagingSource2, this);
                if (objA != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                generationInfo = (PageFetcher.GenerationInfo) this.d;
                ResultKt.b(obj);
                objA = obj;
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                pagingSource = this.f18694b;
                generationInfo = (PageFetcher.GenerationInfo) this.d;
                ResultKt.b(obj);
                objE = obj;
            }
            pagingState = (PagingState) objE;
            if (pagingState != null) {
                list = pagingState.f18902a;
            } else {
                list = null;
            }
            list2 = list;
            if ((list2 != null || list2.isEmpty()) && generationInfo != null && (pagingState2 = generationInfo.f18684b) != null && (list3 = pagingState2.f18902a) != null && (!list3.isEmpty())) {
            }
            if (pagingState != null) {
                num = pagingState.f18903b;
            } else {
                num = null;
            }
            if (num == null) {
                if (generationInfo != null || (pagingState4 = generationInfo.f18684b) == null) {
                    num2 = null;
                } else {
                    num2 = pagingState4.f18903b;
                }
                if (num2 != null) {
                    pagingState = generationInfo.f18684b;
                }
            }
            pagingState3 = pagingState;
            if (pagingState3 == null) {
                objA2 = pageFetcher.f18679b;
            } else {
                objA2 = pagingSource.a(pagingState3);
                if (PagingLogger.a(3)) {
                    pagingSource.toString();
                }
            }
            if (generationInfo != null && (pageFetcherSnapshot3 = generationInfo.f18683a) != null) {
                pageFetcherSnapshot3.l.cancel((CancellationException) null);
            }
            if (generationInfo != null && (job = generationInfo.f18685c) != null) {
                job.cancel(null);
            }
            return new PageFetcher.GenerationInfo(new PageFetcherSnapshot(objA2, pagingSource, pageFetcher.f18680c, pageFetcher.f18681e.f18568b, this.f18697f, pagingState3, new AnonymousClass1(0, pageFetcher, PageFetcher.class, "refresh", "refresh()V", 0)), pagingState3, JobKt.a());
            PagingSource pagingSource3 = (PagingSource) objA;
            if (generationInfo != null && (pageFetcherSnapshot2 = generationInfo.f18683a) != null) {
                this.d = generationInfo;
                this.f18694b = pagingSource3;
                this.f18695c = 2;
                objE = pageFetcherSnapshot2.e(this);
                if (objE != coroutineSingletons) {
                    pagingSource = pagingSource3;
                    pagingState = (PagingState) objE;
                }
                return coroutineSingletons;
            }
            pagingState = null;
            pagingSource = pagingSource3;
            if (pagingState != null) {
                list = pagingState.f18902a;
            } else {
                list = null;
            }
            list2 = list;
            pagingState = list2 != null ? pagingState2 : pagingState2;
            if (pagingState != null) {
                num = pagingState.f18903b;
            } else {
                num = null;
            }
            if (num == null) {
                if (generationInfo != null) {
                    num2 = null;
                } else {
                    num2 = null;
                }
                if (num2 != null) {
                    pagingState = generationInfo.f18684b;
                }
            }
            pagingState3 = pagingState;
            if (pagingState3 == null) {
                objA2 = pageFetcher.f18679b;
            } else {
                objA2 = pagingSource.a(pagingState3);
                if (PagingLogger.a(3)) {
                    pagingSource.toString();
                }
            }
            if (generationInfo != null) {
                pageFetcherSnapshot3.l.cancel((CancellationException) null);
            }
            if (generationInfo != null) {
                job.cancel(null);
            }
            return new PageFetcher.GenerationInfo(new PageFetcherSnapshot(objA2, pagingSource, pageFetcher.f18680c, pageFetcher.f18681e.f18568b, this.f18697f, pagingState3, new AnonymousClass1(0, pageFetcher, PageFetcher.class, "refresh", "refresh()V", 0)), pagingState3, JobKt.a());
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$4, reason: invalid class name */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass4 implements FlowCollector, FunctionAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ SimpleProducerScope f18699b;

        public AnonymousClass4(SimpleProducerScope simpleProducerScope) {
            this.f18699b = simpleProducerScope;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(Object obj, Continuation continuation) {
            Object objU = this.f18699b.u((PagingData) obj, continuation);
            return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof FlowCollector) && (obj instanceof FunctionAdapter)) {
                return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function getFunctionDelegate() {
            return new FunctionReferenceImpl(2, this.f18699b, SimpleProducerScope.class, "send", "send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$flow$1(RemoteMediator remoteMediator, PageFetcher pageFetcher, Continuation continuation) {
        super(2, continuation);
        this.d = remoteMediator;
        this.f18691e = pageFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PageFetcher$flow$1 pageFetcher$flow$1 = new PageFetcher$flow$1(this.d, this.f18691e, continuation);
        pageFetcher$flow$1.f18690c = obj;
        return pageFetcher$flow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PageFetcher$flow$1) create((SimpleProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RemoteMediatorAccessImpl remoteMediatorAccessImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18689b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.f18690c;
            RemoteMediator remoteMediator = this.d;
            if (remoteMediator != null) {
                simpleProducerScope.getClass();
                remoteMediatorAccessImpl = new RemoteMediatorAccessImpl(simpleProducerScope, remoteMediator);
            } else {
                remoteMediatorAccessImpl = null;
            }
            PageFetcher pageFetcher = this.f18691e;
            Flow flowA = SimpleChannelFlowKt.a(new FlowExtKt$simpleTransformLatest$1(new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(FlowKt.t(new FlowExtKt$simpleScan$1(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new AnonymousClass1(remoteMediatorAccessImpl, null), pageFetcher.d.f18568b), new AnonymousClass2(null, pageFetcher, remoteMediatorAccessImpl), null))), new PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1(null, pageFetcher, remoteMediatorAccessImpl), null));
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(simpleProducerScope);
            this.f18689b = 1;
            if (flowA.f(anonymousClass4, this) == coroutineSingletons) {
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
