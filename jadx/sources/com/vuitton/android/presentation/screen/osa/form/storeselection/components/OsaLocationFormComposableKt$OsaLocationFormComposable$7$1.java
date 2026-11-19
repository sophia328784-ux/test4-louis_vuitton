package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaLocationFormComposableKt$OsaLocationFormComposable$7$1 extends FunctionReferenceImpl implements Function2<String, AppointmentTypeUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = (String) obj;
        AppointmentTypeUiModel appointmentTypeUiModel = (AppointmentTypeUiModel) obj2;
        str.getClass();
        appointmentTypeUiModel.getClass();
        ((OsaLocationFormViewModel) this.receiver).J7(str, appointmentTypeUiModel);
        return Unit.f71739a;
    }
}
