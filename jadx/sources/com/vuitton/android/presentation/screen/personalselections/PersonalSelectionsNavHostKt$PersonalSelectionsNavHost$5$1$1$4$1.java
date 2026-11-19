package com.vuitton.android.presentation.screen.personalselections;

import com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListTrackingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$1$4$1 extends FunctionReferenceImpl implements Function1<PersonalSelectionsListTrackingUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PersonalSelectionsListTrackingUiModel personalSelectionsListTrackingUiModel = (PersonalSelectionsListTrackingUiModel) obj;
        personalSelectionsListTrackingUiModel.getClass();
        ((PersonalSelectionsListViewModel) this.receiver).ca(personalSelectionsListTrackingUiModel);
        return Unit.f71739a;
    }
}
