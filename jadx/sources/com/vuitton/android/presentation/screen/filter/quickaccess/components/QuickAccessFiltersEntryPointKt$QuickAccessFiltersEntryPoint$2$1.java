package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1", f = "QuickAccessFiltersEntryPoint.kt", l = {}, m = "invokeSuspend", v = 2)
final class QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewState f58090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f58091c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f58092e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1(QuickAccessFiltersViewState quickAccessFiltersViewState, Function1 function1, boolean z, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58090b = quickAccessFiltersViewState;
        this.f58091c = function1;
        this.d = z;
        this.f58092e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1(this.f58090b, this.f58091c, this.d, this.f58092e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        FiltersButtonState filtersButtonState = this.f58090b.f58169a;
        FiltersButtonState filtersButtonState2 = FiltersButtonState.Visible;
        if (filtersButtonState == filtersButtonState2) {
            if (this.d) {
                filtersButtonState2 = FiltersButtonState.OpenActiveFiltersAnimation;
            } else if (!((Boolean) this.f58092e.getF10755b()).booleanValue()) {
                filtersButtonState2 = FiltersButtonState.InitialAnimation;
            }
            this.f58091c.invoke(filtersButtonState2);
        }
        return Unit.f71739a;
    }
}
