package com.vuitton.android.presentation.screen.storemode.components.catalog;

import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL1UiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel2ScreenKt$StoreModeLevel2Screen$4$1", f = "StoreModeLevel2Screen.kt", l = {}, m = "invokeSuspend", v = 2)
final class StoreModeLevel2ScreenKt$StoreModeLevel2Screen$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ StoreModeViewModel f64882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeCategoryL1UiModel f64883c;
    public final /* synthetic */ StoreModeViewState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeLevel2ScreenKt$StoreModeLevel2Screen$4$1(StoreModeViewModel storeModeViewModel, StoreModeCategoryL1UiModel storeModeCategoryL1UiModel, StoreModeViewState storeModeViewState, Continuation continuation) {
        super(2, continuation);
        this.f64882b = storeModeViewModel;
        this.f64883c = storeModeCategoryL1UiModel;
        this.d = storeModeViewState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoreModeLevel2ScreenKt$StoreModeLevel2Screen$4$1(this.f64882b, this.f64883c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoreModeLevel2ScreenKt$StoreModeLevel2Screen$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f64882b.S6(new StoreModeTrackingUiModel.CatalogCategoryClickScreen(this.f64883c.f65043b, this.d.f65086h));
        return Unit.f71739a;
    }
}
