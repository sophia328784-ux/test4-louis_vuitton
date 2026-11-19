package com.vuitton.android.presentation.screen.account.myinformation;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_MyInformationActivity extends BaseActivity {
    private boolean o;

    public Hilt_MyInformationActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.account.myinformation.Hilt_MyInformationActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_MyInformationActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((MyInformationActivity_GeneratedInjector) C()).T((MyInformationActivity) this);
    }

    public Hilt_MyInformationActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
