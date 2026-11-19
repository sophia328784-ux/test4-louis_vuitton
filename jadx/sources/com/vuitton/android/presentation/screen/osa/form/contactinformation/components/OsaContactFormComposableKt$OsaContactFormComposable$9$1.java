package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaContactFormComposableKt$OsaContactFormComposable$9$1 extends FunctionReferenceImpl implements Function1<OsaTrackingUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        OsaTrackingUiModel osaTrackingUiModel = (OsaTrackingUiModel) obj;
        osaTrackingUiModel.getClass();
        ((OsaContactFormViewModel) this.receiver).o(osaTrackingUiModel);
        return Unit.f71739a;
    }
}
