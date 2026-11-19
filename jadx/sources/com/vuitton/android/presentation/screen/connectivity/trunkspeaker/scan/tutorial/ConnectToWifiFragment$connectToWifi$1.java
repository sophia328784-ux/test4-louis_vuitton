package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.listener.LVTrunkConnectWifiListener;
import defpackage.tf;
import defpackage.vo;
import defpackage.wo;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$connectToWifi$1", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/listener/LVTrunkConnectWifiListener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectToWifiFragment$connectToWifi$1 implements LVTrunkConnectWifiListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ConnectToWifiFragment f56620a;

    public ConnectToWifiFragment$connectToWifi$1(ConnectToWifiFragment connectToWifiFragment) {
        this.f56620a = connectToWifiFragment;
    }

    public final void a() {
        ConnectToWifiFragment connectToWifiFragment = this.f56620a;
        ConnectToWifiFragment.O(connectToWifiFragment);
        FragmentActivity activity = connectToWifiFragment.getActivity();
        if (activity != null) {
            activity.runOnUiThread(new vo(connectToWifiFragment, 4));
        }
    }

    public final void b(String str, String str2) {
        str.getClass();
        str2.getClass();
        ConnectToWifiFragment connectToWifiFragment = this.f56620a;
        BuildersKt.c(ViewModelKt.a((ConnectToWifiViewModelImpl) connectToWifiFragment.K.getF71699b()), null, null, new ConnectToWifiViewModelImpl$checkDeviceAvailability$1(str2, new wo(connectToWifiFragment, 1), new tf(connectToWifiFragment, this, 26), null), 3);
    }
}
