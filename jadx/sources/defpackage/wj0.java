package defpackage;

import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wj0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModel f80888c;

    public /* synthetic */ wj0(OsaLocationFormViewModel osaLocationFormViewModel, int i2) {
        this.f80887b = i2;
        this.f80888c = osaLocationFormViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80887b;
        OsaLocationFormViewModel osaLocationFormViewModel = this.f80888c;
        switch (i2) {
            case 0:
                osaLocationFormViewModel.o(OsaTrackingUiModel.KisaConsentScreen.f61002a);
                break;
            case 1:
                osaLocationFormViewModel.o(new OsaTrackingUiModel.BookAppointmentContactInfoCancelClickedEvent(((OsaLocationFormViewState) osaLocationFormViewModel.a().getValue()).r));
                break;
            default:
                osaLocationFormViewModel.I0(AuthenticationTrackingUiModel.OsaAuthenticationScreen.f53702a);
                break;
        }
        return Unit.f71739a;
    }
}
