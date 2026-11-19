package com.vuitton.android.presentation.screen.spotlight;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_SpotlightActivity extends BaseActivity {
    private boolean o;

    public Hilt_SpotlightActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.spotlight.Hilt_SpotlightActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_SpotlightActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((SpotlightActivity_GeneratedInjector) C()).o0((SpotlightActivity) this);
    }

    public Hilt_SpotlightActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
