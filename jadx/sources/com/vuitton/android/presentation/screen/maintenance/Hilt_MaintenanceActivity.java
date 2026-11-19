package com.vuitton.android.presentation.screen.maintenance;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_MaintenanceActivity extends BaseActivity {
    private boolean o;

    public Hilt_MaintenanceActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.maintenance.Hilt_MaintenanceActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_MaintenanceActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((MaintenanceActivity_GeneratedInjector) C()).U((MaintenanceActivity) this);
    }

    public Hilt_MaintenanceActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
