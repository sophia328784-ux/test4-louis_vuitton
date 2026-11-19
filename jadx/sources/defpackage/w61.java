package defpackage;

import android.widget.Toast;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.TrunkUpdateLoadingDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w61 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WifiDeviceDetailFragment f80777c;

    public /* synthetic */ w61(WifiDeviceDetailFragment wifiDeviceDetailFragment, int i2) {
        this.f80776b = i2;
        this.f80777c = wifiDeviceDetailFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f80776b;
        WifiDeviceDetailFragment wifiDeviceDetailFragment = this.f80777c;
        switch (i2) {
            case 0:
                WifiDeviceDetailFragment.Companion companion = WifiDeviceDetailFragment.N;
                Toast.makeText(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_update_name_success), 0).show();
                break;
            case 1:
                TrunkUpdateLoadingDialogFragment trunkUpdateLoadingDialogFragment = wifiDeviceDetailFragment.G;
                if (trunkUpdateLoadingDialogFragment != null) {
                    trunkUpdateLoadingDialogFragment.dismissAllowingStateLoss();
                }
                break;
            case 2:
                WifiDeviceDetailFragment.Companion companion2 = WifiDeviceDetailFragment.N;
                Toast.makeText(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_update_name_failed_error), 0).show();
                break;
            case 3:
                Toast.makeText(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_reset_device_success), 0).show();
                break;
            case 4:
                Toast.makeText(wifiDeviceDetailFragment.getActivity(), wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_reset_device_failed_error), 0).show();
                break;
            case 5:
                WifiDeviceDetailFragment.Companion companion3 = WifiDeviceDetailFragment.N;
                wifiDeviceDetailFragment.P();
                Snackbar.g(wifiDeviceDetailFragment.requireActivity().findViewById(android.R.id.content), wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_update_device_success), -1).h();
                break;
            default:
                WifiDeviceDetailFragment.Companion companion4 = WifiDeviceDetailFragment.N;
                wifiDeviceDetailFragment.P();
                Snackbar.g(wifiDeviceDetailFragment.requireActivity().findViewById(android.R.id.content), wifiDeviceDetailFragment.getString(R.string.speaker_trunk_detail_update_device_failed_error), -1).h();
                break;
        }
    }
}
