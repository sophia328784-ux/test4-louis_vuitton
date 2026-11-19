package com.vuitton.android.presentation.screen.cart.components.samples;

import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PerfumeSamplesComposableKt$PerfumeSamplesComposable$4$2$1$1 extends FunctionReferenceImpl implements Function2<PerfumeSampleUiModel, Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        PerfumeSampleUiModel perfumeSampleUiModel = (PerfumeSampleUiModel) obj;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        perfumeSampleUiModel.getClass();
        ((NativeCartViewModel) this.receiver).ra(perfumeSampleUiModel, zBooleanValue);
        return Unit.f71739a;
    }
}
