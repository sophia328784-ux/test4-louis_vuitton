package defpackage;

import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivityRouter;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailFragment;
import com.vuitton.android.presentation.utils.TrackingFrom;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ip implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivitySectionDetailFragment f71185c;
    public final /* synthetic */ VideoUiModel d;

    public /* synthetic */ ip(ConnectivitySectionDetailFragment connectivitySectionDetailFragment, VideoUiModel videoUiModel, int i2) {
        this.f71184b = i2;
        this.f71185c = connectivitySectionDetailFragment;
        this.d = videoUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71184b;
        VideoUiModel videoUiModel = this.d;
        ConnectivitySectionDetailFragment connectivitySectionDetailFragment = this.f71185c;
        switch (i2) {
            case 0:
                ConnectivitySectionDetailFragment.Companion companion = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.R();
                ConnectivitySectionDetailActivityRouter.c(connectivitySectionDetailFragment.getActivity(), videoUiModel, null, "");
                break;
            case 1:
                ConnectivitySectionDetailFragment.Companion companion2 = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.S().f56278k.a(ConnectivityTrackingUiModelKt.a(ConnectivityTrackingUiModel.WatchVideoScreen.f56261a));
                connectivitySectionDetailFragment.R();
                ConnectivitySectionDetailActivityRouter.c(connectivitySectionDetailFragment.getActivity(), videoUiModel, new TrackingFrom("LVPass/IoT/Watch/WatchInVideo", "IoT"), "The watch in video");
                break;
            default:
                ConnectivitySectionDetailFragment.Companion companion3 = ConnectivitySectionDetailFragment.I;
                connectivitySectionDetailFragment.R();
                ConnectivitySectionDetailActivityRouter.c(connectivitySectionDetailFragment.getActivity(), videoUiModel, null, "");
                break;
        }
        return Unit.f71739a;
    }
}
