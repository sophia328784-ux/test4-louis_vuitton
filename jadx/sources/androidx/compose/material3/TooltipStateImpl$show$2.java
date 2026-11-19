package androidx.compose.material3;

import androidx.compose.foundation.MutatePriority;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.TooltipStateImpl$show$2", f = "Tooltip.kt", l = {1184, 1186}, m = "invokeSuspend")
final class TooltipStateImpl$show$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TooltipStateImpl f7422c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutatePriority f7423e;

    /* JADX INFO: renamed from: androidx.compose.material3.TooltipStateImpl$show$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.TooltipStateImpl$show$2$1", f = "Tooltip.kt", l = {1186}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f7424b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function1 f7425c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.f7425c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f7425c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f7424b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f7424b = 1;
                if (((TooltipStateImpl$show$cancellableShow$1) this.f7425c).invoke(this) == coroutineSingletons) {
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
    public TooltipStateImpl$show$2(TooltipStateImpl tooltipStateImpl, Function1 function1, MutatePriority mutatePriority, Continuation continuation) {
        super(1, continuation);
        this.f7422c = tooltipStateImpl;
        this.d = function1;
        this.f7423e = mutatePriority;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new TooltipStateImpl$show$2(this.f7422c, this.d, this.f7423e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((TooltipStateImpl$show$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (kotlinx.coroutines.TimeoutKt.b(1500, r8, r7) == r0) goto L21;
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
            int r1 = r7.f7421b
            r2 = 0
            androidx.compose.foundation.MutatePriority r3 = r7.f7423e
            r4 = 2
            r5 = 1
            androidx.compose.material3.TooltipStateImpl r6 = r7.f7422c
            if (r1 == 0) goto L1d
            if (r1 == r5) goto L11
            if (r1 != r4) goto L17
        L11:
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L15
            goto L41
        L15:
            r7 = move-exception
            goto L4b
        L17:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r2
        L1d:
            kotlin.ResultKt.b(r8)
            boolean r8 = r6.f7418a     // Catch: java.lang.Throwable -> L15
            kotlin.jvm.functions.Function1 r1 = r7.d
            if (r8 == 0) goto L31
            r7.f7421b = r5     // Catch: java.lang.Throwable -> L15
            androidx.compose.material3.TooltipStateImpl$show$cancellableShow$1 r1 = (androidx.compose.material3.TooltipStateImpl$show$cancellableShow$1) r1     // Catch: java.lang.Throwable -> L15
            java.lang.Object r7 = r1.invoke(r7)     // Catch: java.lang.Throwable -> L15
            if (r7 != r0) goto L41
            goto L40
        L31:
            androidx.compose.material3.TooltipStateImpl$show$2$1 r8 = new androidx.compose.material3.TooltipStateImpl$show$2$1     // Catch: java.lang.Throwable -> L15
            r8.<init>(r2, r1)     // Catch: java.lang.Throwable -> L15
            r7.f7421b = r4     // Catch: java.lang.Throwable -> L15
            r1 = 1500(0x5dc, double:7.41E-321)
            java.lang.Object r7 = kotlinx.coroutines.TimeoutKt.b(r1, r8, r7)     // Catch: java.lang.Throwable -> L15
            if (r7 != r0) goto L41
        L40:
            return r0
        L41:
            androidx.compose.foundation.MutatePriority r7 = androidx.compose.foundation.MutatePriority.PreventUserInput
            if (r3 == r7) goto L48
            r6.dismiss()
        L48:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        L4b:
            androidx.compose.foundation.MutatePriority r8 = androidx.compose.foundation.MutatePriority.PreventUserInput
            if (r3 == r8) goto L52
            r6.dismiss()
        L52:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TooltipStateImpl$show$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
