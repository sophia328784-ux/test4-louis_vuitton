package defpackage;

import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet$openConnectToWifi$listener$1;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.a;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vo implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectToWifiFragment f80626c;

    public /* synthetic */ vo(ConnectToWifiFragment connectToWifiFragment, int i2) {
        this.f80625b = i2;
        this.f80626c = connectToWifiFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScanMainBottomSheet scanMainBottomSheet;
        FragmentActivity activity;
        int i2 = this.f80625b;
        int i3 = 0;
        ConnectToWifiFragment connectToWifiFragment = this.f80626c;
        switch (i2) {
            case 0:
                ConnectToWifiFragment.Companion companion = ConnectToWifiFragment.L;
                Toast.makeText(connectToWifiFragment.getActivity(), connectToWifiFragment.getString(R.string.speaker_trunk_password_necessary), 0).show();
                break;
            case 1:
                ConnectToWifiFragment.Companion companion2 = ConnectToWifiFragment.L;
                connectToWifiFragment.P().f51326f.setVisibility(0);
                break;
            case 2:
                ConnectToWifiFragment.Companion companion3 = ConnectToWifiFragment.L;
                Toast.makeText(connectToWifiFragment.getActivity(), connectToWifiFragment.getString(R.string.speaker_trunk_network_necessary), 0).show();
                break;
            case 3:
                ConnectToWifiFragment.Companion companion4 = ConnectToWifiFragment.L;
                connectToWifiFragment.P().f51326f.setVisibility(8);
                break;
            case 4:
                Toast.makeText(connectToWifiFragment.getActivity(), connectToWifiFragment.getString(R.string.speaker_trunk_tutorial_wifi_connection_failed_error), 0).show();
                break;
            case 5:
                ConnectToWifiFragment.O(connectToWifiFragment);
                ScanMainBottomSheet$openConnectToWifi$listener$1 scanMainBottomSheet$openConnectToWifi$listener$1 = connectToWifiFragment.H;
                if (scanMainBottomSheet$openConnectToWifi$listener$1 != null && (activity = (scanMainBottomSheet = scanMainBottomSheet$openConnectToWifi$listener$1.f56597a).getActivity()) != null) {
                    activity.runOnUiThread(new a(scanMainBottomSheet, scanMainBottomSheet$openConnectToWifi$listener$1.f56598b, i3));
                    break;
                }
                break;
            default:
                Toast.makeText(connectToWifiFragment.getActivity(), connectToWifiFragment.getString(R.string.speaker_trunk_tutorial_wifi_list_unavailable_error), 0).show();
                break;
        }
    }
}
