package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PdpBottomSheetContentKt$PdpBottomSheetContent$5$1 extends FunctionReferenceImpl implements Function2<Boolean, SkuIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        String str = ((SkuIdUiModel) obj2).f61764b;
        str.getClass();
        PdpTracker pdpTracker = (PdpTracker) this.receiver;
        pdpTracker.getClass();
        pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnSizeGuideUnitChangedEvent(str, zBooleanValue, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
        return Unit.f71739a;
    }
}
