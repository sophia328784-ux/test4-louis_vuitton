package com.vuitton.android.presentation.screen.pdp;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_PdpActivity extends BaseActivity {
    private boolean o;

    public Hilt_PdpActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.pdp.Hilt_PdpActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_PdpActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((PdpActivity_GeneratedInjector) C()).D((PdpActivity) this);
    }

    public Hilt_PdpActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
