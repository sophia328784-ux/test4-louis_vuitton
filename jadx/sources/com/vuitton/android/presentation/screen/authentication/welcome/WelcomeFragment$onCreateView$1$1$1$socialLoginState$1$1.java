package com.vuitton.android.presentation.screen.authentication.welcome;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class WelcomeFragment$onCreateView$1$1$1$socialLoginState$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        WelcomeFragment welcomeFragment = (WelcomeFragment) this.receiver;
        WelcomeFragment.Companion companion = WelcomeFragment.I;
        FragmentActivity activity = welcomeFragment.getActivity();
        if (activity != null) {
            ((AuthenticationViewModel) welcomeFragment.F.getF71699b()).I0(new AuthenticationTrackingUiModel.LoginInClickEvent(false, 1, null));
            boolean f54255h = ((WelcomeViewModel) welcomeFragment.G.getF71699b()).getF54255h();
            AuthenticationActivityRouter authenticationActivityRouter = welcomeFragment.H;
            if (f54255h) {
                if (authenticationActivityRouter == null) {
                    Intrinsics.h("authenticationActivityRouter");
                    throw null;
                }
                AuthenticationActivityRouter.d(activity, null);
            } else {
                if (authenticationActivityRouter == null) {
                    Intrinsics.h("authenticationActivityRouter");
                    throw null;
                }
                AuthenticationActivityRouter.b(activity, null);
            }
        }
        return Unit.f71739a;
    }
}
