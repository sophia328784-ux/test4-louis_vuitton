package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.BaseTrunkActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ScanActivity extends BaseTrunkActivity {
    private boolean r = false;

    public Hilt_ScanActivity() {
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.Hilt_ScanActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ScanActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common.Hilt_BaseTrunkActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.r) {
            return;
        }
        this.r = true;
        ((ScanActivity_GeneratedInjector) C()).L((ScanActivity) this);
    }
}
