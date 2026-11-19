package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$2", f = "PageFetcherSnapshot.kt", l = {646, 233}, m = "invokeSuspend")
final class PageFetcherSnapshot$startConsumingHints$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PageFetcherSnapshotState.Holder f18807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutexImpl f18808c;
    public PageFetcherSnapshot d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PageFetcherSnapshot f18810f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$startConsumingHints$2(PageFetcherSnapshot pageFetcherSnapshot, Continuation continuation) {
        super(2, continuation);
        this.f18810f = pageFetcherSnapshot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PageFetcherSnapshot$startConsumingHints$2(this.f18810f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PageFetcherSnapshot$startConsumingHints$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
    
        if (androidx.paging.PageFetcherSnapshot.a(r1, r8, r3, r7) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f18809e
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L21
            if (r1 == r3) goto L17
            if (r1 != r2) goto L11
            kotlin.ResultKt.b(r8)
            goto L60
        L11:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r4
        L17:
            androidx.paging.PageFetcherSnapshot r1 = r7.d
            kotlinx.coroutines.sync.MutexImpl r3 = r7.f18808c
            androidx.paging.PageFetcherSnapshotState$Holder r5 = r7.f18807b
            kotlin.ResultKt.b(r8)
            goto L3a
        L21:
            kotlin.ResultKt.b(r8)
            androidx.paging.PageFetcherSnapshot r1 = r7.f18810f
            androidx.paging.PageFetcherSnapshotState$Holder r5 = r1.f18738k
            kotlinx.coroutines.sync.MutexImpl r8 = r5.f18824a
            r7.f18807b = r5
            r7.f18808c = r8
            r7.d = r1
            r7.f18809e = r3
            java.lang.Object r3 = r8.c(r7)
            if (r3 != r0) goto L39
            goto L5f
        L39:
            r3 = r8
        L3a:
            androidx.paging.PageFetcherSnapshotState r8 = r5.f18825b     // Catch: java.lang.Throwable -> L63
            kotlinx.coroutines.channels.BufferedChannel r5 = r8.f18821i     // Catch: java.lang.Throwable -> L63
            kotlinx.coroutines.flow.Flow r5 = kotlinx.coroutines.flow.FlowKt.i(r5)     // Catch: java.lang.Throwable -> L63
            androidx.paging.PageFetcherSnapshotState$consumePrependGenerationIdAsFlow$1 r6 = new androidx.paging.PageFetcherSnapshotState$consumePrependGenerationIdAsFlow$1     // Catch: java.lang.Throwable -> L63
            r6.<init>(r8, r4)     // Catch: java.lang.Throwable -> L63
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r8 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1     // Catch: java.lang.Throwable -> L63
            r8.<init>(r6, r5)     // Catch: java.lang.Throwable -> L63
            r3.d(r4)
            androidx.paging.LoadType r3 = androidx.paging.LoadType.PREPEND
            r7.f18807b = r4
            r7.f18808c = r4
            r7.d = r4
            r7.f18809e = r2
            java.lang.Object r7 = androidx.paging.PageFetcherSnapshot.a(r1, r8, r3, r7)
            if (r7 != r0) goto L60
        L5f:
            return r0
        L60:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        L63:
            r7 = move-exception
            r3.d(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$startConsumingHints$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
