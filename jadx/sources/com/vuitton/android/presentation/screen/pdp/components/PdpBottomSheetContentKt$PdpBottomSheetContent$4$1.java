package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PdpBottomSheetContentKt$PdpBottomSheetContent$4$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        PdpTracker pdpTracker = (PdpTracker) this.receiver;
        pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnSizeGuideCountryClickEvent.f61649a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
        return Unit.f71739a;
    }
}
