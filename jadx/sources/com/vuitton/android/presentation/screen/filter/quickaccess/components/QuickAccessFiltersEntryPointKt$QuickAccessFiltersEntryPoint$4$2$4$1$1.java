package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import com.github.druk.dnssd.NSType;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1", f = "QuickAccessFiltersEntryPoint.kt", l = {NSType.AXFR}, m = "invokeSuspend", v = 2)
final class QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewState f58094c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f58095e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(QuickAccessFiltersViewState quickAccessFiltersViewState, Function1 function1, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f58094c = quickAccessFiltersViewState;
        this.d = function1;
        this.f58095e = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(this.f58094c, this.d, this.f58095e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58093b;
        Function1 function1 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (this.f58094c.p) {
                function1.invoke(FiltersButtonState.CloseAnimation);
                Duration.Companion companion = Duration.INSTANCE;
                long jH = DurationKt.h(400L, DurationUnit.MILLISECONDS);
                this.f58093b = 1;
                if (DelayKt.c(jH, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.f58095e.mo47invoke();
        function1.invoke(FiltersButtonState.Visible);
        return Unit.f71739a;
    }
}
