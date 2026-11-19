package com.vuitton.android.presentation.screen.forceupdate;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ForceUpdateActivity extends BaseActivity {
    private boolean o;

    public Hilt_ForceUpdateActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.forceupdate.Hilt_ForceUpdateActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ForceUpdateActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((ForceUpdateActivity_GeneratedInjector) C()).j0((ForceUpdateActivity) this);
    }

    public Hilt_ForceUpdateActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
