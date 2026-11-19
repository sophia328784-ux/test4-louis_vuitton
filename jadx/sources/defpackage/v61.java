package defpackage;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v61 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WifiDeviceDetailFragment f80519c;

    public /* synthetic */ v61(WifiDeviceDetailFragment wifiDeviceDetailFragment, int i2) {
        this.f80518b = i2;
        this.f80519c = wifiDeviceDetailFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80518b;
        WifiDeviceDetailFragment wifiDeviceDetailFragment = this.f80519c;
        switch (i2) {
            case 0:
                WifiDeviceDetailFragment.Companion companion = WifiDeviceDetailFragment.N;
                FragmentActivity activity = wifiDeviceDetailFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new w61(wifiDeviceDetailFragment, 2));
                }
                return Unit.f71739a;
            case 1:
                WifiDeviceDetailFragment.Companion companion2 = WifiDeviceDetailFragment.N;
                Bundle arguments = wifiDeviceDetailFragment.getArguments();
                if (arguments != null) {
                    return arguments.getString("DEVICE");
                }
                return null;
            default:
                WifiDeviceDetailFragment.Companion companion3 = WifiDeviceDetailFragment.N;
                wifiDeviceDetailFragment.O().f51333h.setVisibility(8);
                FragmentActivity activity2 = wifiDeviceDetailFragment.getActivity();
                if (activity2 != null) {
                    activity2.runOnUiThread(new w61(wifiDeviceDetailFragment, 4));
                }
                return Unit.f71739a;
        }
    }
}
