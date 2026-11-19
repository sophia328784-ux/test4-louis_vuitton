package defpackage;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterTrackingUiModelKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState;
import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d01 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SocialRegisterActivity f68386c;

    public /* synthetic */ d01(SocialRegisterActivity socialRegisterActivity, int i2) {
        this.f68385b = i2;
        this.f68386c = socialRegisterActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68385b;
        SocialRegisterActivity socialRegisterActivity = this.f68386c;
        switch (i2) {
            case 0:
                return SocialRegisterActivity.H(socialRegisterActivity);
            case 1:
                return SocialRegisterActivity.I(socialRegisterActivity);
            case 2:
                SocialRegisterActivity.Companion companion = SocialRegisterActivity.s;
                SocialRegisterViewModelImpl socialRegisterViewModelImplJ = socialRegisterActivity.J();
                TrackingAuthOrigin trackingAuthOrigin = (TrackingAuthOrigin) socialRegisterActivity.q.getF71699b();
                TrackingAuthEntryPoint trackingAuthEntryPoint = (TrackingAuthEntryPoint) socialRegisterActivity.r.getF71699b();
                SocialAuthMode socialAuthMode = ((SocialRegisterViewState) socialRegisterActivity.J().x.getValue()).f54235a.o;
                if (socialAuthMode == null) {
                    socialAuthMode = SocialAuthMode.GOOGLE;
                }
                socialRegisterViewModelImplJ.f54086c.a(SocialRegisterTrackingUiModelKt.b(new SocialRegisterTrackingUiModel.OnSocialRegisterPrivacyLinkEvent(trackingAuthOrigin, trackingAuthEntryPoint, socialAuthMode)));
                LegalTextActivity.p.getClass();
                socialRegisterActivity.startActivity(LegalTextActivity.Companion.a(socialRegisterActivity, false));
                return Unit.f71739a;
            default:
                SocialRegisterActivity.Companion companion2 = SocialRegisterActivity.s;
                SocialRegisterViewModelImpl socialRegisterViewModelImplJ2 = socialRegisterActivity.J();
                TrackingAuthOrigin trackingAuthOrigin2 = (TrackingAuthOrigin) socialRegisterActivity.q.getF71699b();
                TrackingAuthEntryPoint trackingAuthEntryPoint2 = (TrackingAuthEntryPoint) socialRegisterActivity.r.getF71699b();
                SocialAuthMode socialAuthMode2 = ((SocialRegisterViewState) socialRegisterActivity.J().x.getValue()).f54235a.o;
                if (socialAuthMode2 == null) {
                    socialAuthMode2 = SocialAuthMode.GOOGLE;
                }
                socialRegisterViewModelImplJ2.f54086c.a(SocialRegisterTrackingUiModelKt.b(new SocialRegisterTrackingUiModel.OnSocialRegisterCloseProfileEvent(trackingAuthOrigin2, trackingAuthEntryPoint2, socialAuthMode2)));
                socialRegisterActivity.finish();
                return Unit.f71739a;
        }
    }
}
