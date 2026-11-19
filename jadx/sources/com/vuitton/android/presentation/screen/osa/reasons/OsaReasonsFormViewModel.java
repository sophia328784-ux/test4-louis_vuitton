package com.vuitton.android.presentation.screen.osa.reasons;

import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OsaReasonsFormViewModel {
    void C7();

    void G4(boolean z);

    void W3(String str, boolean z);

    StateFlow a();

    void e4();

    void o(OsaTrackingUiModel osaTrackingUiModel);

    void r8(OsaReasonUiModel osaReasonUiModel);

    void t();
}
