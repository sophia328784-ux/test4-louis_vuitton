package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"kotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1 implements Flow<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Flow f74849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function4 f74850c;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1", f = "Errors.kt", l = {116, 118}, m = "collect", v = 1)
    public final class AnonymousClass1 extends ContinuationImpl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f74851b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f74852c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public FlowCollector f74853e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Throwable f74854f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f74855h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f74856i;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f74851b = obj;
            this.f74852c |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.this.f(null, this);
        }
    }

    public FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(Flow flow, Function4 function4) {
        this.f74849b = flow;
        this.f74850c = function4;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0065  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0092 A[PHI: r0 r7 r9 r14 r15
      0x0092: PHI (r0v5 kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1) = 
      (r0v3 kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1)
      (r0v8 kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1)
     binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r7v3 long) = (r7v1 long), (r7v5 long) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r9v2 kotlinx.coroutines.flow.FlowCollector) = (r9v0 kotlinx.coroutines.flow.FlowCollector), (r9v3 kotlinx.coroutines.flow.FlowCollector) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r14v4 int) = (r14v1 int), (r14v6 int) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r15v8 int) = (r15v3 int), (r15v13 int) binds: [B:22:0x006a, B:28:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:32:0x0099  */
    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006a -> B:29:0x0092). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0083 -> B:26:0x0086). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlinx.coroutines.flow.Flow
    public final java.lang.Object f(kotlinx.coroutines.flow.FlowCollector r14, kotlin.coroutines.Continuation r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r15
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f74852c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f74852c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f74851b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f74852c
            r3 = 0
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4a
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L34
            long r7 = r0.f74856i
            int r14 = r0.g
            java.lang.Throwable r2 = r0.f74854f
            kotlinx.coroutines.flow.FlowCollector r9 = r0.f74853e
            kotlin.ResultKt.b(r15)
            goto L86
        L34:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            return r6
        L3a:
            int r14 = r0.f74855h
            long r7 = r0.f74856i
            int r2 = r0.g
            kotlinx.coroutines.flow.FlowCollector r9 = r0.f74853e
            kotlin.ResultKt.b(r15)
            r12 = r15
            r15 = r14
            r14 = r2
            r2 = r12
            goto L68
        L4a:
            kotlin.ResultKt.b(r15)
            r7 = 0
            r15 = r3
        L50:
            r0.f74853e = r14
            r0.f74854f = r6
            r0.g = r15
            r0.f74856i = r7
            r0.f74855h = r3
            r0.f74852c = r5
            kotlinx.coroutines.flow.Flow r2 = r13.f74849b
            java.io.Serializable r2 = kotlinx.coroutines.flow.FlowKt.e(r2, r14, r0)
            if (r2 != r1) goto L65
            goto L85
        L65:
            r9 = r14
            r14 = r15
            r15 = r3
        L68:
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            if (r2 == 0) goto L92
            java.lang.Long r10 = new java.lang.Long
            r10.<init>(r7)
            r0.f74853e = r9
            r0.f74854f = r2
            r0.g = r14
            r0.f74856i = r7
            r0.f74855h = r15
            r0.f74852c = r4
            kotlin.jvm.functions.Function4 r15 = r13.f74850c
            java.lang.Object r15 = r15.g(r9, r2, r10, r0)
            if (r15 != r1) goto L86
        L85:
            return r1
        L86:
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r15 = r15.booleanValue()
            if (r15 == 0) goto L96
            r10 = 1
            long r7 = r7 + r10
            r15 = r5
        L92:
            r2 = r0
            r0 = r14
            r14 = r9
            goto L97
        L96:
            throw r2
        L97:
            if (r15 != 0) goto L9c
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        L9c:
            r15 = r0
            r0 = r2
            goto L50
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1.f(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
