package com.vuitton.android.presentation.screen.authentication.welcome;

import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelLazy;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class WelcomeFragment$onCreateView$1$1$1$socialLoginState$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        WelcomeFragment welcomeFragment = (WelcomeFragment) this.receiver;
        WelcomeFragment.Companion companion = WelcomeFragment.I;
        FragmentActivity fragmentActivityRequireActivity = welcomeFragment.requireActivity();
        ViewModelLazy viewModelLazy = welcomeFragment.G;
        ((AuthenticationViewModel) welcomeFragment.F.getF71699b()).I0(new AuthenticationTrackingUiModel.RegisterClickEvent(false, 1, null));
        if (welcomeFragment.H != null) {
            AuthenticationActivityRouter.e(fragmentActivityRequireActivity, ((WelcomeViewModel) viewModelLazy.getF71699b()).getF54257j(), ((WelcomeViewModel) viewModelLazy.getF71699b()).getF54256i(), TrackingAuthOrigin.ONBOARDING);
            return Unit.f71739a;
        }
        Intrinsics.h("authenticationActivityRouter");
        throw null;
    }
}
