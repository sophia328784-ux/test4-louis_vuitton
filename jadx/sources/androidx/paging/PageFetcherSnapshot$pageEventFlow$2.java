package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Add missing generic type declarations: [Value] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00060\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Lkotlinx/coroutines/flow/FlowCollector;", "Landroidx/paging/PageEvent;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$2", f = "PageFetcherSnapshot.kt", l = {646, 179}, m = "invokeSuspend")
public final class PageFetcherSnapshot$pageEventFlow$2<Value> extends SuspendLambda implements Function2<FlowCollector<? super PageEvent<Value>>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutexImpl f18799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FlowCollector f18800c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f18801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PageFetcherSnapshot f18802f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$pageEventFlow$2(PageFetcherSnapshot pageFetcherSnapshot, Continuation continuation) {
        super(2, continuation);
        this.f18802f = pageFetcherSnapshot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PageFetcherSnapshot$pageEventFlow$2 pageFetcherSnapshot$pageEventFlow$2 = new PageFetcherSnapshot$pageEventFlow$2(this.f18802f, continuation);
        pageFetcherSnapshot$pageEventFlow$2.f18801e = obj;
        return pageFetcherSnapshot$pageEventFlow$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PageFetcherSnapshot$pageEventFlow$2) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
    
        if (r1.emit(r2, r6) == r0) goto L17;
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
            int r1 = r6.d
            r2 = 1
            r3 = 2
            r4 = 0
            if (r1 == 0) goto L23
            if (r1 == r2) goto L17
            if (r1 != r3) goto L11
            kotlin.ResultKt.b(r7)
            goto L60
        L11:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r4
        L17:
            kotlinx.coroutines.flow.FlowCollector r1 = r6.f18800c
            kotlinx.coroutines.sync.MutexImpl r2 = r6.f18799b
            java.lang.Object r5 = r6.f18801e
            androidx.paging.PageFetcherSnapshotState$Holder r5 = (androidx.paging.PageFetcherSnapshotState.Holder) r5
            kotlin.ResultKt.b(r7)
            goto L41
        L23:
            kotlin.ResultKt.b(r7)
            java.lang.Object r7 = r6.f18801e
            r1 = r7
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            androidx.paging.PageFetcherSnapshot r7 = r6.f18802f
            androidx.paging.PageFetcherSnapshotState$Holder r5 = r7.f18738k
            kotlinx.coroutines.sync.MutexImpl r7 = r5.f18824a
            r6.f18801e = r5
            r6.f18799b = r7
            r6.f18800c = r1
            r6.d = r2
            java.lang.Object r2 = r7.c(r6)
            if (r2 != r0) goto L40
            goto L5f
        L40:
            r2 = r7
        L41:
            androidx.paging.PageFetcherSnapshotState r7 = r5.f18825b     // Catch: java.lang.Throwable -> L63
            androidx.paging.MutableLoadStateCollection r7 = r7.l     // Catch: java.lang.Throwable -> L63
            androidx.paging.LoadStates r7 = r7.d()     // Catch: java.lang.Throwable -> L63
            r2.d(r4)
            androidx.paging.PageEvent$LoadStateUpdate r2 = new androidx.paging.PageEvent$LoadStateUpdate
            r2.<init>(r7, r4, r3, r4)
            r6.f18801e = r4
            r6.f18799b = r4
            r6.f18800c = r4
            r6.d = r3
            java.lang.Object r6 = r1.emit(r2, r6)
            if (r6 != r0) goto L60
        L5f:
            return r0
        L60:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L63:
            r6 = move-exception
            r2.d(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$pageEventFlow$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
