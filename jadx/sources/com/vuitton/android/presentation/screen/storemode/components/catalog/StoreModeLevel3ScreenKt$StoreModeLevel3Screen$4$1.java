package com.vuitton.android.presentation.screen.storemode.components.catalog;

import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL2UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel3ScreenKt$StoreModeLevel3Screen$4$1", f = "StoreModeLevel3Screen.kt", l = {}, m = "invokeSuspend", v = 2)
final class StoreModeLevel3ScreenKt$StoreModeLevel3Screen$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModel f64890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeCategoryL2UiModel f64891c;
    public final /* synthetic */ StoreModeViewState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeLevel3ScreenKt$StoreModeLevel3Screen$4$1(StoreModeViewModel storeModeViewModel, StoreModeCategoryL2UiModel storeModeCategoryL2UiModel, StoreModeViewState storeModeViewState, Continuation continuation) {
        super(2, continuation);
        this.f64890b = storeModeViewModel;
        this.f64891c = storeModeCategoryL2UiModel;
        this.d = storeModeViewState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoreModeLevel3ScreenKt$StoreModeLevel3Screen$4$1(this.f64890b, this.f64891c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModeLevel3ScreenKt$StoreModeLevel3Screen$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f64890b.S6(new StoreModeTrackingUiModel.CatalogCategoryClickScreen(this.f64891c.f65046b, this.d.f65086h));
        return Unit.f71739a;
    }
}
