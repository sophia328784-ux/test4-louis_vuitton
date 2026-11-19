package defpackage;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialType;
import com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationPagerFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hp implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivitySectionDetailFragment f69761c;

    public /* synthetic */ hp(ConnectivitySectionDetailFragment connectivitySectionDetailFragment, int i2) {
        this.f69760b = i2;
        this.f69761c = connectivitySectionDetailFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69760b;
        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f69761c;
        switch (i2) {
            case 0:
                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.ClickOnDiscoverEvent("Tutorial", "Earphones")));
                connectivitySectionDetailFragment.R();
                ConnectivitySectionDetailActivityRouter.b(connectivitySectionDetailFragment.getActivity(), TutorialType.EARPHONE);
                break;
            case 1:
                ConnectivitySectionDetailFragment.Companion companion2 = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.R();
                ConnectivitySectionDetailActivityRouter.b(connectivitySectionDetailFragment.getActivity(), TutorialType.WATCH_V3);
                break;
            case 2:
                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.R();
                FragmentActivity activity = connectivitySectionDetailFragment.getActivity();
                if (activity != null) {
                    FragmentTransaction fragmentTransactionD = activity.getSupportFragmentManager().d();
                    fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
                    WatchfacePresentationPagerFragment.K.getClass();
                    WatchfacePresentationPagerFragment watchfacePresentationPagerFragment = new WatchfacePresentationPagerFragment();
                    String str = WatchfacePresentationPagerFragment.M;
                    fragmentTransactionD.i(R.id.fragment_container, watchfacePresentationPagerFragment, str, 1);
                    fragmentTransactionD.d(str);
                    FragmentTransactionExtKt.a(fragmentTransactionD, activity);
                    fragmentTransactionD.e();
                }
                break;
            default:
                ConnectivitySectionDetailFragment.Companion companion4 = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.R();
                ConnectivitySectionDetailActivityRouter.b(connectivitySectionDetailFragment.getActivity(), TutorialType.HORIZON_SPEAKER);
                break;
        }
        return Unit.f71739a;
    }
}
