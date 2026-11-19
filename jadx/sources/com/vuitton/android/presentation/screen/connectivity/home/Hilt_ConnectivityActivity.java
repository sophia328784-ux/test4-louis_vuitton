package com.vuitton.android.presentation.screen.connectivity.home;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ConnectivityActivity extends BaseActivity {
    private boolean o;

    public Hilt_ConnectivityActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.home.Hilt_ConnectivityActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ConnectivityActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((ConnectivityActivity_GeneratedInjector) C()).z((ConnectivityActivity) this);
    }

    public Hilt_ConnectivityActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
