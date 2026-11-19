package com.vuitton.android.presentation.screen.authentication.welcome;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinations;
import com.vuitton.android.presentation.screen.mylv.MyLvDestinationsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class WelcomeFragment$onCreateView$1$1$1$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        WelcomeFragment welcomeFragment = (WelcomeFragment) this.receiver;
        WelcomeFragment.Companion companion = WelcomeFragment.I;
        ((AuthenticationViewModel) welcomeFragment.F.getF71699b()).I0(AuthenticationTrackingUiModel.OpenConnectivityFromWelcomePageEvent.f53701a);
        FragmentActivity activity = welcomeFragment.getActivity();
        if (activity != null) {
            activity.startActivity(MyLvDestinationsKt.a(MyLvDestinations.ToConnectivityPage.f59240a, activity));
        }
        return Unit.f71739a;
    }
}
