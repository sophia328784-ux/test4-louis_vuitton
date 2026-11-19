package com.vuitton.android.presentation.screen.authentication.accountactivation;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_AccountActivationActivity extends BaseActivity {
    private boolean o;

    public Hilt_AccountActivationActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.authentication.accountactivation.Hilt_AccountActivationActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_AccountActivationActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((AccountActivationActivity_GeneratedInjector) C()).G((AccountActivationActivity) this);
    }

    public Hilt_AccountActivationActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
