package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.CombinedClickableNode$onClickKeyUpEvent$2", f = "Clickable.kt", l = {1628, 1632}, m = "invokeSuspend", v = 1)
final class CombinedClickableNode$onClickKeyUpEvent$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f4188c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CombinedClickableNode f4189e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f4190f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedClickableNode$onClickKeyUpEvent$2(CombinedClickableNode combinedClickableNode, long j2, Continuation continuation) {
        super(2, continuation);
        this.f4189e = combinedClickableNode;
        this.f4190f = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CombinedClickableNode$onClickKeyUpEvent$2(this.f4189e, this.f4190f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CombinedClickableNode$onClickKeyUpEvent$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(r5 - r7, r11) == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r11.d
            r2 = 2
            androidx.compose.foundation.CombinedClickableNode r3 = r11.f4189e
            r4 = 1
            if (r1 == 0) goto L21
            if (r1 == r4) goto L19
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r12)
            goto L5a
        L12:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            r11 = 0
            return r11
        L19:
            long r5 = r11.f4188c
            long r7 = r11.f4187b
            kotlin.ResultKt.b(r12)
            goto L42
        L21:
            kotlin.ResultKt.b(r12)
            androidx.compose.runtime.StaticProvidableCompositionLocal r12 = androidx.compose.ui.platform.CompositionLocalsKt.u
            java.lang.Object r12 = androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt.a(r3, r12)
            androidx.compose.ui.platform.ViewConfiguration r12 = (androidx.compose.ui.platform.ViewConfiguration) r12
            r12.getClass()
            long r5 = r12.a()
            r7 = 40
            r11.f4187b = r7
            r11.f4188c = r5
            r11.d = r4
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.b(r7, r11)
            if (r12 != r0) goto L42
            goto L59
        L42:
            androidx.collection.MutableLongObjectMap r12 = r3.R
            long r9 = r11.f4190f
            java.lang.Object r12 = r12.b(r9)
            androidx.compose.foundation.CombinedClickableNode$DoubleKeyClickState r12 = (androidx.compose.foundation.CombinedClickableNode.DoubleKeyClickState) r12
            if (r12 == 0) goto L50
            r12.f4176b = r4
        L50:
            long r5 = r5 - r7
            r11.d = r2
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.b(r5, r11)
            if (r11 != r0) goto L5a
        L59:
            return r0
        L5a:
            kotlin.jvm.functions.Function0 r11 = r3.x
            r11.mo47invoke()
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.CombinedClickableNode$onClickKeyUpEvent$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
