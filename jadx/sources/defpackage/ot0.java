package defpackage;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailDeviceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ot0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RoomDetailFragment f78661c;

    public /* synthetic */ ot0(RoomDetailFragment roomDetailFragment, int i2) {
        this.f78660b = i2;
        this.f78661c = roomDetailFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f78660b;
        RoomDetailFragment roomDetailFragment = this.f78661c;
        switch (i2) {
            case 0:
                RoomDetailFragment.Companion companion = RoomDetailFragment.L;
                return new RoomDetailDeviceListAdapter(roomDetailFragment);
            default:
                RoomDetailFragment.Companion companion2 = RoomDetailFragment.L;
                FragmentActivity activity = roomDetailFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new pt0(roomDetailFragment, 2));
                }
                return Unit.f71739a;
        }
    }
}
