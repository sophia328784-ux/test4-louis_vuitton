package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.lp.ble.manager.LPBLEManager;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.TrunkSpeakerRouter;
import com.vuitton.android.presentation.utils.PermissionUtils;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanActivity;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ScanActivity extends Hilt_ScanActivity {
    public static final Companion t = new Companion(null);
    public TrunkSpeakerRouter s;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanActivity$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.BaseTrunkActivity, com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.s == null) {
            Intrinsics.h("trunkSpeakerRouter");
            throw null;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager != null) {
            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
            ScanFragment.G.getClass();
            fragmentTransactionD.m(R.id.fragment_container, new ScanFragment(), ScanFragment.I);
            fragmentTransactionD.e();
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (PermissionUtils.e(this)) {
            LPBLEManager.getInstance().disConnect();
        }
    }
}
