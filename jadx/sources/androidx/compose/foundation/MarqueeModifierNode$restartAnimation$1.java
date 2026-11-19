package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.MarqueeModifierNode$restartAnimation$1", f = "BasicMarquee.kt", l = {390, 391}, m = "invokeSuspend", v = 1)
final class MarqueeModifierNode$restartAnimation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Job f4257c;
    public final /* synthetic */ MarqueeModifierNode d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MarqueeModifierNode$restartAnimation$1(Job job, MarqueeModifierNode marqueeModifierNode, Continuation continuation) {
        super(2, continuation);
        this.f4257c = job;
        this.d = marqueeModifierNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MarqueeModifierNode$restartAnimation$1(this.f4257c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MarqueeModifierNode$restartAnimation$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if (r5 == r0) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) throws java.lang.Throwable {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f4256b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1b
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            kotlin.ResultKt.b(r6)
            goto L49
        L11:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            return r2
        L17:
            kotlin.ResultKt.b(r6)
            goto L2b
        L1b:
            kotlin.ResultKt.b(r6)
            kotlinx.coroutines.Job r6 = r5.f4257c
            if (r6 == 0) goto L2b
            r5.f4256b = r4
            java.lang.Object r6 = r6.join(r5)
            if (r6 != r0) goto L2b
            goto L48
        L2b:
            r5.f4256b = r3
            androidx.compose.foundation.MarqueeModifierNode r6 = r5.d
            int r1 = r6.p
            if (r1 > 0) goto L36
            kotlin.Unit r5 = kotlin.Unit.f71739a
            goto L46
        L36:
            androidx.compose.foundation.MarqueeModifierNode$runAnimation$2 r1 = new androidx.compose.foundation.MarqueeModifierNode$runAnimation$2
            r1.<init>(r6, r2)
            androidx.compose.foundation.FixedMotionDurationScale r6 = androidx.compose.foundation.FixedMotionDurationScale.f4209b
            java.lang.Object r5 = kotlinx.coroutines.BuildersKt.f(r6, r1, r5)
            if (r5 != r0) goto L44
            goto L46
        L44:
            kotlin.Unit r5 = kotlin.Unit.f71739a
        L46:
            if (r5 != r0) goto L49
        L48:
            return r0
        L49:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MarqueeModifierNode$restartAnimation$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
