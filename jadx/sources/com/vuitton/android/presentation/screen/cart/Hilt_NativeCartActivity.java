package com.vuitton.android.presentation.screen.cart;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_NativeCartActivity extends BaseActivity {
    private boolean o;

    public Hilt_NativeCartActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.cart.Hilt_NativeCartActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_NativeCartActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((NativeCartActivity_GeneratedInjector) C()).b0((NativeCartActivity) this);
    }

    public Hilt_NativeCartActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
