package defpackage;

import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y61 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WifiDeviceListFragment f81313c;

    public /* synthetic */ y61(WifiDeviceListFragment wifiDeviceListFragment, int i2) {
        this.f81312b = i2;
        this.f81313c = wifiDeviceListFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f81312b;
        WifiDeviceListFragment wifiDeviceListFragment = this.f81313c;
        switch (i2) {
            case 0:
                WifiDeviceListFragment.Companion companion = WifiDeviceListFragment.L;
                FragmentActivity activity = wifiDeviceListFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new z61(wifiDeviceListFragment, 2));
                }
                return Unit.f71739a;
            case 1:
                WifiDeviceListFragment.Companion companion2 = WifiDeviceListFragment.L;
                FragmentActivity activity2 = wifiDeviceListFragment.getActivity();
                if (activity2 != null) {
                    activity2.runOnUiThread(new z61(wifiDeviceListFragment, 1));
                }
                return Unit.f71739a;
            default:
                WifiDeviceListFragment.Companion companion3 = WifiDeviceListFragment.L;
                Context contextRequireContext = wifiDeviceListFragment.requireContext();
                contextRequireContext.getClass();
                return new WifiDeviceListAdapter(contextRequireContext, wifiDeviceListFragment);
        }
    }
}
