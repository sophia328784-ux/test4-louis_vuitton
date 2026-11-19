package com.vuitton.android.presentation.screen.repairs.detail.components;

import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceProductUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffComposableKt$RepairDetailBffComposable$1$1", f = "RepairDetailBffComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class RepairDetailBffComposableKt$RepairDetailBffComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CareServiceShortUiModel f63790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModel f63791c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairDetailBffComposableKt$RepairDetailBffComposable$1$1(CareServiceShortUiModel careServiceShortUiModel, RepairBffViewModel repairBffViewModel, Continuation continuation) {
        super(2, continuation);
        this.f63790b = careServiceShortUiModel;
        this.f63791c = repairBffViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairDetailBffComposableKt$RepairDetailBffComposable$1$1(this.f63790b, this.f63791c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairDetailBffComposableKt$RepairDetailBffComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CareServiceShortUiModel careServiceShortUiModel = this.f63790b;
        CareServiceCategory careServiceCategory = careServiceShortUiModel != null ? careServiceShortUiModel.f64066f : null;
        CareServiceCategory careServiceCategory2 = CareServiceCategory.OnGoing;
        RepairBffViewModel repairBffViewModel = this.f63791c;
        if (careServiceCategory == careServiceCategory2) {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            CareServiceProductUiModel careServiceProductUiModel = careServiceShortUiModel.f64068i;
            String str = careServiceProductUiModel != null ? careServiceProductUiModel.f64061b : null;
            companion.getClass();
            if (str == null) {
                str = SkuIdUiModel.d;
            }
            repairBffViewModel.d(new DistantRepairTrackingUiModel.RepairDetailsOngoingScreen(str, careServiceShortUiModel.g, null));
        } else if (careServiceShortUiModel != null) {
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            CareServiceProductUiModel careServiceProductUiModel2 = careServiceShortUiModel.f64068i;
            String str2 = careServiceProductUiModel2 != null ? careServiceProductUiModel2.f64061b : null;
            companion2.getClass();
            if (str2 == null) {
                str2 = SkuIdUiModel.d;
            }
            repairBffViewModel.d(new DistantRepairTrackingUiModel.RepairDetailsHistoryScreen(str2, careServiceShortUiModel.g, null));
        }
        return Unit.f71739a;
    }
}
