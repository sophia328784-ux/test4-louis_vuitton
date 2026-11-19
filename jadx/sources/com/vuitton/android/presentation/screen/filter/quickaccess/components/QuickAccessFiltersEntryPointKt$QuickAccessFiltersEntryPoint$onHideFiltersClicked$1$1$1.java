package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.runtime.MutableState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1", f = "QuickAccessFiltersEntryPoint.kt", l = {196}, m = "invokeSuspend", v = 2)
final class QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f58097c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ QuickAccessFiltersViewState f58098e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f58099f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f58100h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1(Function1 function1, boolean z, QuickAccessFiltersViewState quickAccessFiltersViewState, Function0 function0, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f58097c = function1;
        this.d = z;
        this.f58098e = quickAccessFiltersViewState;
        this.f58099f = function0;
        this.g = mutableState;
        this.f58100h = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1(this.f58097c, this.d, this.f58098e, this.f58099f, this.g, this.f58100h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58096b;
        Function1 function1 = this.f58097c;
        if (i2 == 0) {
            ResultKt.b(obj);
            function1.invoke(FiltersButtonState.CloseAnimation);
            boolean z = this.d;
            QuickAccessFiltersViewState quickAccessFiltersViewState = this.f58098e;
            if (!z || quickAccessFiltersViewState.d) {
                this.g.setValue(Boolean.valueOf(!quickAccessFiltersViewState.d));
                Duration.Companion companion = Duration.INSTANCE;
                long jH = DurationKt.h(400L, DurationUnit.MILLISECONDS);
                this.f58096b = 1;
                if (DelayKt.c(jH, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        this.f58099f.mo47invoke();
        function1.invoke(FiltersButtonState.Visible);
        this.f58100h.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
