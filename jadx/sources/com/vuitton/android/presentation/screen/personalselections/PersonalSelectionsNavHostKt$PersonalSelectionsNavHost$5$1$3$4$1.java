package com.vuitton.android.presentation.screen.personalselections;

import com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreTrackingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$4$1 extends FunctionReferenceImpl implements Function1<PersonalSelectionsInStoreTrackingUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PersonalSelectionsInStoreTrackingUiModel personalSelectionsInStoreTrackingUiModel = (PersonalSelectionsInStoreTrackingUiModel) obj;
        personalSelectionsInStoreTrackingUiModel.getClass();
        ((PersonalSelectionsInStoreViewModel) this.receiver).p1(personalSelectionsInStoreTrackingUiModel);
        return Unit.f71739a;
    }
}
