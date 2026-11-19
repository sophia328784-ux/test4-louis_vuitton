package defpackage;

import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sl implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateVisionnaireUiModel f79818c;
    public final /* synthetic */ CertificateViewModel d;

    public /* synthetic */ sl(CertificateViewModel certificateViewModel, CertificateVisionnaireUiModel certificateVisionnaireUiModel, int i2) {
        this.f79817b = i2;
        this.d = certificateViewModel;
        this.f79818c = certificateVisionnaireUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79817b;
        CertificateVisionnaireUiModel certificateVisionnaireUiModel = this.f79818c;
        CertificateViewModel certificateViewModel = this.d;
        switch (i2) {
            case 0:
                if (certificateVisionnaireUiModel != null) {
                    certificateViewModel.u(new CertificateTrackingUiModel.StartDetectionNfcEvent(certificateVisionnaireUiModel));
                }
                break;
            case 1:
                if (certificateVisionnaireUiModel != null) {
                    certificateViewModel.u(new CertificateTrackingUiModel.NeedHelpNfcEvent(certificateVisionnaireUiModel));
                }
                break;
            case 2:
                if (certificateVisionnaireUiModel != null) {
                    certificateViewModel.u(new CertificateTrackingUiModel.ActivateCertificateSuccessEvent(certificateVisionnaireUiModel));
                }
                break;
            case 3:
                certificateViewModel.u(new CertificateTrackingUiModel.CertificateVisionnaireDetailsScreen(certificateVisionnaireUiModel));
                break;
            case 4:
                certificateViewModel.u(new CertificateTrackingUiModel.ViewJourneyEvent(certificateVisionnaireUiModel));
                break;
            case 5:
                certificateViewModel.u(new CertificateTrackingUiModel.ProductSummarySectionEvent(certificateVisionnaireUiModel));
                break;
            default:
                certificateViewModel.u(new CertificateTrackingUiModel.DetailsSectionEvent(certificateVisionnaireUiModel));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ sl(CertificateVisionnaireUiModel certificateVisionnaireUiModel, CertificateViewModel certificateViewModel, int i2) {
        this.f79817b = i2;
        this.f79818c = certificateVisionnaireUiModel;
        this.d = certificateViewModel;
    }
}
