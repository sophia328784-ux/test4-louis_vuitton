package com.vuitton.android.presentation.screen.connectivity.section;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import com.vuitton.android.presentation.screen.base.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_ConnectivitySectionDetailActivity extends BaseActivity {
    private boolean o;

    public Hilt_ConnectivitySectionDetailActivity() {
        this.o = false;
        v();
    }

    private void v() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: com.vuitton.android.presentation.screen.connectivity.section.Hilt_ConnectivitySectionDetailActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void a(Context context) {
                Hilt_ConnectivitySectionDetailActivity.this.A();
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.Hilt_BaseActivity
    public void A() {
        if (this.o) {
            return;
        }
        this.o = true;
        ((ConnectivitySectionDetailActivity_GeneratedInjector) C()).m((ConnectivitySectionDetailActivity) this);
    }

    public Hilt_ConnectivitySectionDetailActivity(int i2) {
        super(i2);
        this.o = false;
        v();
    }
}
