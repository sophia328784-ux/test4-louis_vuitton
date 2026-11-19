package com.vuitton.android.presentation.screen.account.myicons;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_MyIconsActivity extends BaseActivity {
    private boolean o;

    public Hilt_MyIconsActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.account.myicons.Hilt_MyIconsActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_MyIconsActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((MyIconsActivity_GeneratedInjector) C()).c0((MyIconsActivity) this);
    }

    public Hilt_MyIconsActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
