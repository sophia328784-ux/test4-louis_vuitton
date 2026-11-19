package com.vuitton.android.presentation.screen.connectivity.trunkspeaker;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrunkSpeakerRouter {
    @Inject
    public TrunkSpeakerRouter() {
    }

    public static void a(FragmentActivity fragmentActivity, String str) {
        FragmentManager supportFragmentManager;
        str.getClass();
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            return;
        }
        FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        WifiDeviceDetailFragment.N.getClass();
        WifiDeviceDetailFragment wifiDeviceDetailFragment = new WifiDeviceDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("DEVICE", str);
        wifiDeviceDetailFragment.setArguments(bundle);
        String str2 = WifiDeviceDetailFragment.P;
        fragmentTransactionD.i(R.id.fragment_container, wifiDeviceDetailFragment, str2, 1);
        fragmentTransactionD.d(str2);
        FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
        fragmentTransactionD.e();
    }
}
