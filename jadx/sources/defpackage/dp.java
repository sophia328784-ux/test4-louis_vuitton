package defpackage;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.helper.LVConnectHelper;
import com.vuitton.android.presentation.screen.connectivity.PairingBottomSheetDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityRouter;
import com.vuitton.android.presentation.screen.connectivity.home.WatchVersionChooserBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.section.SectionType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dp implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivityFragment f68625c;

    public /* synthetic */ dp(ConnectivityFragment connectivityFragment, int i2) {
        this.f68624b = i2;
        this.f68625c = connectivityFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FragmentManager supportFragmentManager;
        int i2 = this.f68624b;
        ConnectivityFragment connectivityFragment = this.f68625c;
        switch (i2) {
            case 0:
                ConnectivityFragment.Companion companion = ConnectivityFragment.Q;
                ((View) obj).getClass();
                FragmentActivity fragmentActivityRequireActivity = connectivityFragment.requireActivity();
                fragmentActivityRequireActivity.getClass();
                LVConnectHelper.a(fragmentActivityRequireActivity);
                break;
            case 1:
                Button button = (Button) obj;
                ConnectivityFragment.Companion companion2 = ConnectivityFragment.Q;
                button.getClass();
                ViewExtKt.d(button, new dp(connectivityFragment, 6));
                break;
            case 2:
                ConnectivityFragment.Companion companion3 = ConnectivityFragment.Q;
                ((View) obj).getClass();
                FragmentActivity fragmentActivityRequireActivity2 = connectivityFragment.requireActivity();
                fragmentActivityRequireActivity2.getClass();
                LVConnectHelper.a(fragmentActivityRequireActivity2);
                break;
            case 3:
                ConnectivityFragment.Companion companion4 = ConnectivityFragment.Q;
                ((View) obj).getClass();
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.HORIZON_SPEAKER);
                break;
            case 4:
                FrameLayout frameLayout = (FrameLayout) obj;
                ConnectivityFragment.Companion companion5 = ConnectivityFragment.Q;
                frameLayout.getClass();
                ViewExtKt.d(frameLayout, new dp(connectivityFragment, 8));
                break;
            case 5:
                ConnectivityFragment.Companion companion6 = ConnectivityFragment.Q;
                ((View) obj).getClass();
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.TRUNK_SPEAKER);
                break;
            case 6:
                ConnectivityFragment.Companion companion7 = ConnectivityFragment.Q;
                ((View) obj).getClass();
                connectivityFragment.R().f56078j.a(ConnectivityTrackingUiModelKt.a(ConnectivityTrackingUiModel.PairNewObjectEvent.f56259a));
                FragmentActivity activity = connectivityFragment.getActivity();
                if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
                    PairingBottomSheetDialogFragment.Companion companion8 = PairingBottomSheetDialogFragment.S;
                    yk0 yk0Var = new yk0(15);
                    companion8.getClass();
                    PairingBottomSheetDialogFragment pairingBottomSheetDialogFragment = new PairingBottomSheetDialogFragment();
                    pairingBottomSheetDialogFragment.R = yk0Var;
                    pairingBottomSheetDialogFragment.show(supportFragmentManager, PairingBottomSheetDialogFragment.V);
                }
                break;
            case 7:
                ConnectivityFragment.Companion companion9 = ConnectivityFragment.Q;
                ((View) obj).getClass();
                connectivityFragment.R().f56078j.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.OpenSectionEvent(LVLightUpDeviceType.X408PAIR)));
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.SNEAKERS);
                break;
            case 8:
                ConnectivityFragment.Companion companion10 = ConnectivityFragment.Q;
                ((View) obj).getClass();
                connectivityFragment.R().f56078j.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.OpenSectionEvent(LVLightUpDeviceType.KEEPALL)));
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.KEEPALL);
                break;
            case 9:
                ConnectivityFragment.Companion companion11 = ConnectivityFragment.Q;
                ((View) obj).getClass();
                FragmentManager childFragmentManager = connectivityFragment.getChildFragmentManager();
                WatchVersionChooserBottomSheet.Q.getClass();
                new WatchVersionChooserBottomSheet().show(childFragmentManager, WatchVersionChooserBottomSheet.S);
                break;
            case 10:
                ConnectivityFragment.Companion companion12 = ConnectivityFragment.Q;
                ((View) obj).getClass();
                connectivityFragment.R().f56078j.a(ConnectivityTrackingUiModelKt.a(ConnectivityTrackingUiModel.EarphoneSectionClickEvent.f56258a));
                connectivityFragment.Q();
                ConnectivityRouter.a(connectivityFragment.getActivity(), SectionType.EARPHONE);
                break;
            case 11:
                FrameLayout frameLayout2 = (FrameLayout) obj;
                ConnectivityFragment.Companion companion13 = ConnectivityFragment.Q;
                frameLayout2.getClass();
                ViewExtKt.d(frameLayout2, new dp(connectivityFragment, 3));
                break;
            case 12:
                FrameLayout frameLayout3 = (FrameLayout) obj;
                ConnectivityFragment.Companion companion14 = ConnectivityFragment.Q;
                frameLayout3.getClass();
                ViewExtKt.d(frameLayout3, new dp(connectivityFragment, 5));
                break;
            default:
                FrameLayout frameLayout4 = (FrameLayout) obj;
                ConnectivityFragment.Companion companion15 = ConnectivityFragment.Q;
                frameLayout4.getClass();
                ViewExtKt.d(frameLayout4, new dp(connectivityFragment, 7));
                break;
        }
        return Unit.f71739a;
    }
}
