package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BeautyVtoActivity$onCreate$1$1$28$1 extends FunctionReferenceImpl implements Function1<SkuIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = ((SkuIdUiModel) obj).f61764b;
        str.getClass();
        BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) this.receiver;
        BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
        beautyVtoActivity.getClass();
        beautyVtoActivity.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToProductPage(str, false, null, null, 14, null), beautyVtoActivity));
        beautyVtoActivity.finish();
        return Unit.f71739a;
    }
}
