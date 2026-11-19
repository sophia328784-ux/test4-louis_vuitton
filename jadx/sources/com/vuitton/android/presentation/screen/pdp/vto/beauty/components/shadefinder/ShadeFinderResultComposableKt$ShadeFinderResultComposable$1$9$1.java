package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModelKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$9$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        ShadeFinderTracker shadeFinderTracker = (ShadeFinderTracker) this.receiver;
        shadeFinderTracker.getClass();
        shadeFinderTracker.f62294a.a(ShadeFinderTrackingUiModelKt.a(new ShadeFinderTrackingUiModel.OnRecommendationsSwipedEvent(str)));
        return Unit.f71739a;
    }
}
