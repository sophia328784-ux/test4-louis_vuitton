package com.vuitton.android.presentation.screen.connectivity.faq;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_FaqActivity extends BaseActivity {
    private boolean o;

    public Hilt_FaqActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.faq.Hilt_FaqActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_FaqActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((FaqActivity_GeneratedInjector) C()).m0((FaqActivity) this);
    }

    public Hilt_FaqActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
