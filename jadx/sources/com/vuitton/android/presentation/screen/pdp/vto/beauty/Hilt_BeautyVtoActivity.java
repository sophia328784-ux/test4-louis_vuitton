package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_BeautyVtoActivity extends BaseActivity {
    private boolean o;

    public Hilt_BeautyVtoActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.Hilt_BeautyVtoActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_BeautyVtoActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((BeautyVtoActivity_GeneratedInjector) C()).e((BeautyVtoActivity) this);
    }

    public Hilt_BeautyVtoActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
