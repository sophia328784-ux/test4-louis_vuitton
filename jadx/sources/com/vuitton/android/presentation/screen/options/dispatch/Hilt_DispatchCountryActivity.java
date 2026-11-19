package com.vuitton.android.presentation.screen.options.dispatch;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_DispatchCountryActivity extends BaseActivity {
    private boolean o;

    public Hilt_DispatchCountryActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.options.dispatch.Hilt_DispatchCountryActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_DispatchCountryActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((DispatchCountryActivity_GeneratedInjector) C()).n((DispatchCountryActivity) this);
    }

    public Hilt_DispatchCountryActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
