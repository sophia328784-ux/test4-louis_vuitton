package com.vuitton.android.presentation.screen.portal;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_PortalSliderActivity extends BaseActivity {
    private boolean o;

    public Hilt_PortalSliderActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.portal.Hilt_PortalSliderActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_PortalSliderActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((PortalSliderActivity_GeneratedInjector) C()).a0((PortalSliderActivity) this);
    }

    public Hilt_PortalSliderActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
