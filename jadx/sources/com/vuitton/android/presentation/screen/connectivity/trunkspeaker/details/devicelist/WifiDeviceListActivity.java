package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.TrunkSpeakerRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import dagger.hilt.android.AndroidEntryPoint;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WifiDeviceListActivity extends Hilt_WifiDeviceListActivity {
    public static final Companion t = new Companion(null);
    public TrunkSpeakerRouter s;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity$Companion;", "", "", "EXTRA_DEVICE_ID", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str) {
            context.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) WifiDeviceListActivity.class).putExtra("DEVICE_ID", str);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.BaseTrunkActivity, com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Serializable serializableExtra;
        super.onCreate(bundle);
        Intent intent = getIntent();
        intent.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            serializableExtra = intent.getSerializableExtra("DEVICE_ID", String.class);
        } else {
            Serializable serializableExtra2 = intent.getSerializableExtra("DEVICE_ID");
            if (!(serializableExtra2 instanceof String)) {
                serializableExtra2 = null;
            }
            serializableExtra = (String) serializableExtra2;
        }
        String str = (String) serializableExtra;
        TrunkSpeakerRouter trunkSpeakerRouter = this.s;
        if (str == null) {
            if (trunkSpeakerRouter == null) {
                Intrinsics.h("trunkSpeakerRouter");
                throw null;
            }
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            if (supportFragmentManager != null) {
                FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
                WifiDeviceListFragment.L.getClass();
                fragmentTransactionD.m(R.id.fragment_container, new WifiDeviceListFragment(), WifiDeviceListFragment.N);
                fragmentTransactionD.e();
                return;
            }
            return;
        }
        if (trunkSpeakerRouter == null) {
            Intrinsics.h("trunkSpeakerRouter");
            throw null;
        }
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        if (supportFragmentManager2 != null) {
            FragmentTransaction fragmentTransactionD2 = supportFragmentManager2.d();
            WifiDeviceDetailFragment.N.getClass();
            WifiDeviceDetailFragment wifiDeviceDetailFragment = new WifiDeviceDetailFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putSerializable("DEVICE", str);
            wifiDeviceDetailFragment.setArguments(bundle2);
            fragmentTransactionD2.m(R.id.fragment_container, wifiDeviceDetailFragment, WifiDeviceDetailFragment.P);
            fragmentTransactionD2.e();
        }
    }
}
