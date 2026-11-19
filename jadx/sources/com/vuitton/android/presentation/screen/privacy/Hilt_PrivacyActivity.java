package com.vuitton.android.presentation.screen.privacy;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_PrivacyActivity extends BaseActivity {
    private boolean o;

    public Hilt_PrivacyActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.privacy.Hilt_PrivacyActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_PrivacyActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((PrivacyActivity_GeneratedInjector) C()).d0((PrivacyActivity) this);
    }

    public Hilt_PrivacyActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
