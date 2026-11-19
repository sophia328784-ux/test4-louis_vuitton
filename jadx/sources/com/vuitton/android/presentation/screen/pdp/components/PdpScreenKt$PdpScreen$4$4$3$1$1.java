package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PdpScreenKt$PdpScreen$4$4$3$1$1 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int iIntValue = ((Number) obj).intValue();
        PdpTracker pdpTracker = (PdpTracker) this.receiver;
        pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnCrossSellProductSwipeEvent(iIntValue), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
        return Unit.f71739a;
    }
}
