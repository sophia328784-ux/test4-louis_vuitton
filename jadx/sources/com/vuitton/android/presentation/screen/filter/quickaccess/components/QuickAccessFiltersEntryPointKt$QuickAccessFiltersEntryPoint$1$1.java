package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1", f = "QuickAccessFiltersEntryPoint.kt", l = {119, 120}, m = "invokeSuspend", v = 2)
final class QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Animatable f58087c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewState f58088e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f58089f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1(Animatable animatable, Function1 function1, QuickAccessFiltersViewState quickAccessFiltersViewState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58087c = animatable;
        this.d = function1;
        this.f58088e = quickAccessFiltersViewState;
        this.f58089f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1(this.f58087c, this.d, this.f58088e, this.f58089f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
    
        if (androidx.compose.animation.core.Animatable.c(r13.f58087c, r7, r8, null, null, r11, 12) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r13.f58086b
            kotlin.jvm.functions.Function1 r2 = r13.d
            r3 = 0
            r4 = 0
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L1f
            if (r1 == r6) goto L1b
            if (r1 != r5) goto L15
            kotlin.ResultKt.b(r14)
            r11 = r13
            goto L63
        L15:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            return r3
        L1b:
            kotlin.ResultKt.b(r14)
            goto L45
        L1f:
            kotlin.ResultKt.b(r14)
            androidx.compose.animation.core.Animatable r14 = r13.f58087c
            java.lang.Object r14 = r14.d()
            java.lang.Number r14 = (java.lang.Number) r14
            float r14 = r14.floatValue()
            int r14 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r14 <= 0) goto L77
            kotlin.time.Duration$Companion r14 = kotlin.time.Duration.INSTANCE
            r7 = 300(0x12c, double:1.48E-321)
            kotlin.time.DurationUnit r14 = kotlin.time.DurationUnit.MILLISECONDS
            long r7 = kotlin.time.DurationKt.h(r7, r14)
            r13.f58086b = r6
            java.lang.Object r14 = kotlinx.coroutines.DelayKt.c(r7, r13)
            if (r14 != r0) goto L45
            goto L62
        L45:
            java.lang.Float r7 = new java.lang.Float
            r7.<init>(r4)
            r14 = 1137180672(0x43c80000, float:400.0)
            r1 = 4
            r4 = 1056964608(0x3f000000, float:0.5)
            androidx.compose.animation.core.SpringSpec r8 = androidx.compose.animation.core.AnimationSpecKt.b(r4, r14, r1, r3)
            r13.f58086b = r5
            androidx.compose.animation.core.Animatable r6 = r13.f58087c
            r9 = 0
            r10 = 0
            r12 = 12
            r11 = r13
            java.lang.Object r13 = androidx.compose.animation.core.Animatable.c(r6, r7, r8, r9, r10, r11, r12)
            if (r13 != r0) goto L63
        L62:
            return r0
        L63:
            androidx.compose.runtime.MutableState r13 = r11.f58089f
            java.lang.Object r13 = r13.getF10755b()
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 != 0) goto L85
            com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState r13 = com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState.Visible
            r2.invoke(r13)
            goto L85
        L77:
            r11 = r13
            com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState r13 = r11.f58088e
            com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState r13 = r13.f58169a
            com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState r14 = com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState.Hidden
            if (r13 != r14) goto L85
            com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState r13 = com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState.Visible
            r2.invoke(r13)
        L85:
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
