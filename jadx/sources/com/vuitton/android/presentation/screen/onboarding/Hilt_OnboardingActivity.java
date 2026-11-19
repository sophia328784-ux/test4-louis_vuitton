package com.vuitton.android.presentation.screen.onboarding;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_OnboardingActivity extends BaseActivity {
    private boolean o;

    public Hilt_OnboardingActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.onboarding.Hilt_OnboardingActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_OnboardingActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((OnboardingActivity_GeneratedInjector) C()).y((OnboardingActivity) this);
    }

    public Hilt_OnboardingActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
