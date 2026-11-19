package defpackage;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.certificates.CertificateActivity;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wk implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateActivity f80890c;

    public /* synthetic */ wk(CertificateActivity certificateActivity, int i2) {
        this.f80889b = i2;
        this.f80890c = certificateActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f80889b) {
            case 0:
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                CertificateActivity.Companion companion = CertificateActivity.x;
                contributionLinkUiModel.getClass();
                CertificateActivity certificateActivity = this.f80890c;
                ContributionLinkNavigator contributionLinkNavigator = certificateActivity.q;
                if (contributionLinkNavigator != null) {
                    ContributionLinkNavigator.a(contributionLinkNavigator, certificateActivity, contributionLinkUiModel, null, null, null, 28);
                    return Unit.f71739a;
                }
                Intrinsics.h("contributionLinkNavigator");
                throw null;
            default:
                CertificateActivity.Companion companion2 = CertificateActivity.x;
                ((Throwable) obj).getClass();
                ((CertificateViewModel) this.f80890c.p.getF71699b()).L9();
                return Unit.f71739a;
        }
    }
}
