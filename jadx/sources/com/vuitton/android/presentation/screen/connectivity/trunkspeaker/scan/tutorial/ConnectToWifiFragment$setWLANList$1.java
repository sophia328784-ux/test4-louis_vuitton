package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial;

import androidx.fragment.app.FragmentActivity;
import com.lp.ble.manager.LPBLEAPListListener;
import defpackage.vo;
import defpackage.wo;
import defpackage.xo;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$setWLANList$1", "Lcom/lp/ble/manager/LPBLEAPListListener;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectToWifiFragment$setWLANList$1 implements LPBLEAPListListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ConnectToWifiFragment f56621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ wo f56622b;

    public ConnectToWifiFragment$setWLANList$1(ConnectToWifiFragment connectToWifiFragment, wo woVar) {
        this.f56621a = connectToWifiFragment;
        this.f56622b = woVar;
    }

    @Override // com.lp.ble.manager.LPBLEAPListListener
    public final void onFailed(Exception exc) {
        ConnectToWifiFragment connectToWifiFragment = this.f56621a;
        ConnectToWifiFragment.O(connectToWifiFragment);
        FragmentActivity activity = connectToWifiFragment.getActivity();
        if (activity != null) {
            activity.runOnUiThread(new vo(connectToWifiFragment, 6));
        }
    }

    @Override // com.lp.ble.manager.LPBLEAPListListener
    public final void onSuccess(List list) {
        ConnectToWifiFragment connectToWifiFragment = this.f56621a;
        ConnectToWifiFragment.O(connectToWifiFragment);
        FragmentActivity activity = connectToWifiFragment.getActivity();
        if (activity != null) {
            activity.runOnUiThread(new xo(list, connectToWifiFragment, this.f56622b, this, 0));
        }
    }
}
