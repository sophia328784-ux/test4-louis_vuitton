package defpackage;

import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ul implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateViewModel f80348c;
    public final /* synthetic */ NavHostController d;

    public /* synthetic */ ul(CertificateViewModel certificateViewModel, NavHostController navHostController, int i2) {
        this.f80347b = i2;
        this.f80348c = certificateViewModel;
        this.d = navHostController;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80347b;
        NavHostController navHostController = this.d;
        CertificateViewModel certificateViewModel = this.f80348c;
        switch (i2) {
            case 0:
                certificateViewModel.u2();
                NavController.f(navHostController, CertificateRoute.List.INSTANCE);
                break;
            case 1:
                certificateViewModel.u2();
                NavController.f(navHostController, CertificateRoute.List.INSTANCE);
                break;
            default:
                certificateViewModel.u(CertificateTrackingUiModel.AddCertificateEvent.f55852a);
                NavController.d(navHostController, new CertificateRoute.Add((String) null, 1, (DefaultConstructorMarker) null), null, 6);
                break;
        }
        return Unit.f71739a;
    }
}
