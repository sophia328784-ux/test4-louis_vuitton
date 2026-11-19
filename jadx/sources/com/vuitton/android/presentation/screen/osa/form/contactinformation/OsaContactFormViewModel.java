package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.FormTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaPrebookResult;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OsaContactFormViewModel {
    void I3(OsaPrebookResult osaPrebookResult);

    void I5(OsaReasonUiModel osaReasonUiModel);

    void R2(OsaReasonUiModel osaReasonUiModel);

    void W5(FormTypeUiModel formTypeUiModel, FormSectionTypeUiModel formSectionTypeUiModel, Object obj);

    void W8();

    StateFlow a();

    Flow b();

    void e8();

    void j1(FormSectionTypeUiModel formSectionTypeUiModel);

    void o(OsaTrackingUiModel osaTrackingUiModel);

    void p3(boolean z);

    void sc();

    void t();

    void x1();

    SharedFlow x8();
}
