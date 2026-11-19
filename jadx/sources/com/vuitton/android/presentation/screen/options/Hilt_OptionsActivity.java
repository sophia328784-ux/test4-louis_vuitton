package com.vuitton.android.presentation.screen.options;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_OptionsActivity extends BaseActivity {
    private boolean o;

    public Hilt_OptionsActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.options.Hilt_OptionsActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_OptionsActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((OptionsActivity_GeneratedInjector) C()).C((OptionsActivity) this);
    }

    public Hilt_OptionsActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
