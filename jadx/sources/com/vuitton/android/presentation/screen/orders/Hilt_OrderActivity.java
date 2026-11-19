package com.vuitton.android.presentation.screen.orders;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_OrderActivity extends BaseActivity {
    private boolean o;

    public Hilt_OrderActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.orders.Hilt_OrderActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_OrderActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((OrderActivity_GeneratedInjector) C()).n0((OrderActivity) this);
    }

    public Hilt_OrderActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
