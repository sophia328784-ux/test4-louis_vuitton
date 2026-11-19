package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {121, 121}, m = "invokeSuspend")
final class SimpleActor$offer$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function2 f12828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12829c;
    public final /* synthetic */ SimpleActor d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleActor$offer$2(SimpleActor simpleActor, Continuation continuation) {
        super(2, continuation);
        this.d = simpleActor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SimpleActor$offer$2(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SimpleActor$offer$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0047 A[PHI: r1 r7
      0x0047: PHI (r1v1 kotlin.jvm.functions.Function2) = (r1v2 kotlin.jvm.functions.Function2), (r1v3 kotlin.jvm.functions.Function2) binds: [B:13:0x0044, B:9:0x0019] A[DONT_GENERATE, DONT_INLINE]
      0x0047: PHI (r7v4 java.lang.Object) = (r7v9 java.lang.Object), (r7v0 java.lang.Object) binds: [B:13:0x0044, B:9:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        if (r1.invoke(r7, r6) == r0) goto L17;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004f -> B:18:0x0052). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) throws java.lang.Throwable {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f12829c
            r2 = 0
            r3 = 2
            r4 = 1
            androidx.datastore.core.SimpleActor r5 = r6.d
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L19
            if (r1 != r3) goto L13
            kotlin.ResultKt.b(r7)
            goto L52
        L13:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r2
        L19:
            kotlin.jvm.functions.Function2 r1 = r6.f12828b
            kotlin.ResultKt.b(r7)
            goto L47
        L1f:
            kotlin.ResultKt.b(r7)
            androidx.datastore.core.AtomicInt r7 = r5.d
            java.util.concurrent.atomic.AtomicInteger r7 = r7.f12609a
            int r7 = r7.get()
            if (r7 <= 0) goto L5f
        L2c:
            kotlinx.coroutines.CoroutineScope r7 = r5.f12823a
            kotlin.coroutines.CoroutineContext r7 = r7.getF50528e()
            kotlinx.coroutines.JobKt.d(r7)
            kotlin.jvm.functions.Function2 r1 = r5.f12824b
            kotlinx.coroutines.channels.BufferedChannel r7 = r5.f12825c
            r6.f12828b = r1
            r6.f12829c = r4
            r7.getClass()
            java.lang.Object r7 = kotlinx.coroutines.channels.BufferedChannel.L(r7, r6)
            if (r7 != r0) goto L47
            goto L51
        L47:
            r6.f12828b = r2
            r6.f12829c = r3
            java.lang.Object r7 = r1.invoke(r7, r6)
            if (r7 != r0) goto L52
        L51:
            return r0
        L52:
            androidx.datastore.core.AtomicInt r7 = r5.d
            java.util.concurrent.atomic.AtomicInteger r7 = r7.f12609a
            int r7 = r7.decrementAndGet()
            if (r7 != 0) goto L2c
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L5f:
            java.lang.String r6 = "Check failed."
            defpackage.md.k(r6)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor$offer$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
