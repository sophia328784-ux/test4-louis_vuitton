package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.TrackingClickType;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ThematicPlpComposableKt$ThematicPlpComposable$7$4$1 extends FunctionReferenceImpl implements Function2<SkuIdUiModel, TrackingClickType, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = ((SkuIdUiModel) obj).f61764b;
        str.getClass();
        ((ThematicPlpViewModel) this.receiver).h4(str, (TrackingClickType) obj2);
        return Unit.f71739a;
    }
}
