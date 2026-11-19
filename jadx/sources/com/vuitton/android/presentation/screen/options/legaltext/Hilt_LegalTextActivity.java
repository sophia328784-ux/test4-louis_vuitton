package com.vuitton.android.presentation.screen.options.legaltext;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_LegalTextActivity extends BaseActivity {
    private boolean o;

    public Hilt_LegalTextActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.options.legaltext.Hilt_LegalTextActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_LegalTextActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((LegalTextActivity_GeneratedInjector) C()).t0((LegalTextActivity) this);
    }

    public Hilt_LegalTextActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
