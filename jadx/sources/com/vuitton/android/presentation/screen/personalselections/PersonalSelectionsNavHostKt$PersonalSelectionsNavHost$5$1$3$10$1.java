package com.vuitton.android.presentation.screen.personalselections;

import com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$10$1 extends FunctionReferenceImpl implements Function1<PlpProductUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
        plpProductUiModel.getClass();
        ((PersonalSelectionsInStoreViewModel) this.receiver).K(plpProductUiModel);
        return Unit.f71739a;
    }
}
