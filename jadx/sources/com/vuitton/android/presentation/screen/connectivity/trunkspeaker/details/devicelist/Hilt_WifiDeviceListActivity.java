package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.BaseTrunkActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_WifiDeviceListActivity extends BaseTrunkActivity {
    private boolean r = false;

    public Hilt_WifiDeviceListActivity() {
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.Hilt_WifiDeviceListActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_WifiDeviceListActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.Hilt_BaseTrunkActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.r) {
            return;
        }
        this.r = true;
        ((WifiDeviceListActivity_GeneratedInjector) C()).q((WifiDeviceListActivity) this);
    }
}
