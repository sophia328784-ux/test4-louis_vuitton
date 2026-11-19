package com.vuitton.android.presentation.screen.certificates;

import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CertificateViewModel extends ContactUsDelegate {
    void L9();

    void Q5(CertificateDiamondUiModel certificateDiamondUiModel, String str);

    StateFlow a();

    Flow b();

    void c();

    SharedFlow da();

    void u(CertificateTrackingUiModel certificateTrackingUiModel);

    void u2();
}
