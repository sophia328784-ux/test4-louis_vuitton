package com.vuitton.android.presentation.screen.repairs;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_RepairActivity extends BaseActivity {
    private boolean o;

    public Hilt_RepairActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.repairs.Hilt_RepairActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_RepairActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((RepairActivity_GeneratedInjector) C()).w((RepairActivity) this);
    }

    public Hilt_RepairActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
