package com.vuitton.android.presentation.screen.repairs.cancellationreasons;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_CancellationReasonsActivity extends BaseActivity {
    private boolean o;

    public Hilt_CancellationReasonsActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.repairs.cancellationreasons.Hilt_CancellationReasonsActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_CancellationReasonsActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((CancellationReasonsActivity_GeneratedInjector) C()).b((CancellationReasonsActivity) this);
    }

    public Hilt_CancellationReasonsActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
