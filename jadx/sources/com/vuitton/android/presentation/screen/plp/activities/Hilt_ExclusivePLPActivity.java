package com.vuitton.android.presentation.screen.plp.activities;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ExclusivePLPActivity extends BaseActivity {
    private boolean o;

    public Hilt_ExclusivePLPActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.plp.activities.Hilt_ExclusivePLPActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ExclusivePLPActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((ExclusivePLPActivity_GeneratedInjector) C()).O((ExclusivePLPActivity) this);
    }

    public Hilt_ExclusivePLPActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
