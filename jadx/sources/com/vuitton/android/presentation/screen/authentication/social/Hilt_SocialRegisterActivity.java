package com.vuitton.android.presentation.screen.authentication.social;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_SocialRegisterActivity extends BaseActivity {
    private boolean o;

    public Hilt_SocialRegisterActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.authentication.social.Hilt_SocialRegisterActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_SocialRegisterActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((SocialRegisterActivity_GeneratedInjector) C()).d((SocialRegisterActivity) this);
    }

    public Hilt_SocialRegisterActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
