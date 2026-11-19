package com.vuitton.android.presentation.screen.aicompanion;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_AICompanionActivity extends BaseActivity {
    private boolean o;

    public Hilt_AICompanionActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.aicompanion.Hilt_AICompanionActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_AICompanionActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((AICompanionActivity_GeneratedInjector) C()).R((AICompanionActivity) this);
    }

    public Hilt_AICompanionActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
