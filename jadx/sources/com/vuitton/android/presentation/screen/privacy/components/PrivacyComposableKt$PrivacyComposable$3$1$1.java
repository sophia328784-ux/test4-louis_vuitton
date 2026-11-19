package com.vuitton.android.presentation.screen.privacy.components;

import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PrivacyComposableKt$PrivacyComposable$3$1$1 extends FunctionReferenceImpl implements Function2<ConsentUiModel, Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ConsentUiModel consentUiModel = (ConsentUiModel) obj;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        consentUiModel.getClass();
        ((PrivacyViewModel) this.receiver).d1(consentUiModel, zBooleanValue);
        return Unit.f71739a;
    }
}
