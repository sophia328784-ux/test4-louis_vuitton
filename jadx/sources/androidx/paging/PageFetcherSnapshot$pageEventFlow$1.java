package androidx.paging;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Add missing generic type declarations: [Value] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00060\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Landroidx/paging/SimpleProducerScope;", "Landroidx/paging/PageEvent;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1", f = "PageFetcherSnapshot.kt", l = {646, 168, 657}, m = "invokeSuspend")
public final class PageFetcherSnapshot$pageEventFlow$1<Value> extends SuspendLambda implements Function2<SimpleProducerScope<PageEvent<Value>>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f18773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f18774c;
    public MutexImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f18776f;
    public final /* synthetic */ PageFetcherSnapshot g;

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2", f = "PageFetcherSnapshot.kt", l = {91}, m = "invokeSuspend")
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f18777b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ PageFetcherSnapshot f18778c;
        public final /* synthetic */ SimpleProducerScope d;

        /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", "", "Key", "", "Value", "it", "Landroidx/paging/PageEvent;", "emit", "(Landroidx/paging/PageEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        final class AnonymousClass1<T> implements FlowCollector {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SimpleProducerScope f18779b;

            public AnonymousClass1(SimpleProducerScope simpleProducerScope) {
                this.f18779b = simpleProducerScope;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.FlowCollector
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final Object emit(PageEvent pageEvent, Continuation continuation) {
                PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;
                if (continuation instanceof PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1) {
                    pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 = (PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1) continuation;
                    int i2 = pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.d;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.d = i2 - Integer.MIN_VALUE;
                    } else {
                        pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 = new PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1(this, continuation);
                    }
                } else {
                    pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 = new PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1(this, continuation);
                }
                Object obj = pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.f18780b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.d;
                try {
                    if (i3 == 0) {
                        ResultKt.b(obj);
                        SimpleProducerScope simpleProducerScope = this.f18779b;
                        pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.d = 1;
                        if (simpleProducerScope.u(pageEvent, pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i3 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                } catch (ClosedSendChannelException unused) {
                }
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PageFetcherSnapshot pageFetcherSnapshot, SimpleProducerScope simpleProducerScope, Continuation continuation) {
            super(2, continuation);
            this.f18778c = pageFetcherSnapshot;
            this.d = simpleProducerScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.f18778c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f18777b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow flowI = FlowKt.i(this.f18778c.f18737j);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d);
                this.f18777b = 1;
                if (flowI.f(anonymousClass1, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$3", f = "PageFetcherSnapshot.kt", l = {105}, m = "invokeSuspend")
    final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f18782b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ PageFetcherSnapshot f18783c;
        public final /* synthetic */ BufferedChannel d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(PageFetcherSnapshot pageFetcherSnapshot, Continuation continuation, BufferedChannel bufferedChannel) {
            super(2, continuation);
            this.f18783c = pageFetcherSnapshot;
            this.d = bufferedChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass3(this.f18783c, continuation, this.d);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f18782b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow flow = this.f18783c.d;
                final BufferedChannel bufferedChannel = this.d;
                FlowCollector flowCollector = new FlowCollector() { // from class: androidx.paging.PageFetcherSnapshot.pageEventFlow.1.3.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        bufferedChannel.b((Unit) obj2);
                        return Unit.f71739a;
                    }
                };
                this.f18782b = 1;
                if (flow.f(flowCollector, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4", f = "PageFetcherSnapshot.kt", l = {110}, m = "invokeSuspend")
    final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f18785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f18786c;
        public final /* synthetic */ BufferedChannel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ PageFetcherSnapshot f18787e;

        /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "Key", "", "Value", "it", "emit", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        final class AnonymousClass1<T> implements FlowCollector {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PageFetcherSnapshot f18788b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CoroutineScope f18789c;

            /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f18790a;

                static {
                    int[] iArr = new int[LoadType.values().length];
                    try {
                        iArr[LoadType.REFRESH.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    f18790a = iArr;
                }
            }

            public AnonymousClass1(PageFetcherSnapshot pageFetcherSnapshot, CoroutineScope coroutineScope) {
                this.f18788b = pageFetcherSnapshot;
                this.f18789c = coroutineScope;
            }

            /* JADX WARN: Code duplicated, block: B:102:0x0343  */
            /* JADX WARN: Code duplicated, block: B:105:0x0351  */
            /* JADX WARN: Code duplicated, block: B:106:0x0355  */
            /* JADX WARN: Code duplicated, block: B:109:0x0375  */
            /* JADX WARN: Code duplicated, block: B:115:0x03a5  */
            /* JADX WARN: Code duplicated, block: B:118:0x03ad  */
            /* JADX WARN: Code duplicated, block: B:125:0x03db A[PHI: r5 r6 r7
              0x03db: PHI (r5v52 kotlinx.coroutines.CoroutineScope) = 
              (r5v47 kotlinx.coroutines.CoroutineScope)
              (r5v53 kotlinx.coroutines.CoroutineScope)
              (r5v53 kotlinx.coroutines.CoroutineScope)
             binds: [B:117:0x03ab, B:123:0x03d6, B:124:0x03d8] A[DONT_GENERATE, DONT_INLINE]
              0x03db: PHI (r6v55 ??) = (r6v74 ??), (r6v75 ??), (r6v76 ??) binds: [B:117:0x03ab, B:123:0x03d6, B:124:0x03d8] A[DONT_GENERATE, DONT_INLINE]
              0x03db: PHI (r7v38 androidx.paging.LoadStates) = (r7v33 androidx.paging.LoadStates), (r7v39 androidx.paging.LoadStates), (r7v39 androidx.paging.LoadStates) binds: [B:117:0x03ab, B:123:0x03d6, B:124:0x03d8] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:132:0x03e9 A[PHI: r2 r12 r13
              0x03e9: PHI (r2v55 kotlinx.coroutines.CoroutineScope) = (r2v29 kotlinx.coroutines.CoroutineScope), (r2v58 kotlinx.coroutines.CoroutineScope) binds: [B:88:0x02f4, B:125:0x03db] A[DONT_GENERATE, DONT_INLINE]
              0x03e9: PHI (r12v54 androidx.paging.LoadStates) = (r12v28 androidx.paging.LoadStates), (r12v61 androidx.paging.LoadStates) binds: [B:88:0x02f4, B:125:0x03db] A[DONT_GENERATE, DONT_INLINE]
              0x03e9: PHI (r13v52 ??) = (r13v79 ??), (r13v53 ??) binds: [B:88:0x02f4, B:125:0x03db] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:134:0x03f1  */
            /* JADX WARN: Code duplicated, block: B:136:0x03f5  */
            /* JADX WARN: Code duplicated, block: B:139:0x040f  */
            /* JADX WARN: Code duplicated, block: B:143:0x042b  */
            /* JADX WARN: Code duplicated, block: B:147:0x0438  */
            /* JADX WARN: Code duplicated, block: B:150:0x0445  */
            /* JADX WARN: Code duplicated, block: B:151:0x0449  */
            /* JADX WARN: Code duplicated, block: B:154:0x0466  */
            /* JADX WARN: Code duplicated, block: B:160:0x0493  */
            /* JADX WARN: Code duplicated, block: B:163:0x049a  */
            /* JADX WARN: Code duplicated, block: B:166:0x04b1  */
            /* JADX WARN: Code duplicated, block: B:170:0x04c5  */
            /* JADX WARN: Code duplicated, block: B:54:0x023c  */
            /* JADX WARN: Code duplicated, block: B:57:0x024b  */
            /* JADX WARN: Code duplicated, block: B:60:0x0259  */
            /* JADX WARN: Code duplicated, block: B:61:0x025d  */
            /* JADX WARN: Code duplicated, block: B:64:0x027c  */
            /* JADX WARN: Code duplicated, block: B:70:0x02ab  */
            /* JADX WARN: Code duplicated, block: B:73:0x02b3  */
            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Code duplicated, block: B:80:0x02e0 A[PHI: r5 r6 r7
              0x02e0: PHI (r5v27 kotlinx.coroutines.CoroutineScope) = 
              (r5v22 kotlinx.coroutines.CoroutineScope)
              (r5v28 kotlinx.coroutines.CoroutineScope)
              (r5v28 kotlinx.coroutines.CoroutineScope)
             binds: [B:72:0x02b1, B:78:0x02db, B:79:0x02dd] A[DONT_GENERATE, DONT_INLINE]
              0x02e0: PHI (r6v30 ??) = (r6v80 ??), (r6v81 ??), (r6v82 ??) binds: [B:72:0x02b1, B:78:0x02db, B:79:0x02dd] A[DONT_GENERATE, DONT_INLINE]
              0x02e0: PHI (r7v16 androidx.paging.LoadStates) = (r7v12 androidx.paging.LoadStates), (r7v17 androidx.paging.LoadStates), (r7v17 androidx.paging.LoadStates) binds: [B:72:0x02b1, B:78:0x02db, B:79:0x02dd] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:87:0x02ee A[PHI: r2 r12 r13
              0x02ee: PHI (r2v29 kotlinx.coroutines.CoroutineScope) = (r2v9 kotlinx.coroutines.CoroutineScope), (r2v32 kotlinx.coroutines.CoroutineScope) binds: [B:56:0x0249, B:80:0x02e0] A[DONT_GENERATE, DONT_INLINE]
              0x02ee: PHI (r12v28 androidx.paging.LoadStates) = (r12v7 androidx.paging.LoadStates), (r12v31 androidx.paging.LoadStates) binds: [B:56:0x0249, B:80:0x02e0] A[DONT_GENERATE, DONT_INLINE]
              0x02ee: PHI (r13v29 ??) = (r13v81 ??), (r13v30 ??) binds: [B:56:0x0249, B:80:0x02e0] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:89:0x02f6  */
            /* JADX WARN: Code duplicated, block: B:91:0x02fa  */
            /* JADX WARN: Code duplicated, block: B:94:0x0315  */
            /* JADX WARN: Code duplicated, block: B:98:0x0335  */
            /* JADX WARN: Code restructure failed: missing block: B:119:0x03c3, code lost:
            
                if (r12.c(r0) == r1) goto L165;
             */
            /* JADX WARN: Code restructure failed: missing block: B:74:0x02c8, code lost:
            
                if (r12.c(r0) == r1) goto L165;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v10 */
            /* JADX WARN: Type inference failed for: r0v4 */
            /* JADX WARN: Type inference failed for: r0v5, types: [androidx.paging.PageFetcherSnapshot] */
            /* JADX WARN: Type inference failed for: r12v0, types: [androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1, androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1<T>, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r12v1, types: [kotlinx.coroutines.sync.Mutex] */
            /* JADX WARN: Type inference failed for: r12v100 */
            /* JADX WARN: Type inference failed for: r12v101 */
            /* JADX WARN: Type inference failed for: r12v102 */
            /* JADX WARN: Type inference failed for: r12v103 */
            /* JADX WARN: Type inference failed for: r12v104 */
            /* JADX WARN: Type inference failed for: r12v105 */
            /* JADX WARN: Type inference failed for: r12v13, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r12v15 */
            /* JADX WARN: Type inference failed for: r12v18, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r12v2, types: [kotlinx.coroutines.sync.Mutex] */
            /* JADX WARN: Type inference failed for: r12v20 */
            /* JADX WARN: Type inference failed for: r12v22 */
            /* JADX WARN: Type inference failed for: r12v29 */
            /* JADX WARN: Type inference failed for: r12v3, types: [kotlinx.coroutines.sync.Mutex] */
            /* JADX WARN: Type inference failed for: r12v39, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r12v41 */
            /* JADX WARN: Type inference failed for: r12v44, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r12v46 */
            /* JADX WARN: Type inference failed for: r12v48 */
            /* JADX WARN: Type inference failed for: r12v58 */
            /* JADX WARN: Type inference failed for: r12v69, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r12v71 */
            /* JADX WARN: Type inference failed for: r12v74, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r12v76 */
            /* JADX WARN: Type inference failed for: r12v78 */
            /* JADX WARN: Type inference failed for: r12v8 */
            /* JADX WARN: Type inference failed for: r12v92 */
            /* JADX WARN: Type inference failed for: r12v93 */
            /* JADX WARN: Type inference failed for: r12v94 */
            /* JADX WARN: Type inference failed for: r12v95 */
            /* JADX WARN: Type inference failed for: r12v96 */
            /* JADX WARN: Type inference failed for: r12v97 */
            /* JADX WARN: Type inference failed for: r12v98 */
            /* JADX WARN: Type inference failed for: r12v99 */
            /* JADX WARN: Type inference failed for: r13v18 */
            /* JADX WARN: Type inference failed for: r13v19, types: [androidx.paging.PageFetcherSnapshot] */
            /* JADX WARN: Type inference failed for: r13v25 */
            /* JADX WARN: Type inference failed for: r13v29, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r13v30 */
            /* JADX WARN: Type inference failed for: r13v35, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r13v36 */
            /* JADX WARN: Type inference failed for: r13v41 */
            /* JADX WARN: Type inference failed for: r13v42, types: [androidx.paging.PageFetcherSnapshot] */
            /* JADX WARN: Type inference failed for: r13v48 */
            /* JADX WARN: Type inference failed for: r13v52, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r13v53 */
            /* JADX WARN: Type inference failed for: r13v58, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r13v59 */
            /* JADX WARN: Type inference failed for: r13v64 */
            /* JADX WARN: Type inference failed for: r13v65, types: [androidx.paging.PageFetcherSnapshot] */
            /* JADX WARN: Type inference failed for: r13v71 */
            /* JADX WARN: Type inference failed for: r13v78 */
            /* JADX WARN: Type inference failed for: r13v79 */
            /* JADX WARN: Type inference failed for: r13v80 */
            /* JADX WARN: Type inference failed for: r13v81 */
            /* JADX WARN: Type inference failed for: r3v13 */
            /* JADX WARN: Type inference failed for: r3v4 */
            /* JADX WARN: Type inference failed for: r3v9, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r6v1 */
            /* JADX WARN: Type inference failed for: r6v16 */
            /* JADX WARN: Type inference failed for: r6v2, types: [androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1] */
            /* JADX WARN: Type inference failed for: r6v21, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r6v24 */
            /* JADX WARN: Type inference failed for: r6v30 */
            /* JADX WARN: Type inference failed for: r6v31, types: [androidx.paging.PageFetcherSnapshot] */
            /* JADX WARN: Type inference failed for: r6v35 */
            /* JADX WARN: Type inference failed for: r6v40 */
            /* JADX WARN: Type inference failed for: r6v44 */
            /* JADX WARN: Type inference failed for: r6v49, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r6v52 */
            /* JADX WARN: Type inference failed for: r6v55 */
            /* JADX WARN: Type inference failed for: r6v56, types: [androidx.paging.PageFetcherSnapshot] */
            /* JADX WARN: Type inference failed for: r6v60 */
            /* JADX WARN: Type inference failed for: r6v64 */
            /* JADX WARN: Type inference failed for: r6v71 */
            /* JADX WARN: Type inference failed for: r6v72 */
            /* JADX WARN: Type inference failed for: r6v73 */
            /* JADX WARN: Type inference failed for: r6v74 */
            /* JADX WARN: Type inference failed for: r6v75 */
            /* JADX WARN: Type inference failed for: r6v76 */
            /* JADX WARN: Type inference failed for: r6v77 */
            /* JADX WARN: Type inference failed for: r6v78 */
            /* JADX WARN: Type inference failed for: r6v79 */
            /* JADX WARN: Type inference failed for: r6v80 */
            /* JADX WARN: Type inference failed for: r6v81 */
            /* JADX WARN: Type inference failed for: r6v82 */
            /* JADX WARN: Type inference failed for: r6v83 */
            /* JADX WARN: Type inference failed for: r8v21 */
            /* JADX WARN: Type inference failed for: r8v22 */
            /* JADX WARN: Type inference failed for: r8v25 */
            /* JADX WARN: Type inference failed for: r9v0 */
            /* JADX WARN: Type inference failed for: r9v1 */
            /* JADX WARN: Type inference failed for: r9v4 */
            /* JADX WARN: Type inference failed for: r9v5 */
            /* JADX WARN: Type inference failed for: r9v8 */
            /* JADX WARN: Type inference failed for: r9v9 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object b(kotlin.coroutines.Continuation r13) {
                /*
                    Method dump skipped, instruction units count: 1282
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$pageEventFlow$1.AnonymousClass4.AnonymousClass1.b(kotlin.coroutines.Continuation):java.lang.Object");
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                return b(continuation);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(PageFetcherSnapshot pageFetcherSnapshot, Continuation continuation, BufferedChannel bufferedChannel) {
            super(2, continuation);
            this.d = bufferedChannel;
            this.f18787e = pageFetcherSnapshot;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.f18787e, continuation, this.d);
            anonymousClass4.f18786c = obj;
            return anonymousClass4;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f18785b;
            if (i2 == 0) {
                ResultKt.b(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.f18786c;
                Flow flowI = FlowKt.i(this.d);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f18787e, coroutineScope);
                this.f18785b = 1;
                if (flowI.f(anonymousClass1, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$pageEventFlow$1(PageFetcherSnapshot pageFetcherSnapshot, Continuation continuation) {
        super(2, continuation);
        this.g = pageFetcherSnapshot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PageFetcherSnapshot$pageEventFlow$1 pageFetcherSnapshot$pageEventFlow$1 = new PageFetcherSnapshot$pageEventFlow$1(this.g, continuation);
        pageFetcherSnapshot$pageEventFlow$1.f18776f = obj;
        return pageFetcherSnapshot$pageEventFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PageFetcherSnapshot$pageEventFlow$1) create((SimpleProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SimpleProducerScope simpleProducerScope;
        RemoteMediatorConnection remoteMediatorConnection;
        PagingState pagingStateA;
        MutexImpl mutexImpl;
        PageFetcherSnapshotState.Holder holder;
        SimpleProducerScope simpleProducerScope2;
        Mutex mutex;
        SimpleProducerScope simpleProducerScope3;
        LoadState loadStateA;
        PageFetcherSnapshot pageFetcherSnapshot = this.g;
        PageFetcherSnapshotState.Holder holder2 = pageFetcherSnapshot.f18738k;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18775e;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    mutexImpl = this.d;
                    holder = (PageFetcherSnapshotState.Holder) this.f18774c;
                    remoteMediatorConnection = (RemoteMediatorConnection) this.f18773b;
                    simpleProducerScope = (SimpleProducerScope) this.f18776f;
                    ResultKt.b(obj);
                } else {
                    if (i2 == 2) {
                        simpleProducerScope2 = (SimpleProducerScope) this.f18776f;
                        ResultKt.b(obj);
                        mutex = holder2.f18824a;
                        this.f18776f = simpleProducerScope2;
                        this.f18773b = holder2;
                        this.f18774c = mutex;
                        this.f18775e = 3;
                        if (mutex.c(this) != coroutineSingletons) {
                            simpleProducerScope3 = simpleProducerScope2;
                        }
                        return coroutineSingletons;
                    }
                    if (i2 != 3) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    Mutex mutex2 = (Mutex) this.f18774c;
                    PageFetcherSnapshotState.Holder holder3 = (PageFetcherSnapshotState.Holder) this.f18773b;
                    simpleProducerScope3 = (SimpleProducerScope) this.f18776f;
                    ResultKt.b(obj);
                    mutex = mutex2;
                    holder2 = holder3;
                }
                try {
                    loadStateA = holder2.f18825b.l.a(LoadType.REFRESH);
                    mutex.d(null);
                    if (!(loadStateA instanceof LoadState.Error)) {
                        PageFetcherSnapshot.d(pageFetcherSnapshot, simpleProducerScope3);
                    }
                    return Unit.f71739a;
                } catch (Throwable th) {
                    mutex.d(null);
                    throw th;
                }
            }
            ResultKt.b(obj);
            simpleProducerScope = (SimpleProducerScope) this.f18776f;
            if (!pageFetcherSnapshot.f18736i.compareAndSet(false, true)) {
                md.k("Attempt to collect twice from pageEventFlow, which is an illegal operation. Did you forget to call Flow<PagingData<*>>.cachedIn(coroutineScope)?");
                return null;
            }
            BuildersKt.c(simpleProducerScope, null, null, new AnonymousClass2(pageFetcherSnapshot, simpleProducerScope, null), 3);
            BufferedChannel bufferedChannelA = ChannelKt.a(0, 6, null);
            BuildersKt.c(simpleProducerScope, null, null, new AnonymousClass3(pageFetcherSnapshot, null, bufferedChannelA), 3);
            BuildersKt.c(simpleProducerScope, null, null, new AnonymousClass4(pageFetcherSnapshot, null, bufferedChannelA), 3);
            remoteMediatorConnection = pageFetcherSnapshot.f18733e;
            if (remoteMediatorConnection == null) {
                this.f18776f = simpleProducerScope;
                this.f18773b = null;
                this.f18774c = null;
                this.d = null;
                this.f18775e = 2;
                if (pageFetcherSnapshot.f(this) != coroutineSingletons) {
                    simpleProducerScope2 = simpleProducerScope;
                    mutex = holder2.f18824a;
                    this.f18776f = simpleProducerScope2;
                    this.f18773b = holder2;
                    this.f18774c = mutex;
                    this.f18775e = 3;
                    if (mutex.c(this) != coroutineSingletons) {
                        simpleProducerScope3 = simpleProducerScope2;
                        loadStateA = holder2.f18825b.l.a(LoadType.REFRESH);
                        mutex.d(null);
                        if (!(loadStateA instanceof LoadState.Error)) {
                            PageFetcherSnapshot.d(pageFetcherSnapshot, simpleProducerScope3);
                        }
                        return Unit.f71739a;
                    }
                }
            } else {
                pagingStateA = pageFetcherSnapshot.f18734f;
                if (pagingStateA == null) {
                    mutexImpl = holder2.f18824a;
                    this.f18776f = simpleProducerScope;
                    this.f18773b = remoteMediatorConnection;
                    this.f18774c = holder2;
                    this.d = mutexImpl;
                    this.f18775e = 1;
                    if (mutexImpl.c(this) != coroutineSingletons) {
                        holder = holder2;
                    }
                } else {
                    remoteMediatorConnection.c(pagingStateA);
                    this.f18776f = simpleProducerScope;
                    this.f18773b = null;
                    this.f18774c = null;
                    this.d = null;
                    this.f18775e = 2;
                    if (pageFetcherSnapshot.f(this) != coroutineSingletons) {
                        simpleProducerScope2 = simpleProducerScope;
                        mutex = holder2.f18824a;
                        this.f18776f = simpleProducerScope2;
                        this.f18773b = holder2;
                        this.f18774c = mutex;
                        this.f18775e = 3;
                        if (mutex.c(this) != coroutineSingletons) {
                            simpleProducerScope3 = simpleProducerScope2;
                            loadStateA = holder2.f18825b.l.a(LoadType.REFRESH);
                            mutex.d(null);
                            if (!(loadStateA instanceof LoadState.Error)) {
                                PageFetcherSnapshot.d(pageFetcherSnapshot, simpleProducerScope3);
                            }
                            return Unit.f71739a;
                        }
                    }
                }
            }
            return coroutineSingletons;
            pagingStateA = holder.f18825b.a(null);
            mutexImpl.d(null);
            remoteMediatorConnection.c(pagingStateA);
            this.f18776f = simpleProducerScope;
            this.f18773b = null;
            this.f18774c = null;
            this.d = null;
            this.f18775e = 2;
            if (pageFetcherSnapshot.f(this) != coroutineSingletons) {
                simpleProducerScope2 = simpleProducerScope;
                mutex = holder2.f18824a;
                this.f18776f = simpleProducerScope2;
                this.f18773b = holder2;
                this.f18774c = mutex;
                this.f18775e = 3;
                if (mutex.c(this) != coroutineSingletons) {
                    simpleProducerScope3 = simpleProducerScope2;
                    loadStateA = holder2.f18825b.l.a(LoadType.REFRESH);
                    mutex.d(null);
                    if (!(loadStateA instanceof LoadState.Error)) {
                        PageFetcherSnapshot.d(pageFetcherSnapshot, simpleProducerScope3);
                    }
                    return Unit.f71739a;
                }
            }
            return coroutineSingletons;
        } catch (Throwable th2) {
            mutexImpl.d(null);
            throw th2;
        }
    }
}
