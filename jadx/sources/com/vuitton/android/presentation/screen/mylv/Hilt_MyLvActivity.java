package com.vuitton.android.presentation.screen.mylv;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_MyLvActivity extends BaseActivity {
    private boolean o;

    public Hilt_MyLvActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.mylv.Hilt_MyLvActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_MyLvActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((MyLvActivity_GeneratedInjector) C()).A((MyLvActivity) this);
    }

    public Hilt_MyLvActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
