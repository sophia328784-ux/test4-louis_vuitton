package com.vuitton.android.presentation.screen.search.components;

import androidx.compose.ui.focus.FocusManager;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.components.SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1", f = "SearchScreenComposable.kt", l = {161}, m = "invokeSuspend", v = 2)
final class SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FocusManager f64191c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SearchViewModel f64192e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1(FocusManager focusManager, Function0 function0, SearchViewModel searchViewModel, Continuation continuation) {
        super(2, continuation);
        this.f64191c = focusManager;
        this.d = function0;
        this.f64192e = searchViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1(this.f64191c, this.d, this.f64192e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchScreenComposableKt$SearchScreenComposable$1$4$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64190b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f64191c.z(false);
            Duration.Companion companion = Duration.INSTANCE;
            long jH = DurationKt.h(50L, DurationUnit.MILLISECONDS);
            this.f64190b = 1;
            if (DelayKt.c(jH, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        this.d.mo47invoke();
        this.f64192e.x7(SearchTrackingUiModel.OnBlankHitSearch.f64265a);
        return Unit.f71739a;
    }
}
