package com.vuitton.android.presentation.screen.authentication;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_AuthenticationActivity extends BaseActivity {
    private boolean o;

    public Hilt_AuthenticationActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.authentication.Hilt_AuthenticationActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_AuthenticationActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((AuthenticationActivity_GeneratedInjector) C()).f0((AuthenticationActivity) this);
    }

    public Hilt_AuthenticationActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
