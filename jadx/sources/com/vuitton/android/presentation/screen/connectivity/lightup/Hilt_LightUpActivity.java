package com.vuitton.android.presentation.screen.connectivity.lightup;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.lightup.sdk.device.enums.PairOrientation;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.BaseLightUpActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_LightUpActivity extends BaseLightUpActivity {
    private boolean p = false;

    public Hilt_LightUpActivity() {
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.lightup.Hilt_LightUpActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_LightUpActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.p) {
            return;
        }
        this.p = true;
        ((LightUpActivity_GeneratedInjector) C()).s0((LightUpActivity) this);
    }

    public abstract /* synthetic */ void J();

    public abstract /* synthetic */ void K();

    public abstract /* synthetic */ void L(boolean z);

    public abstract /* synthetic */ void M();

    public abstract /* synthetic */ void N(PairOrientation pairOrientation);
}
