package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"}, d2 = {"T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1", f = "PageFetcherSnapshot.kt", l = {232, 98}, m = "invokeSuspend")
public final class PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super GenerationalViewportHint>, Integer, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ FlowCollector f18742c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PageFetcherSnapshot f18743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LoadType f18744f;
    public MutexImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18745h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1(Continuation continuation, PageFetcherSnapshot pageFetcherSnapshot, LoadType loadType) {
        super(3, continuation);
        this.f18743e = pageFetcherSnapshot;
        this.f18744f = loadType;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1 pageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1 = new PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1((Continuation) obj3, this.f18743e, this.f18744f);
        pageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1.f18742c = (FlowCollector) obj;
        pageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1.d = obj2;
        return pageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1.invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.n(r9, r0, r11) == r1) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            androidx.paging.LoadType r0 = r11.f18744f
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r11.f18741b
            androidx.paging.PageFetcherSnapshot r3 = r11.f18743e
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L2a
            if (r2 == r5) goto L1c
            if (r2 != r4) goto L16
            kotlin.ResultKt.b(r12)
            goto La0
        L16:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            return r6
        L1c:
            int r2 = r11.f18745h
            kotlinx.coroutines.sync.MutexImpl r7 = r11.g
            java.lang.Object r8 = r11.d
            androidx.paging.PageFetcherSnapshotState$Holder r8 = (androidx.paging.PageFetcherSnapshotState.Holder) r8
            kotlinx.coroutines.flow.FlowCollector r9 = r11.f18742c
            kotlin.ResultKt.b(r12)
            goto L4c
        L2a:
            kotlin.ResultKt.b(r12)
            kotlinx.coroutines.flow.FlowCollector r9 = r11.f18742c
            java.lang.Object r12 = r11.d
            java.lang.Number r12 = (java.lang.Number) r12
            int r2 = r12.intValue()
            androidx.paging.PageFetcherSnapshotState$Holder r8 = r3.f18738k
            kotlinx.coroutines.sync.MutexImpl r7 = r8.f18824a
            r11.f18742c = r9
            r11.d = r8
            r11.g = r7
            r11.f18745h = r2
            r11.f18741b = r5
            java.lang.Object r12 = r7.c(r11)
            if (r12 != r1) goto L4c
            goto L9f
        L4c:
            androidx.paging.PageFetcherSnapshotState r12 = r8.f18825b     // Catch: java.lang.Throwable -> L6d
            androidx.paging.MutableLoadStateCollection r12 = r12.l     // Catch: java.lang.Throwable -> L6d
            androidx.paging.LoadState r8 = r12.a(r0)     // Catch: java.lang.Throwable -> L6d
            androidx.paging.LoadState$NotLoading$Companion r10 = androidx.paging.LoadState.NotLoading.f18636b     // Catch: java.lang.Throwable -> L6d
            r10.getClass()     // Catch: java.lang.Throwable -> L6d
            androidx.paging.LoadState$NotLoading r10 = androidx.paging.LoadState.NotLoading.f18637c     // Catch: java.lang.Throwable -> L6d
            boolean r8 = kotlin.jvm.internal.Intrinsics.c(r8, r10)     // Catch: java.lang.Throwable -> L6d
            r10 = 0
            if (r8 == 0) goto L6f
            androidx.paging.GenerationalViewportHint[] r12 = new androidx.paging.GenerationalViewportHint[r10]     // Catch: java.lang.Throwable -> L6d
            kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1 r0 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1     // Catch: java.lang.Throwable -> L6d
            r0.<init>(r12)     // Catch: java.lang.Throwable -> L6d
            r7.d(r6)
            goto L91
        L6d:
            r11 = move-exception
            goto La3
        L6f:
            androidx.paging.LoadState r8 = r12.a(r0)     // Catch: java.lang.Throwable -> L6d
            boolean r8 = r8 instanceof androidx.paging.LoadState.Error     // Catch: java.lang.Throwable -> L6d
            if (r8 != 0) goto L7c
            androidx.paging.LoadState$NotLoading r8 = androidx.paging.LoadState.NotLoading.d     // Catch: java.lang.Throwable -> L6d
            r12.c(r0, r8)     // Catch: java.lang.Throwable -> L6d
        L7c:
            r7.d(r6)
            androidx.paging.HintHandler r12 = r3.f18735h
            kotlinx.coroutines.flow.SharedFlowImpl r12 = r12.a(r0)
            if (r2 != 0) goto L88
            r5 = r10
        L88:
            kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1 r12 = kotlinx.coroutines.flow.FlowKt.l(r12, r5)
            androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$5$$inlined$map$1 r0 = new androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$5$$inlined$map$1
            r0.<init>()
        L91:
            r11.f18742c = r6
            r11.d = r6
            r11.g = r6
            r11.f18741b = r4
            java.lang.Object r11 = kotlinx.coroutines.flow.FlowKt.n(r9, r0, r11)
            if (r11 != r1) goto La0
        L9f:
            return r1
        La0:
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        La3:
            r7.d(r6)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
