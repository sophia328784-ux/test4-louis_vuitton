package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AICompanionActivity$onCreate$1$1$3$1 extends FunctionReferenceImpl implements Function1<SkuIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = ((SkuIdUiModel) obj).f61764b;
        str.getClass();
        AICompanionActivity aICompanionActivity = (AICompanionActivity) this.receiver;
        AICompanionActivity.Companion companion = AICompanionActivity.v;
        aICompanionActivity.getClass();
        aICompanionActivity.startActivity(AICompanionDestinationsKt.a(new AICompanionDestinations.ToProductPage(str, false, null, null, 14, null), aICompanionActivity));
        return Unit.f71739a;
    }
}
