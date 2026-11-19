package com.vuitton.android.presentation.screen.certificates.diamonds.add;

import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import java.util.Map;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AddCertificateViewModel {
    void I6();

    StateFlow a();

    Flow b();

    void j8(boolean z);

    void k5(Map map);

    void u(CertificateTrackingUiModel certificateTrackingUiModel);

    void xa();
}
