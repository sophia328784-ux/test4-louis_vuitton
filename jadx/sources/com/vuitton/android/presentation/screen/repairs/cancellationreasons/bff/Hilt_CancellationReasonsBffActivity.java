package com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_CancellationReasonsBffActivity extends BaseActivity {
    private boolean o;

    public Hilt_CancellationReasonsBffActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.Hilt_CancellationReasonsBffActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_CancellationReasonsBffActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((CancellationReasonsBffActivity_GeneratedInjector) C()).W((CancellationReasonsBffActivity) this);
    }

    public Hilt_CancellationReasonsBffActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
