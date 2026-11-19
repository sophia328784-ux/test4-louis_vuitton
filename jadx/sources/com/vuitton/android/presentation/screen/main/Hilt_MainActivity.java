package com.vuitton.android.presentation.screen.main;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_MainActivity extends BaseActivity {
    private boolean o;

    public Hilt_MainActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.main.Hilt_MainActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_MainActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((MainActivity_GeneratedInjector) C()).u0((MainActivity) this);
    }

    public Hilt_MainActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
