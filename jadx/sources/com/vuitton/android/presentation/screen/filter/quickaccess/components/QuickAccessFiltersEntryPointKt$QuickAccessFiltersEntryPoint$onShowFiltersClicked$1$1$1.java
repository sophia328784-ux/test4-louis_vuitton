package com.vuitton.android.presentation.screen.filter.quickaccess.components;

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
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1", f = "QuickAccessFiltersEntryPoint.kt", l = {176, Sink.ORIENTATION_180}, m = "invokeSuspend", v = 2)
final class QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewState f58102c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f58103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f58104f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1(QuickAccessFiltersViewState quickAccessFiltersViewState, Function1 function1, Function1 function2, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58102c = quickAccessFiltersViewState;
        this.d = function1;
        this.f58103e = function2;
        this.f58104f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1(this.f58102c, this.d, this.f58103e, this.f58104f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
    
        if (kotlinx.coroutines.DelayKt.c(r1, r9) == r0) goto L19;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.f58101b
            r2 = 500(0x1f4, double:2.47E-321)
            kotlin.jvm.functions.Function1 r4 = r9.d
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L1f
            if (r1 == r6) goto L1b
            if (r1 != r5) goto L14
            kotlin.ResultKt.b(r10)
            goto L61
        L14:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L1b:
            kotlin.ResultKt.b(r10)
            goto L44
        L1f:
            kotlin.ResultKt.b(r10)
            com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState r10 = r9.f58102c
            boolean r1 = r10.d
            if (r1 != 0) goto L2e
            com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState r10 = r10.f58169a
            com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState r1 = com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState.Hidden
            if (r10 != r1) goto L44
        L2e:
            com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState r10 = com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState.CloseAnimation
            r4.invoke(r10)
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MILLISECONDS
            long r7 = kotlin.time.DurationKt.h(r2, r10)
            r9.f58101b = r6
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.c(r7, r9)
            if (r10 != r0) goto L44
            goto L60
        L44:
            com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState r10 = com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState.OpenCategoriesAnimation
            r4.invoke(r10)
            kotlin.jvm.functions.Function1 r10 = r9.f58103e
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r10.invoke(r1)
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MILLISECONDS
            long r1 = kotlin.time.DurationKt.h(r2, r10)
            r9.f58101b = r5
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.c(r1, r9)
            if (r10 != r0) goto L61
        L60:
            return r0
        L61:
            androidx.compose.runtime.MutableState r9 = r9.f58104f
            java.lang.Boolean r10 = java.lang.Boolean.TRUE
            r9.setValue(r10)
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
